% by David Nalesnik

\version "2.19.30"

\header{
  title   = "Horizontal lines (push) for diatonic accordion"
  tagline = ""
}

#(define-event-class 'accordion-push-span-event 'span-event)

#(define ly:accordion-push-spanner::print
   (lambda (grob)
     (let* ((bound-L (ly:spanner-bound grob LEFT))
            (bound-R (ly:spanner-bound grob RIGHT))
            (common-X (ly:grob-common-refpoint grob bound-L X))
            (common-X (ly:grob-common-refpoint grob bound-R X))
            (extent-L (ly:grob-robust-relative-extent bound-L common-X X))
            (left-X (if (= 1 (ly:item-break-dir bound-L))
                        (cdr extent-L)
                        (car extent-L)))
            (right-X (cdr (ly:grob-robust-relative-extent bound-R common-X X)))
            (off (ly:grob-relative-coordinate grob common-X X))
            (th (ly:grob-property grob 'thickness 1))
            (stil (ly:round-filled-box (cons left-X right-X) (cons 0 th) 0.0)))
       (ly:stencil-translate-axis stil (- off) X))))

#(define (add-grob-definition grob-name grob-entry)
   (let* ((meta-entry   (assoc-get 'meta grob-entry))
          (class        (assoc-get 'class meta-entry))
          (ifaces-entry (assoc-get 'interfaces meta-entry)))
     (set-object-property! grob-name 'translation-type? ly:grob-properties?)
     (set-object-property! grob-name 'is-grob? #t)
     (set! ifaces-entry (append (case class
                                  ((Item) '(item-interface))
                                  ((Spanner) '(spanner-interface))
                                  ((Paper_column) '((item-interface
                                                     paper-column-interface)))
                                  ((System) '((system-interface
                                               spanner-interface)))
                                  (else '(unknown-interface)))
                          ifaces-entry))
     (set! ifaces-entry (uniq-list (sort ifaces-entry symbol<?)))
     (set! ifaces-entry (cons 'grob-interface ifaces-entry))
     (set! meta-entry (assoc-set! meta-entry 'name grob-name))
     (set! meta-entry (assoc-set! meta-entry 'interfaces
                        ifaces-entry))
     (set! grob-entry (assoc-set! grob-entry 'meta meta-entry))
     (set! all-grob-descriptions
           (cons (cons grob-name grob-entry)
             all-grob-descriptions))))

#(add-grob-definition
  'AccordionPushSpanner
  `(
     (direction . ,UP)
     (staff-padding . 0.8)
     (thickness . 1)
     (stencil . ,ly:accordion-push-spanner::print)
     (staff-padding . 0.8)

     (meta . ((class . Spanner)
              (interfaces . (font-interface
                             line-interface
                             line-spanner-interface
                             axis-group-interface
                             ;outside-staff-interface
                             side-position-interface))))))


#(define scheme-event-spanner-types
   '(
      (AccordionPushSpanEvent
       . ((description . "Used to signal where accordion push lines
start and stop.")
          (types . (accordion-push-span-event span-event event))
          ))
      ))

#(set!
  scheme-event-spanner-types
  (map (lambda (x)
         (set-object-property! (car x)
           'music-description
           (cdr (assq 'description (cdr x))))
         (let ((lst (cdr x)))
           (set! lst (assoc-set! lst 'name (car x)))
           (set! lst (assq-remove! lst 'description))
           (hashq-set! music-name-to-property-table (car x) lst)
           (cons (car x) lst)))
    scheme-event-spanner-types))

#(set! music-descriptions
       (append scheme-event-spanner-types music-descriptions))

#(set! music-descriptions
       (sort music-descriptions alist<?))

#(define (add-bound-item spanner item)
   (if (null? (ly:spanner-bound spanner LEFT))
       (ly:spanner-set-bound! spanner LEFT item)
       (ly:spanner-set-bound! spanner RIGHT item)))

#(define (axis-offset-symbol axis)
   (if (eq? axis X) 'X-offset 'Y-offset))

#(define (set-axis! grob axis)
   (if (not (number? (ly:grob-property grob 'side-axis)))
       (begin
        (set! (ly:grob-property grob 'side-axis) axis)
        (ly:grob-chain-callback
         grob
         (if (eq? axis X)
             ly:side-position-interface::x-aligned-side
             side-position-interface::y-aligned-side)
         (axis-offset-symbol axis)))))

schemeTextSpannerEngraver =
#(lambda (context)
   (let ((span '())
         (finished '())
         (event-start '())
         (event-stop '()))
     (make-engraver
      (listeners ((accordion-push-span-event engraver event)
                  (if (= START (ly:event-property event 'span-direction))
                      (set! event-start event)
                      (set! event-stop event))))
      ((process-music trans)
       (if (ly:stream-event? event-stop)
           (if (null? span)
               (ly:warning "You're trying to end a accordion push spanner but you haven't started one.")
               (begin (set! finished span)
                 (ly:engraver-announce-end-grob trans finished event-start)
                 (set! span '())
                 (set! event-stop '()))))
       (if (ly:stream-event? event-start)
           (begin (set! span (ly:engraver-make-grob trans 'AccordionPushSpanner event-start))
             (set-axis! span Y)
             (set! event-start '()))))
      ((stop-translation-timestep trans)
       (if (and (ly:spanner? span)
                (null? (ly:spanner-bound span LEFT)))
           (ly:spanner-set-bound! span LEFT
             (ly:context-property context 'currentCommandColumn)))
       (if (ly:spanner? finished)
           (begin
            (if (null? (ly:spanner-bound finished RIGHT))
                (ly:spanner-set-bound! finished RIGHT
                  (ly:context-property context 'currentCommandColumn)))
            (set! finished '())
            (set! event-start '())
            (set! event-stop '()))))
      ((finalize trans)
       (if (ly:spanner? finished)
           (begin
            (if (null? (ly:spanner-bound finished RIGHT))
                (ly:spanner-set-bound! finished RIGHT
                  (ly:context-property context 'currentMusicalColumn)))
            (set! finished '())))
       (if (ly:spanner? span)
           (begin
            (ly:warning "I think there's a dangling accordion push spanner :-(")
            (ly:grob-suicide! span)
            (set! span '())))))))

startPush =
#(make-span-event 'AccordionPushSpanEvent START)

startPull =
#(make-span-event 'AccordionPushSpanEvent STOP)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  EXAMPLE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\new PianoStaff <<
  \new Staff {
    f'1
    f'1
    f'1
    f'1
    f'1
    f'1
    f'1
    f'1
    f'1
    f'4 f'2.
    f'4 f'2.
    f'1
    f'1
    f'4 f'2.
  }
  \new Lyrics \lyricmode { foo1 foo foo foo }
  \new Staff {
    \clef bass
    f1
    f1
    \startPush f1
    f1
    f1
    % Change vertical position of spanner.
    % \override Staff.AccordionPushSpanner.staff-padding = 2
    \startPull f1
    f1
    \repeat volta 2 {
      \startPush f1
      f1
      f4 \startPull f2.
      f4 \startPush f2.
      f1
      \break
      f1
      f1 \startPull
    }
  }
>>

\layout {
  ragged-last = ##t
  \context {
    \Global
    \grobdescriptions #all-grob-descriptions
  }
  \context {
    \Staff
    \consists \schemeTextSpannerEngraver
  }
}
