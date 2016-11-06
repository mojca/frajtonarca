\version "2.19.30"
\language "deutsch"

\include "accordion.ily"
\include "style.ily"

\header{
  title    = "Kadar srečam te"
  poet     = "Besedilo: Fani Požek"
  composer = "Lojze Slak"
}

global = {
  \time 3/4
  %\tempo 4 = 120
}

melody = \fixed c' {
  \global
  \key b \major
% \partial 4 <d' f'>4 |
  \partial 4. f8 a c' |
  <es' g'>2. |
  <d' f'>2 <c' es'>4 |
  \startPush
  <b d'>2. |
  <f d'>2 <f d'>4 |
  \stopPush
  <g es'>2. |
  <a es'>2. |
  \startPush
  <b d'>2.~ |
  <b d'>2 r4 |
  % A
  \bar "S"
  \markDefault
  \repeat volta 2 {
    f2 b4 |
    g2 d4 |
    f2.~ |
    f2. |
    <d' f'>4. <c' es'>8 <b d'>4 |
    <d' f'>4 <c' es'> <b d'> |
    \stopPush
    <<
      {
        <a es'>2.~ |
        <a es'>2. |
      }
      {
        s2. |
        s2 \parenthesize f4 |
      }
    >>
    f2 a4 |
    g2 c4 |
    f2.~ |
    f2. |
    <es' g'>4. <d' f'>8 <c' es'>4 |
    <d' f'>2 <c' es'>4 |
    \startPush
    <<
      {
        <b d'>2.~ |
        <b d'>2. |
      }
      {
        s2. |
        s2 \parenthesize f4 |
      }
    >>
    f2 b4 |
    g2 d4 |
    <<
      {
        f2.~ |
        f2. |
      }
      {
        s2. |
        s2 \parenthesize f4 |
      }
    >>
    <d' f'>4. <c' es'>8 <b d'>4 |
    <d' f'>4 <c' es'> <b d'> |
    \stopPush
    <<
      {
        <g es'>2.~ |
        <g es'>2. |
      }
      {
        s2. |
        s2 \parenthesize f4 |
      }
    >>
    <es' g'>2. |
    <d' f'>2 <c' es'>4 |
    \startPush
    <b d'>2. |
    <f d'>2 <f d'>4 |
    \stopPush
    <g es'>2. |
    <a es'>2. |
    \startPush
    <<
      {
        <b d'>2.~ |
        <b d'>2. |
      }
      {
        s2. |
        s2 \parenthesize <b d'>4 |
      }
    >>
    \stopPush
    <es' g'>2. |
    <d' f'>2 <c' es'>4 |
    \startPush
    <b d'>2. |
    <f d'>2 <f d'>4 |
    \stopPush
    <g es'>2. |
    <a es'>2. |
    \startPush
  } \alternative {
    {
      \set Score.repeatCommands = #'((volta "1, 3"))
      <b d'>2.~ |
      <b d'>2
%       \once \override Score.RehearsalMark.direction = #DOWN
      \mark \markup { { \smaller "Fine" } }
      r4 |
    }
    {
      <b d'>2.~ |
      \stopPush
      <b d'>4 r c | % TODO: add ^"Fine"
    }
  }
  % B
%   \bar "||"
  \markDefault
  \key f \major
  \repeat volta 2 {
    c4. e8 d4 |
    c4 e <b d'> |
    \startPush
    <a c'>2. |
    <f a>4 <e g> <f a> |
    \stopPush
    <g b>4. <g b>8 <g b>4 |
    <g b>4 <f a> <g b> |
    \startPush
    <a c'>2. |
    <f a>4 \stopPush r c |
    c4. e8 d4 |
    c4 e <b d'> |
    \startPush
    <a c'>2. |
    <f a>4 <e g> <f a> |
    \stopPush
    <g b>2 c4 |
    <a c'>2 <g b>4 |
  } \alternative {
    {
      \startPush
      <f a>2.~ |
      <f a>4 \stopPush r c |
    }{
      \startPush
      <f a>2.~ |
      <f a>4 r r |
      \bar "S"
      \once \override Score.RehearsalMark.direction = #DOWN
      \mark \markup { { \smaller "D.S. al Fine" } } 
    }
  }
  <b d'>8 r4 <b d'>8 <b d'>4 |
  <b d'>4 r r
  \stopPush

  \bar "|."
}

basses = {}

buttonsII-U = \lyricmode {
  \m \m \m    \M "4" "B8" \M "3" "C6" \M "2" "C5"
  \M "3" "C5" \M "3" "C5" -
  \M "3" "C5" \M "3" "C5"
  \M "3" "C5"
}
buttonsI-U = \lyricmode {
  \M "1" "C2" \M "2" "C3" \M "1" "C4" \M "2" "C5" \M "5" "A7" \M "1" "C4"
  \M "2" "C4" \M "1" "C3" -
  \M "1" "B4" \M "1" "C3"
  \M "2" "C4"
}
buttonsII-Aa = \lyricmode {
  \m \m \m \m \m
}
buttonsI-Aa = \lyricmode {
  \M "1" "C3" \M "2" "C4" \M "4" "A5" \M "1" "C2" \M "2/1" "C3"
}
buttonsII-Aba = \lyricmode {
  \m
}
buttonsI-Aba = \lyricmode {
  \M "2/1" "C3"
}
buttonsII-Abb = \lyricmode {
  \m \m
}
buttonsI-Abb = \lyricmode {
  \M "2/1" "C3" -
}
buttonsII-Ab = \lyricmode {
%   \m
  \M "4" "C6" \M "2" "Es" \M "3" "C5"
  \M "4" "C6" \M "2" "Es" \M "3" "C5"
}
buttonsI-Ab = \lyricmode {
%   \M "2/1" "B3"
  \M "3" "C5" \M "4" "B6" \M "2" "C4"
  \M "3" "C5" \M "4" "B6" \M "2" "C4"
}
buttonsII-Ac = \lyricmode {
  \M "3" "C5"
  \m \m \m \m \m \m
}
buttonsI-Ac = \lyricmode {
  \M "1" "C3"
  \M "1" "C2" \M "1" "C2" \M "2" "C3" \M "3" "B4" \M "1" "B2" \M "2/1" "C2"
}
buttonsII-Ad = \lyricmode {
  \M "4" "B8" \M "3" "C6" \M "2" "C5" \M "3" "C6" \M "2" "C5" \M "3" "C5"
}
buttonsI-Ad = \lyricmode {
  \M "2" "C5" \M "5" "A7" \M "1" "C4" \M "5" "A7" \M "1" "C4" \M "2" "C4"
}
buttonsII-Aea = \lyricmode {
  \M "3" "C5" \m
}
buttonsI-Aea = \lyricmode {
  \M "1" "B4" \M "1" "C2"
}
buttonsII-Ae = \lyricmode {
  \M "4" "B8" \M "3" "C6" \M "2" "C5" -
  \M "2/3" "C5" -
  \M "2/3" "C5" \M "2/3" "C5"
  \M "2/3" "C5"
}
buttonsI-Ae = \lyricmode {
  \M "2" "C5" \M "5" "A7" \M "1" "C4" -
  \M "1" "C3" -
  \M "1" "B4" \M "1" "C3"
  \M "1" "C4"
}
buttonsII-Ba = \lyricmode {
  \m \m \m \m \m \m \M "5" "A7"
  \M "4" "B6" \M "3" "B5" \M "4" "A5" \M "3" "B5"
}
buttonsI-Ba = \lyricmode {
  \M "1" "B2" -           \M "2" "B3" \M "3" "A3" \M "1" "B2" \M "2" "B3" \M "3" "B5"
  \M "3" "B5" \M "2" "B4" \M "3" "A4" \M "2" "B4"
}
buttonsII-Bb = \lyricmode {
  \M "3" "B5" - -         \M "3" "B5" \M "4" "A5" \M "3" "B5"
  \M "4" "B6" \M "3" "B5"
}
buttonsI-Bb = \lyricmode {
  \M "2" "B4" - -         \M "2" "B4" \M "3" "A4" \M "2" "B4"
  \M "3" "B5" \M "2" "B4"
}
buttonsII-Bc = \lyricmode {
  - \m \M "3" "C4" \M "4" "B5"
  \M "4" "B5"
  \m
  \M "4" "B5"
  \M "4" "C5" - - -
}
buttonsI-Bc = \lyricmode {
  - \M "1" "B2" \M "2" "C3" \M "3" "B4"
  \M "3" "B4"
  \M "1" "B2"
  \M "3" "B4"
  \M "3" "C4" - - -
}

buttonsII = \lyricmode {
  \buttonsII-U
  \buttonsII-Aa
    \buttonsII-Ab
    \buttonsII-Ac
    \buttonsII-Ad
    \m \buttonsII-Aa \m
    \buttonsII-Ab
    \buttonsII-Aea \buttonsII-Ae - \buttonsII-Ae \M "3" "C5"
    \buttonsII-Ba \buttonsII-Bb \buttonsII-Ba \buttonsII-Bc
}
buttonsI = \lyricmode {
  \buttonsI-U
  \buttonsI-Aa
    \buttonsI-Ab
    \buttonsI-Ac
    \buttonsI-Ad
    \M "1" "C3" \buttonsI-Aa -
    \buttonsI-Ab
    \buttonsI-Aea \buttonsI-Ae - \buttonsI-Ae \M "2" "C4"
    \buttonsI-Ba \buttonsI-Bb \buttonsI-Ba \buttonsI-Bc
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
        _ _ _ _ _ _ _ _ _ _ _ _
        \set stanza = #"1. "
        Ka -- dar sre -- čam te
        mo -- je nek -- da -- nje de -- kle,
        v tvo -- jih je o -- čeh
        zme -- raj ve -- sel na -- smeh.

        \m Vem, da sre -- čna si,
        \m da -- ješ vse ne _ -- žno -- sti,
        \m dru -- ge -- mu fan -- tu vse dni, no -- či.
      }
    }
    \context Lyrics = "lyricsII" {
      \lyricsto "melody" {
        _ _ _ _ _ _ _ _ _ _ _ _
        \set stanza = #"2. "
        Tu -- di jaz v_no -- čeh
        sre -- čen sem v_dru -- gih dla -- neh,
        \m i -- sta sre -- ča ni,
        kar si mi da -- la ti.

        \m Mi -- mo te -- be grem,
        mol -- čim, a za -- kaj _ ne vem,
        za -- kaj vseh že -- lja ti _ ne po -- vem.
        Za -- kaj vseh že -- lja ti _ ne po -- vem.
      }
    }

    \context Lyrics = "lyricsIII" {
      \lyricsto "melody" {
        _ _ _ _ _ _ _ _ _ _ _ _
        \set stanza = #"3. "
        Ka -- dar sre -- čam te
        mo -- je nek -- da -- nje de -- kle,
        v tvo -- jih je o -- čeh
        zme -- raj ve -- sel na -- smeh.

        A čas be -- ži, be -- ži,
        naj dru _ -- gim po _ -- da -- ri,
        _ kar sva i -- me -- la ne -- koč jaz_in ti.
        _ Kar sva i -- me -- la ne -- koč jaz_in ti.
      }
    }

    \context Lyrics = "buttonsII" {
      \lyricsto "melody" {
        \buttonsII
      }
    }
    \context Lyrics = "buttonsI" {
      \lyricsto "melody" {
        \buttonsI
      }
    }

    \new AccordionPushPull \with {
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = 1
    } {
      \melody
    }

%   \new Staff = "staff" <<
%     \new Voice = "bass" {
%       \clef bass
%       \global
%       \basses
%     }
%   >>
  \new RhythmicStaff {
    \partial 4. r4. |
    c2.-4( | c2-2 c4-3) |
    \repeat unfold 4 { c4 c c | }
    c4-4( c-3 c-2 |
    c2) r4 |
    % A
    \repeat unfold 3 { c4 c c | }
    c4-4( c-2 c-3) |
    \repeat unfold 15 { c4 c c | }
    c4-4( c-2 c-3) |
    c4 c c |
    c4-4( c-2 c-4) |
    \repeat unfold 9 { c4 c c | }
    c4-4( c-2 c-4 |
    c2.-4 | c2-2 c4-3) |
    \repeat unfold 4 { c4 c c | }
    c4-4( c-3 c-2 |
    c2-4) r4 | c4-4( c-3 c-2 | c4-4) r r |
    % B
    c4 c c |
    c4-4( c-3 c-2) |
    \repeat unfold 4 { c4 c c | }
    c4-4( c-3 c-2 |
    c4-4) r r |
    c4 c c |
    c4-4( c-3 c-2) |
    \repeat unfold 3 { c4 c c | }
    c4-4( c-3 c-2 |
    c4-4 c-3 c-2 |
    c4-4) r r |
    %
    c4-4( c-3 c-2 |
    c4-4 c-2 c-3) |
    %
    c4-4( c-3 c-2 |
    c4-4) r r |
  }
  \new FiguredBass {
    \figuremode {
      \partial 4. r4. |
      <11>2. | % V
      <9>2 <4>4 | % V
      <6>4 <5> <5> | <4>4 <5> <5> | % H
      <11>4 <10> <10> | <6>4 <5> <5> | % V
      <6>4 <11> <4> | <6>2 r4 | % H
      % A
      <6>4 <5> <5> | <4>4 <5> <5> | % H
      <6>4 <5> <5> | <4>4 <7> <9> | % H
      <6>4 <5> <5> | <4>4 <5> <5> | % H
      \repeat unfold 3 { <4>4 <5> <5> | <6>4 <5> <5> | } % V
      <11>4 <10> <10> | <6>4 <5> <5> | % V
      \repeat unfold 2 { <6>4 <5> <5> | <4>4 <5> <5> | } % H
      <6>4 <5> <5> | <4>4 <7> <9> | % H
      <6>4 <5> <5> | <6>4 <2> <11> | % H
      \repeat unfold 3 { <11>4 <10> <10> | } % V
      <6>4 <5> <5> | % V
      <6>4 <5> <5> | <4>4 <5> <5> | % H
      <11>4 <10> <10> | <6>4 <5> <5> | % V
      <6>4 <5> <5> | <6>4 <2> <11> | % H
      <11>2. | % V
      <9>2 <4>4 | % V
      <6>4 <5> <5> | <4>4 <5> <5> | % H
      <11>4 <10> <10> | <6>4 <5> <5> | % V
      % A1/2
      \repeat unfold 2 { <6>4 <11> <4> | <6>2 r4 | } % H
      % B
      <2>4 <3> <3> | <4>4 <9> <7> | % V
      <4>4 <3> <3> | <2>4 <3> <3> | % H
      <2>4 <3> <3> | <4>4 <3> <3> | % V
      <4>4 <9> <2> | <4>4 r r | % V
      <2>4 <3> <3> | <4>4 <9> <7> | % V
      <4>4 <3> <3> | <2>4 <3> <3> | % H
      <2>4 <3> <3> | <4>4 <9> <7> | % V
      % B1
      <4>4 <9> <2> | <4>4 r r | % H
      % B2
      <4>4 <9> <2> | <4>4 <7> <9> | % H
      % Fine
      <6>4 <11> <4> | <6>4 r r | % H
    }
  }
>>
  \layout {
%     #(layout-set-staff-size 14)
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
    \tempo 4 = 160
  }
}
