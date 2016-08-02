\version "2.19.30"
\language "deutsch"

\include "accordion.ily"
\include "style.ily"

\header{
  title    = "Micka Kovačeva"
  composer = "Slovenska ljudska"
}

global = {
  \time 2/4
  \key f \major
}

melody = \fixed c' {
  \global
  \repeat volta 2 {
    \startPush
    <a c'>4 <f a>8 <d' f'> |
    \stopPush
    <c' e'>8 <c' e'> <e b>4 |
    <c' e'>4 <e b>8 <b d'> |
    \startPush
    <a c'>8 <a c'>8 <f a>4 |
    <a c'>4 <f a>8 <d' f'> |
    \break
    \stopPush
    <c' e'>8 <c' e'> <e b>4 |
    <c' e'>4 <b d'>8 <e b> |
    \startPush
  }
  \alternative {
    { <f a>4. r8 | }
    { <f a>8 <f a>16 <f a> <f a>8 r8 | \stopPush }
  }
}

basses = {
  \repeat volta 2 {  
    f,8 <f a c'> c, <f a c'> |
    g,8 <e g c'> c, <e g c'> |
    g,8 <e g c'> c, <e g c'> |
    f,8 <f a c'> c, <f a c'> |
    f,8 <f a c'> c, <f a c'> |
    g,8 <e g c'> c, <e g c'> |
    g,8 c, d, e, |
  }
  \alternative {
    { f,8 <f a c'> c, <f a c'> | }
    { f,8 c, <f, f a c'> r       | }
  }
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
        Mi -- cka Ko -- va -- če -- va
        pi -- la, nič pla -- ča -- la,
        pil bi pa vsak hu -- dič,
        pla -- čal pa nič.
      }
    }

    \context Lyrics = "buttonsII" {
      \lyricsto "melody" {
        \M "4" "B6" \M "3" "B5" \M "4" "C6"
        \M "5" "B7" - \M "3" "B5"
        \M "5" "B7" \M "3" "B5" \M "5" "A7"
        \M "4" "B6" - \M "3" "B5"
        \M "4" "B6" \M "3" "B5" \M "4" "C6"
        \M "5" "B7" - \M "3" "B5"
        \M "5" "B7" \M "5" "A7" \M "3" "B5"
        \M "3" "B5"
        \M "3" "B5" - - -
      }
    }
    \context Lyrics = "buttonsI" {
      \lyricsto "melody" {
        \M "3" "B5" \M "2" "B4" \M "3" "C5"
        \M "4" "B6" - \M "1" "B3"
        \M "4" "B6" \M "1" "B3" \M "3" "B5"
        \M "3" "B5" - \M "2" "B4"
        \M "3" "B5" \M "2" "B4" \M "3" "C5"
        \M "4" "B6" - \M "1" "B3"
        \M "4" "B6" \M "3" "B5" \M "1" "B3"
        \M "2" "B4"
        \M "2" "B4" - - -
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
      <4>8 <3> <2> <3> |
      <2> <3> <4> <3> |
      <2> <3> <4> <3> |
      <4> <3> <2> <3> |
      <4> <3> <2> <3> |
      <2> <3> <4> <3> |
      <2> <4> <9> <7> |
      %
      <4> <3> <2> <3> |
      %
      <4> <2> <4 3> s8 |
    }
  }
>>
  \layout {
%     ragged-last = ##t
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
    \tempo 4 = 80
  }
}
