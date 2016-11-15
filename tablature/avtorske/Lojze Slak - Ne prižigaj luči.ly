\version "2.19.30"
\language "deutsch"

\include "accordion.ily"
\include "style.ily"

\header{
  title    = "Ne prižigaj luči"
  poet     = "A-B-B-A-B-B"
  composer = "Lojze Slak"
  arranger = ""
}

global = {
  \time 3/4
  \key f \major
}

melody = \fixed c' {
  \global
  \markDefault
  \startPush
  \repeat volta 2 {
    c2 d4              | % ne pri-
    c2.                | % ži
    a,2 c4             | % gaj lu-
    \stopPush
    <a c'>2.           | % či
    <a c'>2 <g b>4     | % naj za-
    \startPush
    <g b>2.            | % ple-
    <f a>2 c4          | % šem v te-
    <f a>2.            | % mi
    <a c'>2 <b d'>4    | % zad-nji
    \stopPush
    <a c'>2.           | % val-
    <g b>2 <f a>4      | % ček s te
    <g b>2.~           | % boj
    <g b>2 <b d'>4     | % no-
    \startPush
    <a c'>2.~          | % coj
    <a c'>2.~          |
    <a c'>2.           |
    c2 d4              | % Nič be
    c2.                | % sed
    a,2 c4             | % tre-ba
    \stopPush
    <a c'>2.           | % ni
    <a c'>2 <g b>4     | % naj sr-
    \startPush
    <g b>2.            | % ce
    <f a>2 c4          | % go vo-
    <f a>2.            | % ri
    <a c'>2 <b d'>4    | % kaj ču-
    \stopPush
    <a c'>2.           | % ti-
    <g b>2 <b d'>4     | % lo je
    <a c'>2.~          | % dol-
    <a c'>2 <g b>4     | % ge
    \startPush
    <f a>2.~           | % dni.
    <f a>2.~
    <f a>4 r <f a>8 <f a> |
    <f a>4 <g b> <a c'> | % Za-
    \markDefault
    \repeat volta 2 {
      <b d'>2.           | % ple-
      <b d'>2 <c' e'>4   | % ši z me-
      \stopPush
      <c' e'>2.~         | % noj
      <c' e'>2 <b d'>4   | % ta
      \startPush
      <b d'>2.           | % val-
      % <a c'>             | % ček
      % <d' b'>2.          |
      % <c' a'>2 <b d'>4   | % in
      <a c'>2.~          | % ček
      <a c'>2.~          |
      <a c'>2  <b d'>4   | % in
      \stopPush
      <a c'>2.           | % k me-
      <g b>2 <f a>4      | % ni se
      <g b>2.            | % než-
      <a c'>2 <b d'>4    | % no pri-
      \startPush
      <a c'>2.~          | % vij.
      <a c'>2.~          |
      <a c'>2.~          |
      <a c'>2 <a c'>4    | % Le
      <b d'>2.           | % na-
      <b d'>2 <c' e'>4   | % jin naj
      \stopPush
      <c' e'>2.~         | % bo
      <c' e'>2 <b d'>4   | % tre-
      \startPush
      <b d'>2.           | % nu-
      <a c'>2.~          | % tek
      <a c'>2.~          |
      <a c'>2 <b d'>4    | % ko
      \stopPush
      <a c'>2.           | % v sre-
      <g b>2 <b d'>4     | % či sr-
      <a c'>2.~          | % ce
      <a c'>2 <g b>4     | % go-
    }
    \alternative {
      {
        \startPush
        <f a>2.~           | % ri
        <f a>2.~           |
        <f a>4 r <f a>8 <f a> |
        <f a>4 <g b> <a c'>   |
      }
      {
        <f a>2.~           | % ri
        <f a>2.~           |
        <f a>4 r r         |
        \stopPush
      }
    }
  }
%   \alternative
%   {
%     {
%       c2 d4 |
%     }
%     {
%       <f a>4 r2 |
%       \stopPush
%     }
%   }
}

basses = {}

buttonsIIx = \lyricmode {
  % \M "5" "C7"
  % \M "3" "B4"
  % \M "3" "F5"
  % \M "5" "C7"
  % \M "3" "B4"
  % \M "3" "F5"
  % \M "3" "F5"
  \m \m \m \m \m % ne prižigaj lu-
  \M " " "B4" -
  \M "4" "F5"
  \M "2" "B4"
  \M "3" "F5"
  \m
  \M "3" "F5"
  \M "4" "F6" % sta-
  \M "3" "B5" % ri
  \M " " "B4"
  \M "3" "F5"

  \M "4" "C5"
  \M "3" "F5"
  \M "5" "C7"
  \M " " "F6"

  \m \m \m \m \m % nič besed treba
  \M " " "B4" -
  \M " " "F5"
  \M "2" "B4"
  \M "3" "F5"
  \m
  \M "3" "F5"
  \M "4" "F6" % kaj
  \M "3" "B5"
  \M " " "B4"
  \M "3" "F5"

  \M "5" "C7"
  \M "2" "B4"
  \M "3" "F5"
  \M "3" "F5"

  \m \m \m \m % TODO
  \M "4" "B6" % za[pleši]
  \M "3" "B5" _
  \M "4" "F7" _
  \M "5" "C7" _
  \M "3" "F6"
  \M "4" "B7"
  \M "4" "F8"
  \M "3" "B5" % in
  \M "4" "F6"
  \M "3" "F5"
  \M "4" "C5"
  \M "3" "F5"
  \M "2" "B4"
  \M "5" "C7"
  \M "4" "F6"
  \M "4" "B6" % le najin ...
  \M "3" "B5" _
  \M "4" "F7" _
  \M "5" "C7" _
  \M "4" "F6"
  \M "3" "B5"
  \M "4" "F6"
  \M "3" "F5"
  \M "5" "C7"
  \M "2" "B4"
  \M "3" "F5"
  \M "3" "F5"
}

buttonsII-Aa = \lyricmode {
  % \m % ne
  \m \m \m \m % prižigaj lu-
  \M "3" "B4" -
  \M "3" "F5"
  \M "2" "B4"
  \M "3" "F5"
  \m
  \M "3" "F5"
  \M "4" "F6" % sta-
  \M "3" "B5" % ri
  \M "2" "B4"
  \M "3" "F5"
}
buttonsI-Aa = \lyricmode {
  % \M "3" "F3" % ne
  \M "2" "B2" % pri
  \M "3" "F3"
  \M "1" "F2"
  \M "3" "F3"
  \M "2" "B3" -
  \M "2" "F4"
  \M "4" "C5"
  \M "2" "F4"
  \M "1" "F3"
  \M "2" "F4"
  \M "3" "F5" % sta-
  \M "2" "B4" % ri
  \M "1" "B3"
  \M "2" "F4"
}

buttonsII-Ab = \lyricmode {
  \M "4" "C5" % s te-
  \M "3" "F5" % boj
  \M "5" "C7" % no-
  \M "4" "F6" % coj
}
buttonsI-Ab = \lyricmode {
  \M "3" "C4" % s te-
  \M "2" "F4" % boj
  \M "3" "F5" % no-
  \M "3" "F5" % coj
}

buttonsII-Ac = \lyricmode {
  \M "5" "C7" % je
  \M "2" "B4" % dol-
  \M "3" "F5" % ge
  \M "3" "F5" % dni
}
buttonsI-Ac = \lyricmode {
  \M "3" "F5" % je
  \M "1" "B3" % dol-
  \M "2" "F4" % ge
  \M "2" "F4" % dni
}

buttonsII-Ad = \lyricmode {
  - - -
  \M "2" "B4"
  \M "4" "F6"
}
buttonsI-Ad = \lyricmode {
  - - -
  \M "4" "C5"
  \M "3" "F5"
}

buttonsII-Ba = \lyricmode {
  \M "3" "B5" - % pleši
  \M "5" "C7" % z me-
  \M "4" "F7" % noj
  \M "5" "C7" % ta
  \M "3" "B5" % val-
  \M "4" "F6" % ček
  \M "3" "B5" % in
  \M "2" "B4" % k me-
  \M "3" "F5" % ni
}
buttonsI-Ba = \lyricmode {
  \M "2" "B4" - % pleši
  \M "1" "C6" % z me-
  \M "3" "F6" % noj
  \M "2" "F5" % ta
  \M "2" "B4" % val-
  \M "3" "F5" % ček
  \M "2" "B4" % in
  \M "1" "B3" % k me-
  \M "2" "F4" % ni
}

buttonsII-Bb = \lyricmode {
  \M "4" "C5" % se
  \M "3" "F5" % ne-
  \M "4" "F6" % žno
  \M "5" "C7" % pri-
  \M "4" "F6" % vij
}
buttonsI-Bb = \lyricmode {
  \M "3" "C4" % se
  \M "2" "F4" % ne-
  \M "1" "C5" % žno
  \M "3" "F5" % pri-
  \M "3" "F5" % vij
}

buttonsII-Bc = \lyricmode {
  \M "5" "C7" % sr-
  \M "2" "B4" % ce
  \M "3" "F5" % go-
  \M "3" "F5" % ri
}
buttonsI-Bc = \lyricmode {
  \M "3" "F5" % sr-
  \M "1" "B3" % ce
  \M "2" "F4" % go-
  \M "2" "F4" % ri
}

buttonsII = \lyricmode {
  \m % ne
  \buttonsII-Aa % prižigaj ... valček
  \buttonsII-Ab % s teboj nocoj
  \m % nič
  \buttonsII-Aa % besed ... kaj čutilo
  \buttonsII-Ac
  \buttonsII-Ad
  \buttonsII-Ba % pleši ... in k meni
  \buttonsII-Bb % se nežno privij
  - % le
  \buttonsII-Ba % najin ... ko v sreči
  \buttonsII-Bc
  \buttonsII-Ad
  \M "3" "F5"
}
buttonsI = \lyricmode {
  \M "3" "F3" % ne
  \buttonsI-Aa % prižigaj ... valček
  \buttonsI-Ab % s teboj nocoj
  \M "1" "F3" % nič
  \buttonsI-Aa % besed ... kaj čutilo
  \buttonsI-Ac
  \buttonsI-Ad
  \buttonsI-Ba % pleši ... in k meni
  \buttonsI-Bb % se nežno privij
  - % le
  \buttonsI-Ba % najin ... ko v sreči
  \buttonsI-Bc
  \buttonsI-Ad
  \M "2" "F4"
}

\score {
\new PianoStaff <<
%   \new Staff <<
    \new Lyrics = "buttonsII" \with {
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Lyrics = "buttonsI" \with {
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Voice = "melody" \fixed c' {
      \melody
    }
    \context Lyrics = "lyricsI" {
      \lyricsto "melody" {
        \set stanza = #"1. "
        Ne pri -- ži -- gaj lu -- či,
        naj za -- ple -- šem "v te" -- mi
        sta -- ri val -- ček "s te" -- boj no -- coj.__
        Nič be -- sed tre -- ba -- ni, naj sr -- ce go -- vo -- ri,
        kaj ču -- ti -- lo je dol -- ge dni.
        \m \m \m \m
        Za -- ple -- "ši" "z me" -- noj ta val -- ček
        in "k me" -- ni se ne -- žno pri -- vij.
        Le na -- jin naj bo tre -- nu -- tek,
        ko "v sre" -- či sr -- ce go -- ri.
      }
    }
    \context Lyrics = "lyricsII" {
      \lyricsto "melody" {
        \set stanza = #"2. "
        Glas -- ba, noč, jaz in ti,
        nič be -- sed tre -- ba ni,
        čas u -- sta -- vil se je "za na" -- ju.
        Ne pri -- ži -- gaj lu -- či,
        naj za -- ple -- šem "v te" -- mi
        sta -- ri val -- ček "s te" -- boj no -- coj.
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

    \new RhythmicStaff {
      r2. |
      \repeat unfold 30 { c4 c c | }
      c4 r r |
      \repeat unfold 31 { c4 c c | }
      c4 r r |
      \repeat unfold 3 { c4 c c | }
      c4 r r |
    }
    \new FiguredBass {
      \figuremode {
        r2. |
        <4>4 <3> <3> | <2>4 <3> <3> | % H
        <6>4 <5> <5> | <4>4 <9> <7> | % V
        \repeat unfold 2 { <4>4 <3> <3> | <2> <3> <3> | } % H
        <2>4 <3> <3> | <4>4 <3> <3> | % V
        <2>4 <3> <3> | <4>4 <9> <7> | % V
        <4>4 <3> <3> | <4>4 <9> <2> | % H
        \repeat unfold 2 { <4>4 <3> <3> | <2> <3> <3> | } % H
        <6>4 <5> <5> | <4>4 <9> <7> | % V
        \repeat unfold 2 { <4>4 <3> <3> | <2> <3> <3> | } % H
        <2>4 <3> <3> | <4>4 <3> <3> | % V
        <2>4 <3> <3> | <4>4 <9> <7> | % V
        <4>4 <3> <3> | <4>4 <9> <2> | % H
        <4>4 r r | <4>4 <7> <9> | % H
        <6>4 <5> <5> | <4>4 <5> <5> | % H
        <2>4 <3> <3> | <4>4 <9> <7> | % V
        \repeat unfold 2 { <4>4 <3> <3> | <2> <3> <3> | } % H
        <2>4 <3> <3> | <4>4 <3> <3> | % V
        <2>4 <3> <3> | <4>4 <9> <7> | % V
        <4>4 <3> <3> | <4>4 <9> <2> | % H
        <4>4 <3> <3> | <4>4 <7> <9> | % H
        <6>4 <5> <5> | <4>4 <5> <5> | % H
        <4>4 <3> <3> | <4>4 <9> <7> | % V
        \repeat unfold 2 { <4>4 <3> <3> | <2> <3> <3> | } % H
        <2>4 <3> <3> | <4>4 <3> <3> | % V
        <2>4 <3> <3> | <4>4 <9> <7> | % V
        <4>4 <3> <3> | <4>4 <9> <2> | % H
        <4>4 r r | <4>4 <7> <9> | % H
        <4>4 <3> <3> | <4>4 <9> <2> | % H
        <4>4 r r | % H 
      }
    }

%   \new Staff = "staff" <<
%     \new Voice = "bass" {
%       \clef bass
%       \global
%       s4
%       R2.*20 %r2.*20 creates a single rest which can't be broken; use R for (breakable) multimeasure rests
%     }
%   >>
>>
  \layout {
%     ragged-last = ##t
    #(layout-set-staff-size 16)
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
