% \version "2.18.2"
\version "2.19.45"
\language "deutsch"

\header{
% title    = "C-F-B"
  title    = ""
  composer = ""
  tagline  = ""
}

#(set! paper-alist (cons '("my size" . (cons (* 27 cm) (* 7.5 cm))) paper-alist))

\paper {
  #(set-paper-size "my size")
}

\layout {
  indent = #0
  line-width = #250
  ragged-last = ##t
}

startPull = { \mark \markup{ \musicglyph #"scripts.upbow" } }
startPush = { \mark \markup{ \musicglyph #"scripts.downbow" } }

% H = #(define-event-function (parser location aButton) (markup?)
%   #{ ^\markup{ \small \with-color #(rgb-color 0 0 0.5) #aButton } #}
% )
% V = #(define-event-function (parser location aButton) (markup?)
%   #{ ^\markup{ \small \with-color #(rgb-color 0.5 0 0) #aButton } #}
% )
TH = #(define-scheme-function (parser location aButton) (markup?)
  #{  \markup{ \small \with-color #(rgb-color 0 0 0.5) #aButton } #}
)
TV = #(define-scheme-function (parser location aButton) (markup?)
  #{  \markup{ \small \with-color #(rgb-color 0.5 0 0) #aButton } #}
)

pitches = {
  c      d             e      f      g      a      b8     h
  c'4    d'     es'8   e'     f'4    g'     a'     b'8    h'
  c''4   d''    es''8  e''    f''4   g''    a''    b''8   h''
  c'''4  d'''   es'''8 e'''   f'''4  g'''   a'''   b'''
  c''''  d''''
}

<<
  \new Lyrics = "buttonHD" { \override VerticalAxisGroup.staff-affinity = #DOWN }
  \new Lyrics = "buttonHC" { \override VerticalAxisGroup.staff-affinity = #DOWN }
  \new Lyrics = "buttonHB" { \override VerticalAxisGroup.staff-affinity = #DOWN }
  \new Lyrics = "buttonHA" { \override VerticalAxisGroup.staff-affinity = #DOWN }
  \new Lyrics = "buttonVD" { \override VerticalAxisGroup.staff-affinity = #DOWN }
  \new Lyrics = "buttonVC" { \override VerticalAxisGroup.staff-affinity = #DOWN }
  \new Lyrics = "buttonVB" { \override VerticalAxisGroup.staff-affinity = #DOWN }
  \new Lyrics = "buttonVA" { \override VerticalAxisGroup.staff-affinity = #DOWN }

  \new Voice = "melodyH" \fixed c
  {
%     \textLengthOn
    \key b \major
    \time 7/4
%     \startPush
    \pitches
%   c4 d e f g a b c' d' e' f' g' a' b' c'' d'' es'' e'' f'' g'' a'' b'' c''' d''' e''' f''' g''' a''' b''' c'''' d''''
%     c4    \H "A0" \H "B0"
%     d
%     e     \H "A1"
%     f     \H "B1" \H "C0"
%     g     \H "A2"
%     a     \H "B2"
%     b8    \H "C1"
%     h
%     c'4   \H "A3" \H "B3"
%     d'    \H "C2"
%     es'8
%     e'    \H "A4"
%     f'4   \H "B4" \H "C3"
%     g'    \H "A5"
%     a'    \H "B5"
%     b'8   \H "C4"
%     h'
%     c''4  \H "A6" \H "B6"
%     d''   \H "C5"
%     es''8 \H "S/D4"
%     e''   \H "A7"
%     f''4  \H "B7" \H "C6"
%     g''   \H "A8"
%     a''   \H "B8"
%     b''8  \H "C7"
%     h''
%     c'''4 \H "A9" \H "B9"
%     d'''  \H "C8"
%     es'''8
%     e'''  \H "A10"
%     f'''4 \H "B10" \H "C9"
%     g'''  \H "A11"
%     a'''  \H "B11"
%     b'''  \H "C10"
%     c'''' \H "B12"
%     d'''' \H "C11"
  }

  \new Lyrics = "pitchNameH" {}

  \new Lyrics = "buttonVD" { \override VerticalAxisGroup.staff-affinity = #DOWN }
  \new Lyrics = "buttonVC" { \override VerticalAxisGroup.staff-affinity = #DOWN }
  \new Lyrics = "buttonVB" { \override VerticalAxisGroup.staff-affinity = #DOWN }
  \new Lyrics = "buttonVA" { \override VerticalAxisGroup.staff-affinity = #DOWN }

%   \new Voice = "melodyV" \fixed c
%   {
%     \textLengthOn
%     \key b \major
%     \pitches
%     \startPull
%     c
%     d
%     e     \V "B0"
%     f     \V "A0"
%     g     \V "A1"
%     a     \V "C0"
%     b8    \V "B1"
%     h     \V "A2"
%     c'4   \V "B2"
%     d'    \V "A3"
%     es'8  \V "C1"
%     e'    \V "B3"
%     f'4   \V "C2" \V "A4"
%     g'    \V "B4"
%     a'    \V "C3" \V "A5"
%     b'8   \V "B5"
%     h'    \V "A6"
%     c''4  \V "B6" \V "C4"
%     d''   \V "A7"
%     es''8 \V "C5" \V "S/D4"
%     e''   \V "B7"
%     f''4  \V "A8" \V "C6"
%     g''   \V "B8"
%     a''   \V "A9" \V "C7"
%     b''8  \V "B9"
%     h''   \V "A10"
%     c'''4 \V "C8"
%     d'''  \V "A11" \V "C10"
%     es'''8\V "C9"
%     e'''  \V "B11"
%     f'''4 \V ""
%     g'''  \V "B12" \V "C10"
%     a'''  \V "C11"
%     b'''  \V ""
%     c'''' \V ""
%     d'''' \V ""
%   }

  \context Lyrics = "pitchNameH" {
    \lyricsto "melodyH" {
      c d e f g a b h c' d' es' e' f' g' a' b' h' c'' d'' es'' e'' f'' g'' a'' b'' h'' c''' d''' es''' e''' f''' g''' a''' b''' c'''' d''''
    }
  }
  % c d e f g a b h c' d' es' e' f' g' a' b' h' c'' d'' es'' e'' f'' g'' a'' b'' h'' c''' d''' es''' e''' f''' g''' a''' b''' c'''' d''''
  % 0 - 1 - 2 - - - 3  -  -   4  -  5  -  -  -  6   -   -    7   -   8   -   -   -   9    -    -     10   -    11   -    -    -     -
  \context Lyrics = "buttonHA" {
    \lyricsto "melodyH" {
      \TH "A0"  -
      \TH "A1"  -
      \TH "A2"  - - -
      \TH "A3"  - -
      \TH "A4"  -
      \TH "A5"  - - -
      \TH "A6"  - -
      \TH "A7"  -
      \TH "A8"  - - -
      \TH "A9"  - -
      \TH "A10" -
      \TH "A11" - - - -
    }
  }
  % c d e f g a b h c' d' es' e' f' g' a' b' h' c'' d'' es'' e'' f'' g'' a'' b'' h'' c''' d''' es''' e''' f''' g''' a''' b''' c'''' d''''
  % 0 - - 1 - 2 - - 3  -  -   -  4  -  5  -  -  6   -   -    -   7   -   8   -   -   9    -    -     -    10   -    11   -    12    -
  \context Lyrics = "buttonHB" {
    \lyricsto "melodyH" {
      \TH "B0"  - -
      \TH "B1"  -
      \TH "B2"  - -
      \TH "B3"  - - -
      \TH "B4"  -
      \TH "B5"  - -
      \TH "B6"  - - -
      \TH "B7"  -
      \TH "B8"  - -
      \TH "B9"  - - -
      \TH "B10" -
      \TH "B11" -
      \TH "B12" -
    }
  }
  % c d e f g a b h c' d' es' e' f' g' a' b' h' c'' d'' es'' e'' f'' g'' a'' b'' h'' c''' d''' es''' e''' f''' g''' a''' b''' c'''' d''''
  % - - - 0 - - 1 - -  2  -   -  3  -  -  4  -  -   5   -    -   6   -   -   7   -   -    8    -     -    9    -    -    10   -     11
  \context Lyrics = "buttonHC" {
    \lyricsto "melodyH" {
                - - -
      \TH "C0"  - -
      \TH "C1"  - -
      \TH "C2"  - -
      \TH "C3"  - -
      \TH "C4"  - -
      \TH "C5"  - -
      \TH "C6"  - -
      \TH "C7"  - -
      \TH "C8"  - -
      \TH "C9"  - -
      \TH "C10" -
      \TH "C11"
    }
  }
  % c d e f g a b h c' d' es' e' f' g' a' b' h' c'' d'' es'' e'' f'' g'' a'' b'' h'' c''' d''' es''' e''' f''' g''' a''' b''' c'''' d''''
  % - - - - - - - - -  -  4   -  -  -  -  -  -  -   -   -    -   -   -   -   -   -   -    -    -     -    -    -    -    -    -     -
  \context Lyrics = "buttonHD" {
    \lyricsto "melodyH" {
      \markup{ \musicglyph #"scripts.downbow" }
      _ _ _ _ _ _ _ _ _
      \TH "S/D4"
      _ _ _ _ _ _
      \markup{ \musicglyph #"scripts.downbow" }
      _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    }
  }

  % c d e f g a b h c' d' es' e' f' g' a' b' h' c'' d'' es'' e'' f'' g'' a'' b'' h'' c''' d''' es''' e''' f''' g''' a''' b''' c'''' d''''
  % - - - 0 1 - - 2 -  3  -  -   4  -  5  -  6  -   7   -    -   8   -   9   -   10  -    11   -    -    -     -    -    -    -     -
  \context Lyrics = "buttonVA" {
    \lyricsto "melodyH" {
                - - -
      \TV "A0"
      \TV "A1"  - -
      \TV "A2"  -
      \TV "A3"  - -
      \TV "A4"  -
      \TV "A5"  -
      \TV "A6"  -
      \TV "A7"  - -
      \TV "A8"  -
      \TV "A9"  -
      \TV "A10" -
      \TV "A11" - - - - - - - -
    }
  }
  % c d e f g a b h c' d' es' e' f' g' a' b' h' c'' d'' es'' e'' f'' g'' a'' b'' h'' c''' d''' es''' e''' f''' g''' a''' b''' c'''' d''''
  % - - 0 - - - 1 - 2  -  -   3  -  4  -  5  -  6   -   -    7   -   8   -   9   -   -    10   -     11   -    12   -    -    -     -
  \context Lyrics = "buttonVB" {
    \lyricsto "melodyH" {
                - -
      \TV "B0"  - - -
      \TV "B1"  -
      \TV "B2"  - -
      \TV "B3"  -
      \TV "B4"  -
      \TV "B5"  -
      \TV "B6"  - -
      \TV "B7"  -
      \TV "B8"  -
      \TV "B9"  - -
      \TV "B10" -
      \TV "B11" -
      \TV "B12" - - - -
    }
  }
  % c d e f g a b h c' d' es' e' f' g' a' b' h' c'' d'' es'' e'' f'' g'' a'' b'' h'' c''' d''' es''' e''' f''' g''' a''' b''' c'''' d''''
  % - - - - - 0 - - -  -  1   -  2  -  3  -  -  4   -   5    -   6   -   7   -   -   8    -    9     -    -    10   11   -    -     -
  \context Lyrics = "buttonVC" {
    \lyricsto "melodyH" {
                - - - - -
      \TV "C0"  - - - -
      \TV "C1"  -
      \TV "C2"  -
      \TV "C3"  - -
      \TV "C4"  -
      \TV "C5"  -
      \TV "C6"  -
      \TV "C7"  - -
      \TV "C8"  -
      \TV "C9"  - -
      \TV "C10"
      \TV "C11" - - -
    }
  }
  % c d e f g a b h c' d' es' e' f' g' a' b' h' c'' d'' es'' e'' f'' g'' a'' b'' h'' c''' d''' es''' e''' f''' g''' a''' b''' c'''' d''''
  % - - - - - - - - -  -  4   -  -  -  -  -  -  -   -   -    -   -   -   -   -   -   -    -    -     -    -    -    -    -    -     -
  \context Lyrics = "buttonVD" {
    \lyricsto "melodyH" {
      \markup{ \musicglyph #"scripts.upbow" }
      _ _ _ _ _ _ _ _ _ 
      \TV "S/D4"
      _ _ _ _ _ _
      \markup{ \musicglyph #"scripts.upbow" }
      _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    }
  }
>>