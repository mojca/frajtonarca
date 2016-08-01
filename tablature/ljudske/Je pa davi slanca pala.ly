\version "2.19.30"
\language "deutsch"

\include "accordion.ily"
\include "style.ily"

\header{
  title    = "Je pa davi slan’ca pala"
  composer = "Slovenska ljudska"
}

global = {
  \time 2/4
  \key f \major
}

melody = \fixed c' {
  \global
  \startPush
  <f a>4 <b d'>8 <b d'>       | % 2
  <a c'>4 <f a>4              | % 3
  \stopPush
  <e g>4 <a c'>8 <a c'>       | % 4
  <g b>4 <e g>                | % 5
  <c' e' >4. <c' e'>8         | % 6
  <b d'>4 <a c'>8 <g b>       | % 7
  \startPush
  <f a>4 <b d'>8 <b d'>       | % 8
  <a c'>2                     | % 9
  <f a>4 <b d'>8 <b d'>       | % 10
  <a c'>4 <f a>4              | % 11
  \stopPush
  <e g>4 <a c'>8 <a c'>       | % 12
  <g b>4 <e g>4               | % 13
  <c' e'>4. <c' e'>8          | % 14
  <b d'>8 <b d'> <a c'> <g b> | % 15
  \startPush
  <f a>4 <f a>8 <g b>         | % 16
  <a c'>4 <b d'>8 <a c'>8     | % 17
  \stopPush
  <g b>4 <a c'>4              | % 18
  \startPush
  <f a>2~ |
  <f a>4 r4 |
  \stopPush
}

basses = {
  f,8 <f a c'> c <f a c'> | % 2
  f, <f a c'> c <f a c'>  | % 3
  g, <e g c'> c <e g c'>  | % 4
  g, <e g c'> c <e g c'>  | % 5
  g, <e g c'> c <e g c'>  | % 6
  g, <e g c'> c <e g c'>  | % 7
  f, <f a c'> c <f a c'>  | % 8
  f, <f a c'> c <f a c'>  | % 9
  f, <f a c'> c <f a c'>  | % 10
  f, <f a c'> c <f a c'>  | % 11
  g, <e g c'> c <e g c'>  | % 12
  g, <e g c'> c <e g c'>  | % 13
  g, <e g c'> c <e g c'>  | % 14
  g, <e g c'> c <e g c'>  | % 15
  f, <f a c'> c <f a c'>  | % 16
  f, <f a c'> c <f a c'>  | % 17
  g, <e g c'> c <e g c'>  | % 18
  f, <f a c'> c <f a c'>  | % 19
  <f, f a c' >
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
        \set stanza = #"1. "
        Je _ pa da -- vi slan’ -- _ ca pa -- la
        na ze -- le -- _ ne trav -- _ ni -- ke,
        je _ vso trav’ -- co po -- _ mo -- ri -- la,
        vse te žlaht -- ne ro -- ži -- ce,
        vse te žlaht -- ne _ ro -- ži -- ce.
      }
    }

    \context Lyrics = "buttonsII" {
      \lyricsto "melody" {
        \M "3" "B5" \M "3" "C5" -
        \M "4" "B6" \M "3" "B5"
        \M "2" "B4" \M "2" "C4" -
        \M "3" "B5" \M "2" "B4"
        \M "5" "B7" -
        \M "5" "A7" \M "4" "B6" \M "3" "B5"
        - \M "3" "C5" -
        \M "5" "B6"
        \M "3" "B5" \M "3" "C5" -
        \M "4" "B6" \M "3" "B5"
        \M "2" "B4" \M "2" "C4" -
        \M "3" "B5" \M "2" "B4"
        \M "5" "B7" -
        \M "5" "A7" - \M "4" "B6" \M "3" "B5"
        - - \M "4" "C4"
        \M "4" "B6" \M "3" "C5" \M "4" "B6"
        \M "3" "B5" \M "4" "B6"
        \M "3" "B5"
      }
    }
    \context Lyrics = "buttonsI" {
      \lyricsto "melody" {
        \M "2" "B4" \M "2" "C4" -
        \M "3" "B5" \M "2" "B4"
        \M "1" "B3" \M "1" "C3" -
        \M "2" "B4" \M "1" "B3"
        \M "4" "B6" -
        \M "3" "B5" \M "1" "A5" \M "2" "B4"
        - \M "2" "C4" -
        \M "3" "B5"
        \M "2" "B4" \M "2" "C4" -
        \M "3" "B5" \M "2" "B4"
        \M "1" "B3" \M "1" "C3" -
        \M "2" "B4" \M "1" "B3"
        \M "4" "B6" -
        \M "3" "B5" - \M "1" "A5" \M "2" "B4"
        - - \M "2" "A5"
        \M "3" "B5" \M "2" "C4" \M "3" "B5"
        \M "2" "B4" \M "1" "A5"
        \M "2" "B4"
      }
    }

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
%   \new RhythmicStaff {
%     c c c c |
%   }
  \new FiguredBass {
    \figuremode {
      <4> <3> <2> <3> |
      <4> <3> <2> <3> |
      <2> <3> <4> <3> |
      <2> <3> <4> <3> |
      <2> <3> <4> <3> |
      <2> <3> <4> <3> |
      <4> <3> <2> <3> |
      <4> <3> <2> <3> |
      <4> <3> <2> <3> |
      <4> <3> <2> <3> |
      <2> <3> <4> <3> |
      <2> <3> <4> <3> |
      <2> <3> <4> <3> |
      <2> <3> <4> <3> |
      <4> <3> <2> <3> |
      <4> <3> <2> <3> |
      <2> <3> <4> <3> |
      <4> <3> <2> <3> |
      <4 3>
    }
  }
>>
  \layout {
    ragged-last = ##t
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
    \tempo 4 = 100
  }
}

\markup {
  \column {
    \line{
      { \bold 2. }
      \column {
        "Men’ pa ni za rož’ce moje,"
        "če jih slan’ca pomori,"
        "men’ je le za dekle moje,"
        "če me ona zapusti."
      }
    }
  }
  \column {
    \line{
      { \bold 3. }
      \column {
        "Prav na sredi moj’ga srca"
        "ena rožica cveti,"
        "če ne boš ji prilivala,"
        "se gotovo posuši."
      }
    }
  }
  \column {
    \line{
      { \bold 4. }
      \column {
        "Kaj ji bodem prilivala,"
        "nimam vinca ne vode."
        "Pa ji bodem prilivala"
        "svoje grenke solzice."
      }
    }
  }
}
