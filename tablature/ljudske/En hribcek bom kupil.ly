\version "2.19.30"
\language "deutsch"

\include "accordion.ily"
\include "style.ily"

\header{
  title    = "En hribček bom kupil"
  poet     = ""
  composer = "Anton Martin Slomšek"
}

global = {
  \time 3/4
  \key f \major
  \tempo 4 = 120 
}


melody = \fixed c' {
  \global
  \startPush
  \partial 4 <a f>8 <g b>                         | % En
  \repeat volta 2 {
    <a c'>4 <a c'> <b d'>8 <a c'> \stopPush       | % hribček bom
    <g b>4 <g b> <e g>                            | % kupil bom
    <a c'>4 <a c'> <b g>                          | % trte sa-
  }
  \alternative {
    {
      \startPush <f a>2 <f a>8 <g b>              | % dil pri-
    }
    {
      <f a>2 <f a>8 <g b>                         | % pil | sladko
    }
  }
  <a c'>8. <a c'>16 <a c'>8 <a c'>8 <b d'> <a c'> | % vince piti to me
  \stopPush
  <g b>8 <g b> <g b>4 <e g>8 <f a>                | % veseli dobre
  <g b>8. <g b>16 <g b>8 <b d'> <a c'> <g b>      | % volje biti svoje
  \startPush <f a>8 <f a> <f a>4 <f a>8 <g b>     | % žive dni svoje
  \time 4/4
  <a c'>8 <a c'> <a c'>4 <b d'>4. <a c'>8         | % žive dni brez v-
  \stopPush
  \time 3/4
  <g b>8. <g b>16 <g b>4 <e g>8 <f a>             | % seh skrbi, to me
  <g b>4 <g b>8 <b d'> <a c'>8 <g b>              | % srčno vese-
  \partial 2 <f a>2                               | % li
  \bar "|."
}

basses = {
  \partial 4 r4            | % En
  \repeat volta 2 {
    f,4 <f a c'> <f a c'>4 | % hribček bom
    g,4 <e g c'> <e g c'>4 | % kupil bom
    c4 d, e, |
  }
  \alternative {
    {
      f,4 <f, f a c' > r | %
    }
    {
      f,4 <f, f a c' > r | %
    }
  }
  f,4 <f a c'> <f a c'>    | %
  g,4 <e g c'> <e g c'>    | %
  c4 <e g c'> <e g c'>     | %
  f,4 <f a c'> <f a c' >   | %
  f,4 <f a c'> b, <d f b>4 | %
  g, <e g c'> <e g c'>4    | %
  c d, e,4                 | %
  f,4 <f, f a c' >4        | %
}

\score {
\new PianoStaff <<
%     \new Lyrics = "buttonsII" \with {
%       \override VerticalAxisGroup.staff-affinity = #DOWN
%     }
%     \new Lyrics = "buttonsI" \with {
%       \override VerticalAxisGroup.staff-affinity = #DOWN
%     }
    \new Voice = "melody" {
      \melody
    }
    \context Lyrics = "lyricsI" {
      \lyricsto "melody" {
        \set stanza = #"1. "
        En _ hrib -- ček bom _ ku -- pil, bom tr -- te sa -- dil.
        Pri- _ %-- _ ja -- t'le po -- _ va -- bil, še sam ga bom pil.
        \m \m \m
        vin -- ce pi -- ti to me ve -- se -- li, 
        do -- bre vo -- lje bi -- ti svo -- je ži -- ve dni, 
        svo -- je ži -- ve dni brez v -- seh skr -- bi, 
        to me sr -- čno _ ve -- se -- li. 
      }
    }
    \context Lyrics = "lyricsII" {
      \lyricsto "melody" {
        \m \m
        ja -- tle po -- _ va -- bil, še sam ga bom \m \m \m pil.
        Slad -- ko
      }
    }
%     \context Lyrics = "buttonsII" {
%       \lyricsto "melody" {
%         \M "3" "B5"
%       }
%     }
%     \context Lyrics = "buttonsI" {
%       \lyricsto "melody" {
%         \M "2" "B4"
%       }
%     }

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
%     \partial 4 s4 |
%     c c c |
%   }
  \new FiguredBass {
    \figuremode {
      \partial 4 s4 |
      <4> <3> <3> |
      <2> <3> <3> |
      <4> <9> <7> |
      <4> <4 3> s4 |
    }
  }
>>
%   \layout {
%     ragged-last = ##t
%   }
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
