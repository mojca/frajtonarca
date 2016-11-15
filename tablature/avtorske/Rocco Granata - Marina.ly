\version "2.19.30"
\language "deutsch"

\include "accordion.ily"
\include "style.ily"

\header{
  title    = "Marina"
  poet     = "U-A1-A2-B1-B2-C1-C2-A?-A?-B1-B2-C3"
  composer = "Rocco Granata"
  arranger = "priredba: Matic Štavar"
}

global = {
  \time 2/4
  %\tempo 4 = 120 
}

melodyA = \fixed c' {
  \global
  \key f \major
  \partial 8 <c' e'>8 |
  <c' e'>8 <d' f'> <b d'> <c' e'> |
  <a c'>8 <b d'> <g b> <a c'> |
  \startPush
  <f a>2~ |
  <f a>4 c4 |
  %\markDefaultSegno
  \markDefault
  \bar "S"
  \repeat volta 2 {
    \repeat unfold 4 { <a c'>8 <f a> } |
    \stopPush
    <a c'>8. <f a>16~ <f a>4~ |
    <f a>4. c8 |
    \startPush
    \repeat unfold 4 { <a c'>8 <f a> } |
    \stopPush
    <g b>8. <e g>16~ <e g>4~ |
    <e g>4. c8 |
    \repeat unfold 4 { < b d'>8 <g b> } |
    <b d'>8. <g b>16~ <g b>4~ |
    <g b>4. <c' e'>8 |
    <c' e'>8 <d' f'> <b d'> <c' e'> |
    <a c'>8 <b d'> <g b> <a c'> |
  } \alternative {
    {
      \startPush
      <f a>2~ |
      <f a>4\staccato c |
    }{
      <f a>2~ |
      <f a>8\staccato r r <a c'>8
    }
  }
}

melodyB = \fixed c' {
  %\global
  \markDefault
  \repeat volta 2 {
    <a c'>8. <c' f'>16~ <c' f'>8 <f a> |
    <f a>8. <a c'>16~ <a c'>8 <b d'> |
    \stopPush
    <a c'>8. <g b>16~ <g b>4~ |
    <g b>4. <a c'>8 |
    <d' f'>8. <d' f'>16~ <d' f'>8 <b d'> |
    <c' e'>8. <a c'>16~ <a c'>8 <g b> |
  } \alternative {
    {
      \startPush
      <f a>2~ |
      <f a>4. <a c'>8 |
    }{
      <f a>2 |
      <a c'>8 <b d'> <a c'> <b d'> |
      \stopPush
    }
  }
}

melodyC = \fixed c' {
  %\global
  \markDefault
  \repeat volta 3 {
    <c' e'>8. <b d'>16~ <b d'>4 |
    <c' e'>8 <b d'> <c' e'> <b d'> |
    \startPush
    <a c'>8. <f a>16~ <f a>8 <a c'>16 <a c'> |
    <a c'>8 <f a> <b d'> <a c'> |
    \stopPush
    <g b>8. <e g>16~ <e g>8 <g b> |
    <a c'>8 <g b> <e g> <g b> |
  } \alternative {
    {
      \set Score.repeatCommands = #'((volta "1, 3"))
      \startPush
      <f a>2 |
      <a c'>8 <b d'> <a c'> <b d'> |
    }{
      <f a>2~ |
      <f a>4 c |
      \once \override Score.RehearsalMark.direction = #DOWN
      \mark \markup { { \small \center-column { \line { "D.S." } \line{ "al Fine" } } } } 
    }{
      \set Score.repeatCommands = #'((volta "4") end-repeat)
      %\startPush
      <f a>4. <g b>8 |
      \stopPush
    }
  }
  <a c'>8 <g b> <e g> <g b> |
  \startPush
  <f a>4. <g b>8 |
  \stopPush
  <a c'>4 <g b> |
  <e g>4 <g b> |
  \startPush
  <f a>2~ |
  <f a>2~ |
  <f a>4 <c c'> |
  <f a c'>4 r |
  \stopPush
  \bar "|."
}

melody = {
  \global
  \melodyA
  \melodyB
  \melodyC
}

buttonsIA = \lyricmode {
}


buttonsI = {
  %\buttonsIA
  %\buttonsIB
}

bassesPushFC = { f,8 <f a c'> c, <f a c'> | }
bassesPullGC = { g,8 <e g c'> c, <e g c'> | }

bassesPushBF = { b,,8 <d f b> f, <d f b> | }
bassesPullCF = { c, <f a c'> f, <f a c'> | }
bassesPullFC = { f, <f a c'> c, <f a c'> | }

bassesA = {
  \partial 8 r8 |
  \repeat unfold 2 { <c, e g c'>4 r | }
  \bassesPushFC
  f,8\staccato r c,4 |
  \repeat volta 2 {
    \repeat unfold 2 { \bassesPushFC }
    \repeat unfold 2 { \bassesPullFC }
    \repeat unfold 2 { \bassesPushFC }
    \repeat unfold 8 { \bassesPullGC }
  } \alternative {
    {
      \bassesPushFC
      f,8\staccato r c,4 | % 
    }{
      \bassesPushFC
      f,8\staccato r r4 | % H
     }
  }
}

basses_figuresA = \figuremode {
  \partial 8 r8 |
  \repeat unfold 2 { <3 4>4 r | } % V
  <4>8 <3> <2> <3> | % H
  <4>8 r8 <2>4 | % H
  \repeat volta 2 {
    \repeat unfold 2 { <4>8 <3> <2> <3> | } % H
    \repeat unfold 2 { <6>8 <5> <4> <5> | } % V
    \repeat unfold 2 { <4>8 <3> <2> <3> | } % H
    \repeat unfold 8 { <2>8 <3> <4> <3> | } % V
%     <4>8 <3> <2> <3> | % H
%     <4>8 <3> <2> <3> | % H
  } \alternative {
    {
      <4>8 <3> <2> <3> | % H
      <4>8 r <2>4 | % H
    }{
      <4>8 <3> <2> <3> | % H
      <4>8 r r4 | % H
    }
  }
}

bassesB = {
  \repeat volta 2 {
    \repeat unfold 2 { \bassesPushFC }
    \repeat unfold 4 { \bassesPullGC }
  } \alternative {
    {
      \repeat unfold 2 { \bassesPushFC }
    }
    {
      \repeat unfold 2 { \bassesPushFC }
    }
  }
}

basses_figuresB = \figuremode {
  \repeat volta 2 {
    \repeat unfold 2 { <4>8 <3> <2> <3> | } % H
    \repeat unfold 4 { <2>8 <3> <4> <3> | } % V
  } \alternative {
    {
      \repeat unfold 2 { <4>8 <3> <2> <3> | } % H
    }{
      \repeat unfold 2 { <4>8 <3> <2> <3> | } % H
    }
  }
}

bassesC = {
  \repeat volta 3 {
    \repeat unfold 2 { \bassesPullGC }
    \repeat unfold 2 { \bassesPushFC }
    \repeat unfold 2 { \bassesPullGC }
  } \alternative {
    {
      \repeat unfold 2 { \bassesPushFC }
    }{
      \bassesPushFC
      f,8\staccato r c,4 |
    }{
      \bassesPushFC
      \bassesPullGC
      \bassesPushFC
      c,4\staccato c, |
      d,4 e, |
      f,4 d, |
      c,4 a, |
      f,4\staccato c, |
      f,4\staccato r  |
    }
  }
}

basses_figuresC = \figuremode {
  \repeat volta 3 {
    \repeat unfold 2 { <2>8 <3> <4> <3> }
    \repeat unfold 2 { <4>8 <3> <2> <3> }
    \repeat unfold 2 { <2>8 <3> <4> <3> }
  } \alternative {
    {
      \repeat unfold 2 { <4>8 <3> <2> <3> }
    }{
      <4>8 <3> <2> <3>
      <4>8 r <2>4 |
    }{
      <4>8 <3> <2> <3>
      <2>8 <3> <4> <3>
      <4>8 <3> <2> <3>
      <4>4 <4> |
      <9>4 <7> |
      <4>4 <11> |
      <2>4 <9> |
      <4>4 <2> |
      <4>4 r  |
    }
  }
}

basses = {
  \bassesA
  \bassesB
  \bassesC
}

basses_figures = {
  \basses_figuresA
  \basses_figuresB
  \basses_figuresC
}

\score {
\new PianoStaff <<
    \new Lyrics = "buttonsII" \with {
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Lyrics = "buttonsI" \with {
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Voice = "melody" {
      \melody
    }
    \context Lyrics = "lyricsI" {
      \lyricsto "melody" {
        \m \m \m \m \m \m \m \m \m \m
        \set stanza = #"1. "
        Mi so -- no inna -- mo -- ra -- to di Ma -- ri -- na
        u -- na ra -- ga -- zza mo -- ra ma ca -- ri -- na
        ma lei non vuol sa -- per -- ne del mio_a -- mo -- r
        co -- sa fa -- rò per con -- qui -- star -- le_il_suo cuor.

        Un \m

        Ma -- ri -- na, Ma -- ri -- na, Ma -- ri -- na
        ti vo -- glio al_più pre -- sto spo -- sar
        %
        Ma-
        %
        sar.
        %
        Oh mia be -- lla mo -- ra no non mi la -- scia -- re
        non mi de -- vi ro -- vi -- na -- re oh no, no, no, no, no.
        %
        Oh mia be -- lla
        %
        no. \m
        no,
        oh no, no, no, no, no,
        oh no, no, no, no, no.
      }
    }
    \context Lyrics = "lyricsII" {
      \lyricsto "melody" {
        \m \m \m \m \m \m \m \m \m \m
        \set stanza = #"1. "
        (Un) gior -- no la_in -- co -- ntra -- i so -- la, so -- la
        il cuo -- re mi ba -- tte -- va_a mi -- lle_all’ -- o -- ra
        quan -- do le di -- ssi_che la vo -- le -- vo_a -- ma -- re
        mi die -- de un_ba -- cio e l’a -- mor sbo- _ _ cciò.

%         (Un) girono l'ho incontrata sola sola,
%         il cuotre mi batteva mille all'ora.
%         Quando le dissi che la volevo amare
%         mi diede un bacio e l'amor sboccio'...
      }
    }


%   Marina, Marina, Marina
%   ti voglio al più presto sposar
%   Marina, Marina, Marina
%   ti voglio al più presto sposar
%   Oh mia bella mora no non mi lasciare
%   non mi devi rovinare oh no, no, no, no, no
%   Oh mia bella mora no non mi lasciare
%   non mi devi rovinare oh no, no, no, no, no
%
%   Mi sono innamorato di Marina
%   una ragazza mora ma carina
%   ma lei non vuol saperne del mio amore
%   cosa farò per conquistarle il cuor
%   Un giorno la incontrai sola, sola
%   il cuore mi batteva a mille all’ora
%   quando le dissi che la volevo amare
%   mi diede un bacio e l’amor sbocciò
%   Marina, Marina, Marina
%   ti voglio al più presto sposar
%   Marina, Marina, Marina
%   ti voglio al più presto sposar
%   Oh mia bella mora no non mi lasciare
%   non mi devi rovinare oh no, no, no, no, no
%   Oh mia bella mora no non mi lasciare
%   non mi devi rovinare oh no, no, no, no, no
%   oh no, no, no, no, no
%   oh no, no, no, no, no


    \new AccordionPushPull \with {
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = 1
    } {
      \melody
    }
    \new Staff = "staff" <<
      \new Voice = "bass" {
        \clef bass
        \global
        \basses
      }
    >>
%     \context Lyrics = "buttonsI" {
%       \lyricsto "melody" {
%         \buttonsI
%       }
%     }
%     \new RhythmicStaff {
%       \basses_rhythm
%     }
    \new FiguredBass {
      \basses_figures
    }
  >>
  \layout {
     ragged-last = ##t
     % #(layout-set-staff-size 19)
  }
}

\score {
  \unfoldRepeats {
    \new PianoStaff <<
      \new Voice = "melody" \fixed c' {
        \set Staff.midiInstrument = "accordion"
          \melody
      }
      \new Voice = "basses" {
        \set Staff.midiInstrument = "accordion"
          \basses
      }
    >>
  }
  \midi {
    \tempo 4 = 120
  }
}
