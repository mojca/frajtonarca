\version "2.19.30"
\language "deutsch"

\include "accordion.ily"
\include "style.ily"

\header{
  title    = "Veselo v Kamnik"
  poet     = "U-A1-A2-B-B-A-A2-B-B"
  composer = "Andrej Blumauer"
}

global = {
  \time 2/4
  %\tempo 4 = 150 
}

melody = \fixed c' {
  \global
  \key f \major
  \partial 4 <c c'>4 |
  <c c'>2 |
  <e b>4 <g b> |
  <c' e'>2 |
  <g b>4 <a c'> |
  \startPush
  <b d'>2 |
  \stopPush
  <a c'>4 <g b>4 |
  \startPush
  <f a>2~ |
  <f a>4 r8 c8 | % Ve-
  % A
  \bar "S"
  \markDefault
  \repeat volta 2 {
    <f a>4 c8 <f a>8 | % selo v
    <a c'>4 <f a>8 c8 | % Kamnik in
    <f a>4 <g b>8 <f a>8 | % urno na-
    \stopPush
    <e b>4. c8 | % prej
    c4 e8 g8 |
    <c' e'>4 <g b>8 <g b>8 |
    <c' e'>4 <b d'>8 <b d'>8 |
    \startPush
    <a c'>4. c8 |
    <f a>4 c8 <f a>8 |
    <a c'>4 <f a>8 c8 |
    <f a>4 <g b>8 <f a>8 |
    \stopPush
    <e b>4. \parenthesize c8 |
    c4 e8 g8 |
    <c' e'>4 <g b>8 <a c'>8 |
    \startPush
    <b d'>4
    \stopPush
    <a c'>8 <g b>8 |
  } \alternative {
    {
      \set Score.repeatCommands = #'((volta "1, 3"))
      \startPush
      <f a>4 r8 c8 |
    }
    {
      \set Score.repeatCommands = #'((volta "2, 4") end-repeat)
      <f a>4 <f f'>4
    }
  }
%   \bar "||"
  % B
  \markDefault
  \key b \major
  \repeat volta 3 {
    <d' f'>2 |
    <b d'>4 \stopPush <g' b'>4 |
    <f' a'>2 |
    <a es'>2 |
    f8. g16 a8 c'8 |
    <f' a'>4 <es' g'>4 |
    \startPush
    <d' f'>2 |
    <b d'>2 |
    <d' f'>2 |
    <b d'>4 \stopPush <g' b'>4 |
    <f' a'>4 <f' a'>4 |
    <a es'>4. f8 |
    <f' a'>8. <f' a'>16 <f' a'>8 <f' a'>8 |
    <es' g'>4 <a es'>4 |
  } \alternative {
    {
      \set Score.repeatCommands = #'((volta "1, 3"))
      \startPush
      <b d'>2~ |
      <b d'>4 <f f'>4 |
    }{
      \set Score.repeatCommands = #'((volta "2") end-repeat)
      <b d'>2~ |
      <b d'>4 % then repeat A + B
      r8 c8 |
      \once \override Score.RehearsalMark.direction = #DOWN
      \mark \markup { { \smaller "D.S." } } 
    }{
      \set Score.repeatCommands = #'((volta "4") end-repeat)
      <b d'>2~ |
      <b d'>8 r8 <b d'>4
      \stopPush
    }
  }
  \bar "|."
}

basses = {}

buttonsII-U = \lyricmode {
  \M "4" "B6" - \M "3" "B5" \M "3" "B5" \M "5" "B7" \M "3" "B5" \M "2" "C4"
  \M "3" "C5"
  \M "2" "C4" \M "3" "B5"
  \M "3" "B5"
}
buttonsI-U = \lyricmode {
  \M "1" "B2" - \M "1" "B3" \M "2" "B4" \M "4" "B6" \M "2" "B4" \M "4" "A5"
  \M "2" "C4"
  \M "1" "C3" \M "2" "B4"
  \M "2" "B4"
}
buttonsII-Aa = \lyricmode {
  ""          \M "3" "B5"    ""       \M "3" "B5" \M "4" "B6" \M "3" "B5"    ""       \M "3" "B5" \M "2" "C4" \M "3" "B5"
  \M "3" "B5"    ""          ""          ""          ""       \M "5" "B7"
}
buttonsI-Aa = \lyricmode {
  \M "1" "B3" \M "2" "B4" \M "1" "B3" \M "2" "B4" \M "3" "B5" \M "2" "B4" \M "1" "B3" \M "2" "B4" \M "4" "A5" \M "2" "B4"
  \M "1" "B3" \M "1" "B2" -           \M "1" "B3" \M "2" "B4" \M "4" "B6"
}
buttonsII-Ab = \lyricmode {
  \M "3" "B5" - \M "5" "B7" \M "5" "A7" - \M "4" "B6"
}
buttonsI-Ab = \lyricmode {
  \M "2" "B4" - \M "4" "B6" \M "3" "B5" - \M "3" "B5"
}
buttonsII-Ac = \lyricmode {
  \M "3" "B5" \M "2" "C4" \M "3" "C5" \M "2" "C4" \M "3" "B5"
  -           ""
  \M "3" "B5" %\M "4" "C6"
}
buttonsI-Ac = \lyricmode {
  \M "2" "B4" \M "4" "A5" \M "2" "C4" \M "1" "C4" \M "2" "B4"
  -           \M "1" "B3"
  \M "2" "B4" %\M "1" "C3"
}
buttonsII-B = \lyricmode {
  \M "4" "C6" \M "3" "C6" \M "2" "C5"
  \M "5" "B9" \M "4" "C7" \M "2" "C5" "" "" "" "" \M "4" "C7" \M "5" "B8"
  \M "3" "C6" \M "2" "C5" \M "3" "C6" \M "2" "C5"
  \M "5" "B9" \M "4" "C7" -           \M "2" "C5"    ""       \M "4" "B7" - - - \M "5" "B8" \M "2" "C5"
  \M "3" "C5" \M "4" "C6"
  \M "3" "C5"    ""
  \M "3" "C5" -
}
buttonsI-B = \lyricmode {
  \M "1" "C3" \M "2" "C5" \M "1" "C4"
  \M "4" "B8" \M "3" "C6" \M "1" "C3" \M "1" "C2" \M "3" "B4" \M "1" "C3" \M "2" "C4" \M "3" "C6" \M "2" "C5"
  \M "2" "C5" \M "1" "C4" \M "2" "C5" \M "1" "C4"
  \M "4" "B8" \M "3" "C6" -           \M "1" "C3" \M "1" "C2" \M "3" "C6" - - - \M "2" "C5" \M "1" "C3"
  \M "2" "C4" \M "1" "C3"
  \M "2" "C4" \M "1" "B3"
  \M "2" "C4" -
}
% \M "" "C"

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
        _ _ _ _ _ _ _ _ _ _ _
        Ve -- se -- lo v Kam -- nik in ur -- no na -- prej,
        v_pre -- le -- pe pla -- ni -- ne od -- ha -- jam, ju -- hej!
        Za -- u -- kam ve -- se -- lo, po -- za -- bim skr -- bi,
        _ ve -- dno sr -- ce tja na -- zaj si že -- li.
        Po–
        %
        _ _
        Grem v pla -- ni -- ne, med o -- ča -- ke, ska -- le si -- ve,
        kam -- ni -- ški le -- pi kot, saj le -- pše ni ni -- kjer dru -- god.
      }
    }
    \context Lyrics = "lyricsII" {
      \lyricsto "melody" {
        \set stanza = #"2. "
        _ _ _ _ _ _ _ _ _ _ _
        _ -- zi -- mi mi smu -- či, po -- le -- ti ce -- pin,
        ve -- se -- la so dru -- žba \m vr -- hu pla -- nin,
        v_do -- li -- ni pa Bi -- stri -- ca zve -- sto šu -- mi,
        kot sol -- za kri -- sta -- lna si, Bi -- stri -- ca _ _ ti.
      }
    }
    \context Lyrics = "buttonsII" {
      \lyricsto "melody" {
        \buttonsII-U
        \buttonsII-Aa \buttonsII-Ab \buttonsII-Aa \buttonsII-Ac
        \buttonsII-B
      }
    }
    \context Lyrics = "buttonsI" {
      \lyricsto "melody" {
        \buttonsI-U
        \buttonsI-Aa  \buttonsI-Ab  \buttonsI-Aa  \buttonsI-Ac
        \buttonsI-B
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
    \partial 4 s4 |
    \repeat unfold 4 { c8 c c c | }
    c2 | c2 |
    c8 c c c |
    c4 r |
    \repeat unfold 14 { c8 c c c | }
    c4 c |
    c4 r |
    c4 c |
    c8 c c c |
    c4 c |
    \repeat unfold 3 { c8 c c c | }
    c8 c c4 |
    \repeat unfold 3 { c8 c c c | }
    c4 c |
    \repeat unfold 5 { c8 c c c | }
    c4 c |
    c8 c c c |
    c4 r |
    c8 c c c |
    c4 c |
  }
  \new FiguredBass {
    \figuremode {
      \partial 4 s4 |
      %
      \repeat unfold 4 { <2>8 <3> <4> <3> | } % V
      <5 6>2 | % H
      <3 4>2 | % V
      <4>8 <3> <2> <3> | % H
      <4>4 r | % H
      \repeat unfold 3 { <4>8 <3> <2> <3> | } % H
      \repeat unfold 4 { <2>8 <3> <4> <3> | } % V
      \repeat unfold 4 { <4>8 <3> <2> <3> | } % H
      \repeat unfold 3 { <2>8 <3> <4> <3> | } % V
      <5 6>4   % H
      <3 4>4 | % V
      <3 4>4 r | % H
      <3 4>4 <4> | % H
      % B
      <6>8 <5> <4> <5> | % H
      <5 6>4     % H
      <10 11>4 | % V
      \repeat unfold 3 { <4>8 <5> <6> <5> | } % V
      <4>8 <5> <11>4 | % V
      \repeat unfold 3 { <6>8 <5> <4> <5> | } % H
      <5 6>4   % H
      <10 11>4 | % V
      \repeat unfold 4 { <4>8 <5> <6> <5> | } % V
      \repeat unfold 1 { <6>8 <5> <4> <5> | } % H
      <6>4 <4> | % H
      \repeat unfold 1 { <6>8 <5> <4> <5> | } % H
      <6>4 r | % H
      \repeat unfold 1 { <6>8 <5> <4> <5> | } % H
      <6>4 <6> | % H
    }
  }
>>
  \layout {
    #(layout-set-staff-size 17.5)
    % ragged-last = ##t
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
    \tempo 4 = 150
  }
}
