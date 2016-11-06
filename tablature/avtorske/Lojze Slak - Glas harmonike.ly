\version "2.19.30"
\language "deutsch"

\include "accordion.ily"
\include "style.ily"

\header{
  title    = "Glas harmonike"
  poet     = ""
  composer = "Lojze Slak"
  arranger = "priredba: Zoran Lupinc"
}

global = {
  \time 3/4
  %\tempo 4 = 120 
}

melody = \fixed c' {
  \global
  \key f \major
  \partial 4. c8 e g |
  <c' e'>2.~ |
  <c' e'>4 <b d'> <a c'> |
  <g b>2 <c' e'>4 |
  <b d'>2. |
  \startPush
  <b d'>2. |
  \stopPush
  r4 <a c'> <g b> |
  \startPush
  <a f>2 <b d'>4 |
  <a c'>2. |
  c4 <f a>4. <f a>8 |
  <f a>4 <e g> <d f> |
  \stopPush
  <c e>2 <a c'>4 |
  <g b>2. |
  <g b>4 <a c'> <b d'> |
  <a c'>2 <g b>4 |
  \startPush
  <f a>2.~ |
  <f a>2 <a c'>4 |
  % A
  % \markDefaultSegno
  \bar "S"
  \markDefault
  \repeat volta 2 {
    <a c'>2 <b d'>4 |
    <a c'>2 <g b>4 |
    \stopPush
    <g b>2 <a c'>4 |
    <g b>2 c4 |
    <g b>2 <g b>4 |
    <a c'>2 <g b>4 |
    \startPush
    <<
      {
        <f a>2.
      }
      {
        s2 \parenthesize d4
      }
    >>
    c2 d4 |
    c2 a,4 |
    c2 f4 |
    \stopPush
    f2 e4 |
  } \alternative {
    {
      e2 c4 |
      c2 e4 |
      g2 <d b>4 |
      \startPush
      <d b>2. |
      <c a>2 <a c'>4 |
      \stopPush
    }
    {
      e2 g4 |
      g2 <a f'>4 |
      <g e'>2 <f d'>4 |
      \startPush
      <e c'>2.~ |
      <e c'>2 r4 |
      \stopPush
    }
  }
  % B
  \markDefault
  \repeat volta 3 {
    <c' e'>2.~ |
    <c' e'>4 <b d'> <a c'> |
    <g b>2 <c' e'>4 |
    <b d'>2. |
    \startPush
    <b d'>2. |
    \stopPush
    r4 <a c'> <g b> |
    \startPush
    <f a>2 <b d'>4 |
    <a c'>2. |
    c4 <f a>4. <f a>8 |
    <f a>4 <e g> <d f> |
    \stopPush
    <c e>2 <a c'>4 |
    <g b>2. |
  } \alternative {
    {
      %\set Score.repeatCommands = #'((volta "1, 3") end-repeat)
      \set Score.repeatCommands = #'((volta "1, 3"))
      c2 <a c'>4 |
      <g b>4 c8 d e b |
      \startPush
      <f a>2 <b d'>4 |
      <a c'>2.
      \stopPush
    }
    {
      <g b>4 <a c'> <b d'> |
      <a c'>2 <g b>4 |
      \startPush
      <f a>2.~ |
      <f a>2 <a c'>4 |
      \stopPush
      \once \override Score.RehearsalMark.direction = #DOWN
      \mark \markup { { \lower #1 "D.S." } } 
    }
    {
      \set Score.repeatCommands = #'((volta "4") end-repeat)
      <g b>4 <a c'> <b d'> |
      <a c'>2 <g b>4 |
      \startPush
      <f a>2.~ |
      <f a>2 r4 |
      \stopPush
    }
  }
%     <c' e'>2.~ |
%     <c' e'>4 <b d'> <a c'> |
%     <g b>4. <g b>8 <g b>4 |
%     <g b>4 <f a> <g b> |
%     \startPush
%     <a c'>2. |
%     <f a>4 \stopPush r c |
%     c4. e8 d4 |
%     c4 e <b d'> |
%     \startPush
%     <a c'>2. |
%     <f a>4 <e g> <f a> |
%     \stopPush
%     <g b>2 c4 |
%     <a c'>2 <g b>4 |
%   } \alternative {
%     {
%       \startPush
%       <f a>2.~ |
%       <f a>4 \stopPush r c |
%     }{
%       \startPush
%       <f a>2.~ |
%       <f a>4 r r |
%     }{
%       <b d'>8 r4 <b d'>8 <b d'>4 |
%       <b d'>4 r r
%       \stopPush
%     }
%   }
  
  \bar "|."
}

basses = {}

buttonsII-Ua = \lyricmode {
  \m \m \m
}
buttonsI-Ua = \lyricmode {
  \M "2" "B2" \M "1" "B3" \M "2" "B4"
}

buttonsII-Ba = \lyricmode {
  \M "5" "B7" \M "5" "A7" \M "4" "B6" \M "3" "B5" \M "5" "B7" \M "5" "A7"
  \M "3" "C5"
  \M "2" "C4" \M "3" "B5"
  -           \M "3" "C5" \M "4" "B6" \m          \M "3" "B5" - - \M "4" "A5" \M "2" "C3"
  \M "2" "B3" \M "3" "C4" \M "3" "B5"
}
buttonsI-Ba = \lyricmode {
  \M "4" "B6" \M "3" "B5" \M "1" "A5" \M "2" "B4" \M "4" "B6" \M "3" "B5"
  \M "2" "C4"
  \M "1" "C3" \M "2" "B4"
  -           \M "2" "C4" \M "3" "B5" \M "1" "B3" \M "2" "B4" - - \M "3" "A4" \M "1" "C2"
  \M "1" "B2" \M "2" "C3" \M "2" "B4"
}

buttonsII-Ub = \lyricmode {
  - \M "4" "B6" \M "5" "C7" \M "4" "B6" \M "3" "B5" - \M "4" "B6"
}
buttonsI-Ub = \lyricmode {
  - \M "1" "A5" \M "3" "B5" \M "1" "A5" \M "2" "B4" - \M "3" "B5"
}

buttonsII-Aa = \lyricmode {
  -           \M "3" "C5" \M "4" "B6" \M "2" "C4"
  \M "3" "B5" \M "2" "C4" \M "3" "B5" \m          \M "3" "B5" -           \M "4" "B6" \M "3" "B5"
  -  \m \m \m \m \m \m \m
  \m \m \m \m \m \m \m \M "4" "B5"
  \M "3" "B4" \M "3" "B5" \M "4" "B6"
  %
  \m \m \m \M "5" "A8" \M "4" "B7" \M "5" "A7" \M "4" "B6"
}
buttonsI-Aa = \lyricmode {
  -           \M "2" "C4" \M "3" "B5" \M "4" "A5"
  \M "2" "B4" \M "1" "C3" \M "2" "B4" \M "1" "B2" \M "2" "B4" -           \M "1" "A5" \M "2" "B4"
  -           \M "1" "C2" \M "(2)1" "B3" \M "2" "C2" \M "3" "B3" \M "1" "B2" \M "2" "B3" \M "3" "B4"
  \M "2" "C2" \M "3" "B3" -           \M "1" "B2" -           \M "2" "B3" \M "3" "B4" \M "1" "A3"
  \M "2" "B2" \M "1" "B3" \M "3" "B5"
  %
  \M "1" "B3" \M "2" "B4" - \M "1" "A5" \M "2" "B4" \M "1" "A4" \M "1" "A4"
}
buttonsII-Bb = \lyricmode {
  \m          \M "3" "C4" \M "4" "B5" \m \m \m \m
  \M "3" "B5" \M "3" "C5" \M "4" "B6"
}
buttonsI-Bb = \lyricmode {
  \M "1" "B2" \M "2" "C3" \M "3" "B4" \M "1" "B2" \M "3" "A3" \M "2" "B3" \M "4" "B5"
  \M "2" "B4" \M "2" "C4" \M "3" "B5"
}
buttonsII-Bc = \lyricmode {
  \M "3" "B5" \M "4" "B6" \M "5" "A7" \M "4" "B6" \M "3" "B5" -
}
buttonsI-Bc = \lyricmode {
  \M "2" "B4" \M "1" "A5" \M "2" "B5" \M "1" "A5" \M "2" "B4" -
}
buttonsII-Bd = \lyricmode {
  \M "4" "B6"
}
buttonsI-Bd = \lyricmode {
  \M "3" "B5"
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
        _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _ _
        \set stanza = #"1. "
        No -- coj je glas har -- mo -- ni -- ke
        spo -- mi -- ne spet pre -- dra _ -- mil,
        ne -- koč ta glas, me -- hak in blag,
        sr -- ce mi je o -- ma -- mil.
        Le
        _ _ _ _ _ _ _
        La, la, la, la, la, la,
        la, la, la, la, la, la.
        \repeat unfold 25 { \skip 1 }
        %
        No --
        %
        La, la, la, la, la, la.
      }
    }
    \context Lyrics = "lyricsII" {
      \lyricsto "melody" {
        _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _ _
        \set stanza = #"2. "
        (Le) da te -- daj je ta na -- pev
        bil mno -- go, mno -- go bolj ve -- sel
        in fant, ki je ta -- krat i- _ _ _ _ _ _ _ _ _ -- gral,
        si me -- ne je i -- zbral.
      }
    }
    \context Lyrics = "lyricsIII" {
      \lyricsto "melody" {
        _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _ _
        \set stanza = #"3. "
        (No) -- coj spet gle -- dam na go -- re,
        str -- mi -- ne vse mol -- či _ -- jo,
        za -- kaj, za -- kaj so vze -- le ga
        mi ne o -- dgo -- vo -- ri -- jo.
        Ko
      }
    }
    \context Lyrics = "lyricsIV" {
      \lyricsto "melody" {
        _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _ _
        \set stanza = #"4. "
        (Ko) za -- i -- gra har -- mo -- ni -- ka,
        pa ve -- dno me spo -- mi _ -- nja
        in kar ne mo -- re več sr- _ _ _ _ _ _ _ _ _ -- ce
        to o -- na mi po -- ve.
      }
    }

    \context Lyrics = "buttonsII" {
      \lyricsto "melody" {
        \buttonsII-Ua \buttonsII-Ba \buttonsII-Ub
        \buttonsII-Aa
        \buttonsII-Ba \buttonsII-Bb \buttonsII-Bc \buttonsII-Bd \buttonsII-Bc
      }
    }
    \context Lyrics = "buttonsI" {
      \lyricsto "melody" {
        \buttonsI-Ua  \buttonsI-Ba  \buttonsI-Ub
        \buttonsI-Aa
        \buttonsI-Ba  \buttonsI-Bb  \buttonsI-Bc  \buttonsI-Bd  \buttonsI-Bc
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
    \repeat unfold 5 { c4 c c | }
    c4-4( c-3 c-2) |
    \repeat unfold 7 { c4 c c | }
    c4-4( c-3 c-2 |
    c4-4  c-3 c-2 |
    c2-4) r4 |
    \repeat unfold 13 { c4 c c | }
    c4-4( c-3 c-2) |
    \repeat unfold 3 { c4 c c | }
    c4-3 c-2 c-2 |
    c4-4 c-2 c-2 |
    c4-3 c-2 c-2 |
    c2 r4 |
    \repeat unfold 5 { c4 c c | }
    c4-4( c-3 c-2) |
    \repeat unfold 10 { c4 c c | }
    \repeat unfold 2 {
      c4 c c |
      c4-4( c-3 c-2 |
      c4-4  c-3 c-2 |
      c2) r4 |
    }
  }
  \new FiguredBass {
    \figuremode {
      \partial 4. s4. |
      \repeat unfold 2 { <2>4 <3> <3> | <4> <3> <3> | } % V
      <6>4 <5> <5> | % H
      <4>4 <9> <7> | % V
      \repeat unfold 2 { <4>4 <3> <3> | <2> <3> <3> | } % H
      <2>4 <3> <3> | <4> <3> <3> | % V
      <2>4 <3> <3> | <4> <9> <7> | % V
      <4>4 <9> <2> | <4>2 r4     | % H
      <4>4 <3> <3> | <2> <3> <3> | % H
      \repeat unfold 2 { <2>4 <3> <3> | <4> <3> <3> | } % V
      \repeat unfold 2 { <4>4 <3> <3> | <2> <3> <3> | } % H
      <2>4 <3> <3> | <4> <3> <3> | % V
      <2>4 <3> <3> | <4> <9> <7> | % V
      <4>4 <3> <3> | <2> <3> <3> | % H
      <4>4 <3> <3> | <2> <1> <1> | <9> <1> <1> | % V
      <2>4 <1> <1> | <2>2 r4 | % H
      \repeat unfold 2 { <2>4 <3> <3> | <4> <3> <3> | } % V
      <6>4 <5> <5> | % H
      <4>4 <9> <7> | % V
      \repeat unfold 2 { <4>4 <3> <3> | <2> <3> <3> | } % H
      \repeat unfold 2 { <2>4 <3> <3> | <4> <3> <3> | } % V
      \repeat unfold 1 { <4>4 <3> <3> | <2> <3> <3> | } % H
      %
      <2>4 <3> <3> | <4> <9> <7> | % V
      <4>4 <9> <2> | <4>2 r4     | % H
      %
      <2>4 <3> <3> | <4> <9> <7> | % V
      <4>4 <9> <2> | <4>2 r4     | % H

%       \repeat unfold 2 { <2>4 <3> <3> | <4> <3> <3> | } % V
%       <4>4 <9> <2> | <4> r r | % H
%       <2>4 <3> <3> | <4> <9> <7> | % V
%       \repeat unfold 1 { <4>4 <3> <3> | <2> <3> <3> | } % H
%       <2>4 <3> <3> | <4> <9> <7> | % V
%       <4>4 <9> <2> | <4> r r | % H
%       <4>4 <9> <2> | <4> <9> <7> | % H
%       <6>4 <11> <4> | <6> r r | % H
    }
  }
>>
  \layout {
%     ragged-last = ##t
%     #(layout-set-staff-size 16)
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
