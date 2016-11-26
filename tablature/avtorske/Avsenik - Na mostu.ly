\version "2.19.30"
\language "deutsch"

\include "accordion.ily"
\include "style.ily"

\header{
  title    = "Na mostu"
  poet     = ""
  composer = "Vilko in Slavko Avsenik"
}

global = {
  \time 3/4
}

melodyUa = \fixed c' {
  <f a>4 <g b> <a c'> |
  <a c'>4 <b d'>4. <a c'>8 |
  \stopPush
  <c' e'>2.~ |
  <c' e'>2. |
  <g b>4 <a c'> <b d'> |
  <b d'>4 <a c'>4. <g h>8 |
  \startPush
  <a c'>2. |
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  c8 d e f a c' |
  <d' f'>4 <d' f'> <c' e'> |
}
melodyU = \fixed c' {
%   \set Timing.beamExceptions = #'()
%   \set Timing.baseMoment = #(ly:make-moment 1/4)
%   \set Timing.beatStructure = #'(1 1 1)
  \startPush
  \melodyUa
  <b d'>4 <b d'>4. <f a>8 |
  \stopPush
  <a c'>4 <a c'> <gis h> |
  <g b>2. |
  <g b>4 <f a> <g b> |
  <a c'>4 <b d'>4. <e b>8 |
  \startPush
  <f a>2.~ |
  <f a>4 <c c'>8 <c c'> <c c'>4 |
}
melodyAb = \fixed c' {
  \melodyUa
  <b d'>4 <b d'>4. <f a>8 |
  \stopPush
  <a c'>4 <a c'> <gis h> |
  <g b>2. |
  <g b>4 <f a> <g b> |
  <a c'>4 <b d'>4. <e b>8 |
}
melodyB = \fixed c' {
  \markDefault
  <g b>2 <b d'>4 |
  <b d'>2 <a c'>4 |
  <e g>2.~ |
  <e g>4 es <e g> |
  \startPush
  <f a>2 <b d'>4 |
  <b d'>2 <a c'>4 |
  <f a>2.~ |
  <f a>2 <a c'>4 |
  \stopPush
  <g h>2. |
  <a c'>2 <h d'>4 |
  \startPush
  <c' e'>2. |
  <e g>2 g4 |
  \stopPush
  g2. |
  <g e'>2 <f d'>4 |
  <e c'>2.~ |
  <e c'>4 \startPush <c c'>8 <c c'>8 <c c'>4 |
}

melodyA = \fixed c' {
  \markDefault
  \bar "S"
  \melodyUa
  <b d'>2 <f a>4 |
  \stopPush
  <a c'>4 <a c'>4. <gis h>8 |
  <g b>2. |
  <c' e'>4. <c' e'>8 <b d'>4 |
  <a c'>4 <a c'> <g b> |
  \startPush
  <f a> <b d'>4. <b d'>8 |
  <a c'>2. |
  \set Score.voltaSpannerDuration = #(ly:make-moment 3/4)
  \repeat volta 2 {
    \melodyAb
    \mark \markup { \musicglyph #"scripts.coda" }
  } \alternative {
    {
      \pageBreak
      %\once \override Score.VoltaBracket.shorten-pair = #'(0.5 . 5)
      \startPush
      <f a>2.~ |
      <f a>4 <e g> <f a> |
      \stopPush
      \melodyB
    }{
      \startPush
      <f a>2.~ |
      <f a>4 <f f'>8 <f f'> <f f'> <f f'> |
      % \stopPush
    }
  }
}
melodyC = \fixed c' {
  \key b \major
  % \startPush
  \markDefault
  \repeat volta 2 {
    <b d'>4 <c' es'> <d' f'> |
    <d' f'>4 <es' g'>4. <d' f'>8 |
    \stopPush
    <f' a'>2.~ |
    <f' a'>2. |
    <c' es'>4 <d' f'>4. <es' g'>8 |
    <es' g'>4 <d' f'>4. <cis' e'>8 |
    \startPush
    <d' f'>2. |
    f8 g a b d' f' |
    <g' b'>4 <g' b'> <f' a'> |
    <es' g'>4 <es' g'>4. <b d'>8 |
    \stopPush
    <d' f'>4 <d' f'> <cis' e'> |
    <c' es'>2. |
  } \alternative {
    {
      <f' a'>4 <f' a'> <es' g'> |
      <d' f'>4 <d' f'> <c' es'> |
      \startPush
      <b d'>4 <es' g'>4. <es' g'>8 |
      <d' f'>2. |
      \stopPush
    }{
      <c' es'>4 <h d'> <c' es'> |
      <d' f'>4 <es' g'>4. <a es'>8 |
      \startPush
      <b d'>2.
      \stopPush
      <e b c'>2
      %\once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
      \once \override Score.RehearsalMark.self-alignment-X = #LEFT
      \once \override Score.RehearsalMark.direction = #DOWN
      \mark \markup { { \smaller \center-column { \line { "D.S." } \line { "al Coda" } } } }
      r4 |
    }
  }
}
melodyD = \fixed c' {
  \key f \major
  \mark \markup { \musicglyph #"scripts.coda" }
  \startPush
  <f a>2. |
  c8 d e f a c' |
  <d' f'>4 <d' f'> <c' e'> |
  <b d'>4 <b d'>4. <f a>8 |
  \stopPush
  <a c'>4 <a c'> <gis h> |
  <g b>2. |
  <g b>4 <f a> <g b> |
  <a c'>4 <b d'> <e b> |
  \startPush
  <f a>4 r8 <f a c'> <f a c'>4 |
% <f a c'>4 r2 |
  \pageBreak
  \partial 4 <f a c'>4 |
  \stopPush
}

melody = \fixed c' {
  \global
  \key f \major
  \melodyU
  \melodyA
  %\melodyB
  \melodyC
  \bar "||"
  \break
  \melodyD
}

melodyUa = \fixed c' {
  <f a>4 <g b> <a c'> |
  <a c'>4 <b d'>4. <a c'>8 |
  \stopPush
  <c' e'>2.~ |
  <c' e'>2. |
  <g b>4 <a c'> <b d'> |
  <b d'>4 <a c'>4. <g h>8 |
  \startPush
  <a c'>2. |
  c8 d e f a c' |
  <d' f'>4 <d' f'> <c' e'> |
}

bassesPushCcc = { c,4 <e g c'> <e g c'> | } % 2 1 1
bassesPushGcc = { g,4 <e g c'> <e g c'> | } % 7 1 1

bassesPullDgg = { d,4 <g h d'> <g h d'> | } % 9 1 1
bassesPullGgg = { g,4 <g h d'> <g h d'> | } % 2 1 1


bassesPushFff = { f,4 <f a c'> <f a c'> | } % 4 3 3
bassesPushCff = { c,4 <f a c'> <f a c'> | } % 2 3 3

bassesPullGcc = { g,4 <e g c'> <e g c'> | } % 2 3 3
bassesPullCcc = { c,4 <e g c'> <e g c'> | } % 4 3 3

bassesPushBbb = { b,,4 <d f b> <d f b> | } % 6 5 5
bassesPushFbb = { f,4  <d f b> <d f b> | } % 4 5 5

bassesPullCff = { c,4 <f a c'> <f a c'> | } % 4 5 5
bassesPullFff = { f,4 <f a c'> <f a c'> | } % 6 5 5

basses_figuresU = \figuremode {
  <4>4 <3> <3> | <2>4 <3> <3> | % H
  \repeat unfold 2 { <2>4 <3> <3> | <4>4 <3> <3> | } % V
  \repeat unfold 2 { <4>4 <3> <3> | <2>4 <3> <3> | } % H
  <2>4 <3> <3> | <4>4 <3> <3> | % V
  <2>4 <3> <3> | <4>4 <9> <7> | % V
  <4>4 <9> <2> | <4>4 r r | % H
}
bassesU = {
  \bassesPushFff \bassesPushCff
  \repeat unfold 2 { \bassesPullGcc \bassesPullCcc }
  \repeat unfold 2 { \bassesPushFff \bassesPushCff }
  \bassesPullGcc \bassesPullCcc
  \bassesPullGcc c,4 d, e, |
  f,4 a, c, | f,4 r r |
}
basses_figuresA = \figuremode {
  <4>4 <3> <3> | <2>4 <3> <3> | % H
  \repeat unfold 2 { <2>4 <3> <3> | <4>4 <3> <3> | } % V
  \repeat unfold 2 { <4>4 <3> <3> | <2>4 <3> <3> | } % H
  \repeat unfold 2 { <2>4 <3> <3> | <4>4 <3> <3> | } % V
  <4>4 <3> <3> | <2>4 <3> <3> | % H
  \repeat volta 2 {
    <4>4 <3> <3> | <2>4 <3> <3> | % H
    \repeat unfold 2 { <2>4 <3> <3> | <4>4 <3> <3> | } % V
    \repeat unfold 2 { <4>4 <3> <3> | <2>4 <3> <3> | } % H
    <2>4 <3> <3> | <4>4 <3> <3> | % V
    <2>4 <3> <3> | <4>4 <9> <7> | % V
  } \alternative {
    {
      <4>4 <9> <2> | <4>4 r r | % H
      \repeat unfold 2 { <2>4 <3> <3> | <4>4 <3> <3> | } % V
      \repeat unfold 2 { <4>4 <3> <3> | <2>4 <3> <3> | } % H
      <2>4 <1> <1> | <9>4 <1> <1> | % V
      <2>4 <1> <1> | <7>4 <1> <1> | % H
      <9>4 <1> <1> | <2>4 <1> <1> | % V
      <4>4 <7> <2> | <4>4 <9> <7> | % V
    }{
      <4>4 <9> <2> | <4>4 r r | % H
    }
  }
}
bassesA = {
  \bassesPushFff \bassesPushCff
  \repeat unfold 2 { \bassesPullGcc \bassesPullCcc }
  \repeat unfold 2 { \bassesPushFff \bassesPushCff }
  \repeat unfold 2 { \bassesPullGcc \bassesPullCcc }
  \bassesPushFff \bassesPushCff
  \repeat volta 2 {
    \bassesPushFff \bassesPushCff
    \repeat unfold 2 { \bassesPullGcc \bassesPullCcc }
    \repeat unfold 2 { \bassesPushFff \bassesPushCff }
    \bassesPullGcc \bassesPullCcc
    \bassesPullGcc c,4 d, e, |
  } \alternative {
    {
      f,4 a, c, | f,4 r r |
      % B
      \repeat unfold 2 { \bassesPullGcc \bassesPullCcc }
      \repeat unfold 2 { \bassesPushFff \bassesPushCff }
      \bassesPullGgg \bassesPullDgg
      \bassesPushCcc \bassesPushGcc
      \bassesPullDgg \bassesPullGgg
      c,4 e, g, |
      c,4 d, e, |
    }{
      f,4 a, c, | f,4 r r |
    }
  }
}
basses_figuresC = \figuremode {
  \repeat volta 2 {
    \repeat unfold 1 { <6>4 <5> <5> | <4>4 <5> <5> | } % H
    \repeat unfold 2 { <4>4 <5> <5> | <6>4 <5> <5> | } % V
    \repeat unfold 2 { <6>4 <5> <5> | <4>4 <5> <5> | } % H
    \repeat unfold 1 { <4>4 <5> <5> | <6>4 <5> <5> | } % V
  } \alternative {
    {
      <4>4 <5> <5> | <6>4 <5> <5> | % V
      <6>4 <5> <5> | <4>4 <5> <5> | % H
    }{
      <4>4 <5> <5> | <6>4 <5> <5> | % V
      <6>4 <5> <5> | % H
      <3 4>2 r4 | % V
    }
  }
}
bassesC = {
  \key b \major
  \repeat volta 2 {
    \repeat unfold 1 { \bassesPushBbb \bassesPushFbb }
    \repeat unfold 2 { \bassesPullCff \bassesPullFff }
    \repeat unfold 2 { \bassesPushBbb \bassesPushFbb }
    \repeat unfold 1 { \bassesPullCff \bassesPullFff }
  } \alternative {
    {
      \bassesPullCff \bassesPullFff
      \bassesPushBbb \bassesPushFbb
    }{
      \bassesPullCff \bassesPullFff
      \bassesPushBbb
      <c, e g c'>2 r4 |
    }
  }
}
basses_figuresD = \figuremode {
  \repeat unfold 2 { <4>4 <3> <3> | <2>4 <3> <3> | } % H
  <2>4 <3> <3> | <4>4 <3> <3> | % V
  <2>4 <3> <3> | <4>4 <9> <7> | % V
% <4>4 <9> <2> | <4>4 r2 | % H
  <4>4 <9> <2> | \partial 4 <4>4 | % H
}
bassesD = {
  \key f \major
  \repeat unfold 2 { \bassesPushFff \bassesPushCff }
  \bassesPullGcc \bassesPullCcc
  \bassesPullGcc c,4 d, e, |
  f,4\staccato a,\staccato c,\staccato |
  % f,4 r2 |
  \partial 4 f,4 |
}

basses = {
  \bassesU
  \bassesA
  \bassesC
  \bassesD
}
basses_figures = \figuremode {
  \basses_figuresU
  \basses_figuresA
  \basses_figuresC
  \basses_figuresD
}

buttonsII-X = \lyricmode {
  \repeat unfold 6 { \m }
}
buttonsI-X = \lyricmode {
  \M "1" "F3" \M "2" "B2" \M "4" "C4" \M "3" "F4" \M "4" "F5" \M "5" "F6"
}
buttonsII-Ua = \lyricmode {
  \M "3" "F5" \M "2" "B4" \M "4" "F6" -           \M "3" "B5" \M "4" "F6"
  \M "5" "F7" \M "3" "F5" \M "3" "F6" \M "5" "C7" -           \M "3" "F6" \m
  \M "3" "F6" \buttonsII-X
  \M "3" "B6" -           \M "5" "C7"
}
buttonsI-Ua = \lyricmode {
  \M "1" "F4" \M "4" "C5" \M "3" "F5" -           \M "2" "B4" \M "3" "F5"
  \M "4" "F6" \M "2" "F4" \M "1" "C5" \M "2" "F5" -           \M "1" "C5" \M "4" "C6"
  \M "2" "F5" \buttonsI-X
  \M "2" "B5" -           \M "1" "C6"
}
buttonsI-UaII = \lyricmode {
  \M "1" "F4" \M "4" "C5" \M "3" "F5" -           \M "2" "B4" \M "3" "F5"
  \M "4" "F6" \M "2" "F4" \M "1" "C5" \M "2" "F5" -           \M "1" "C5" \M "4" "C6"
  \M "2" "F5" \buttonsII-X
  \M "2" "B5" -           \M "1" "C6"
}
buttonsII-U = \lyricmode {
  \buttonsII-Ua
  \M "3" "B5" - \M "2" "F5"
  \M "3" "F6" - \m          \M "3" "F5" - \M "4" "C5" \M "3" "F5" \M "3" "F6" \M "5" "C7" \M "2" "F5"
  \M "3" "F5" \M "4" "F6" - -
}
buttonsI-U = \lyricmode {
  \buttonsI-Ua
  \M "2" "B4" - \M "1" "F4"
  \M "1" "C5" - \M "4" "C6" \M "2" "F4" - \M "1" "C4" \M "2" "F4" \M "1" "C5" \M "2" "F5" \M "1" "F3"
  \M "2" "F4" \M "1" "F3" - -
}
buttonsII-Ab = \lyricmode {
  \buttonsII-Ua
  \M "3" "B5" - \M "2" "F5"
  \M "3" "F6" - \m          \M "3" "F5" - \M "4" "C5" \M "3" "F5" \M "3" "F6" \M "5" "C7" \M "2" "F5"
}
buttonsI-Ab = \lyricmode {
  \buttonsI-UaII
  \M "2" "B4" - \M "1" "F4"
  \M "1" "C5" - \M "4" "C6" \M "2" "F4" - \M "1" "C4" \M "2" "F4" \M "1" "C5" \M "2" "F5" \M "1" "F3"
}
buttonsII-A = \lyricmode {
  \buttonsII-Ua
  \M "3" "B5"   \M "2" "F5"
  \M "3" "F6" - \m          \M "3" "F5" \M "4" "F7" - \M "5" "C7" \M "3" "F6" - \M "3" "F5"
  \M "3" "F5" \M "4" "B5" - \M "4" "F6"
  \buttonsII-Ab
  \M "3" "F5" \M "4" "C5" \M "3" "F5"
}
buttonsI-A = \lyricmode {
  \buttonsI-UaII
  \M "2" "B4"   \M "1" "F4"
  \M "1" "C5" - \M "4" "C6" \M "2" "F4" \M "3" "F6" - \M "2" "F5" \M "1" "C5" - \M "2" "F4"
  \M "2" "F4" \M "3" "B4" - \M "3" "F5"
  \buttonsI-Ab
  \M "2" "F4" \M "1" "C4" \M "2" "F4"
}
buttonsII-B = \lyricmode {
  \M "3" "F5" \M "5" "C7" - \M "3" "F6" \M "3" "F4" \m          \M "3" "F4"
  \M "4" "F5" \M "3" "B5" - \M "4" "F6" \M "3" "F5" \M "4" "F6"
  \M "4" "C6" \M "3" "F6" \M "5" "C7"
  \M "5" "C7" \M "3" "C5" \m
  \m          \M "4" "F7" \M "5" "C7" \M "4" "F6" \M "4" "F6" - -
  \M "3" "F5" \M "4" "B6" - - -
}
buttonsI-B = \lyricmode {
  \M "2" "F4" \M "2" "F5" - \M "1" "C5" \M "2" "F3" \M "1" "B1" \M "2" "F3"
  \M "3" "F4" \M "2" "B4" - \M "3" "F5" \M "2" "F4" \M "3" "F5"
  \M "2" "F4" \M "1" "C5" \M "4" "C6"
  \M "4" "C6" \M "1" "C4" \M "3" "C5"
  \M "2" "F4" \M "2" "F4" \M "1" "C4" \M "2" "F3" \M "1" "F2" - -
  \M "2" "F4" \M "1" "B3" - - -
}
buttonsII-C = \lyricmode {
  \M "3" "B5" \M "2" "Es" \M "4" "B6" - \M "5" "C8" \M "3" "B6"
  \M "4" "B7" \M "2" "B5" \M "3" "B6" \M "4" "F8" - \M "3" "B6" \m
  \M "3" "B6"
  \repeat unfold 6 { \m }
  \M "3" "B7" -           \M "4" "F8" \M "5" "C8" -           \M "2" "B5"
  \M "3" "B6" -           \m          \M "2" "B5" \M "4" "B7" -           \M "5" "F8"
  \M "2" "B6" -           \M "3" "B5" \M "3" "B5" \M "5" "C8" -           \M "3" "B6"
  % 2
  \M "2" "B5" \M "5" "C7" \M "2" "B5" \M "3" "B6" \M "4" "F8" \M "2" "B5"
  \M "3" "B5"
  \M "3" "F5"
}
buttonsI-C = \lyricmode {
  \M "2" "B4" \M "4" "F6" \M "3" "B5" - \M "2" "Es" \M "2" "B5"
  \M "3" "B6" \M "1" "B4" \M "5" "C7" \M "2" "B5" - \M "5" "C7" \M "4" "F7"
  \M "2" "B5"
  \M "1" "B3" \M "4" "C5" \M "3" "F5" \M "2" "B4" \M "3" "B5" \M "4" "B6"
  \M "5" "C8" -           \M "3" "F7" \M "2" "Es" -           \M "1" "B4"
  \M "5" "C7" -           \M "4" "F7" \M "1" "B4" \M "3" "B6" -           \M "2" "B5"
  \M "5" "C7" -           \M "2" "B4" \M "2" "B4" \M "2" "Es" -           \M "2" "B5"
  % 2
  \M "1" "B4" \M "4" "C6" \M "1" "B4" \M "3" "B6" \M "4" "F8" \M "2" "B5"
  \M "2" "B4"
  \M "1" "F3"
}
buttonsII-D = \lyricmode {
  \M "3" "F5"
  \buttonsII-X
  \M "3" "B6" - \M "5" "C7" \M "3" "B5" - \M "2" "F5"
  \M "3" "F6" - \m          \M "3" "F5" - \M "4" "C5" \M "3" "F5" \M "3" "F6" \M "5" "C7" \M "2" "F5"
  \M "3" "F5"   \M "3" "F5"
}
buttonsI-D = \lyricmode {
  \M "2" "F4"
  %\buttonsI-X
  \buttonsII-X
  \M "2" "B5" - \M "1" "C6" \M "2" "B4" - \M "1" "F4"
  \M "1" "C5" - \M "4" "C6" \M "2" "F4" - \M "1" "C4" \M "2" "F4" \M "1" "C5" \M "2" "F5" \M "1" "F3"
  \M "2" "F4"   \M "2" "F4"
}

buttonsIII = \lyricmode {
  \repeat unfold 196 { \m }
  \M "4" "F6"
  \repeat unfold 24 { \m }
  \M "4" "F6"
}

buttonsII = \lyricmode {
  \buttonsII-U
  \buttonsII-A
  \buttonsII-B
  \buttonsII-C
  \buttonsII-D
}

buttonsI = \lyricmode {
  \buttonsI-U
  \buttonsI-A
  \buttonsI-B
  \buttonsI-C
  \buttonsI-D
}

\score {
\new PianoStaff <<
    \new Lyrics = "buttonsIII" \with { \override VerticalAxisGroup.staff-affinity = #DOWN }
    \new Lyrics = "buttonsII"  \with { \override VerticalAxisGroup.staff-affinity = #DOWN }
    \new Lyrics = "buttonsI"   \with { \override VerticalAxisGroup.staff-affinity = #DOWN }
    \new Voice = "melody" {
      \melody
    }

    \context Lyrics = "buttonsIII" { \lyricsto "melody" { \buttonsIII } }
    \context Lyrics = "buttonsII"  { \lyricsto "melody" { \buttonsII  } }
    \context Lyrics = "buttonsI"   { \lyricsto "melody" { \buttonsI   } }

    \context Lyrics = "lyricsI" {
      \lyricsto "melody" {
        \repeat unfold 40 { \m }
        \set stanza = #"1. "
        Bi -- la sva mla -- da o -- ba,
        ko pre -- ko mo -- sta sva šla, \repeat unfold 6 { \m }
        maj je deh -- tel in mak je cve -- tel,
        jaz pa od sre -- če bi ves svet ob -- jel.

        Se še spo -- mi -- njaš na -- zaj,
        da -- leč je že ti -- sti maj,  \repeat unfold 5 { \m }
        so le -- ta mi -- nu -- la,
        vsa si -- va sva že,
        jaz pa spo -- mi -- njam se še.

        Ko v mra -- ku zrem v_vo -- do,
        vi -- dim le -- ta ti te -- ko,
        mla -- dost je za na -- ma,
        že bli -- ža se noč.

        \m \m \m
        po.

        \repeat unfold 52 { \m }
        še.
        \repeat unfold 6 { \m }

        zdaj pa drh -- te -- če mi sti -- skaš ro -- ko,
        ven -- dar je_o -- be -- ma le -- po.
      }
    }

    \context Lyrics = "lyricsII" {
      \lyricsto "melody" {
        \repeat unfold 79 { \m }
        %\set stanza = #"2. "
        Bi -- la sva mla -- da o -- ba,
        ko pre -- ko mo -- sta sva šla, \repeat unfold 6 { \m }
        zdaj pa drh -- te -- če mi sti -- skaš ro -- ko,
        ven -- dar je_o -- be -- ma le- %\repeat unfold 29 { \m } po.
      }
    }

    \new AccordionPushPull \with {
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = 1
    } {
      \melody
    }
%     \new RhythmicStaff {
%       \repeat unfold 96 { c4 c c | }
%     }
    \new Staff = "staff" <<
      \new Voice = "bass" {
        \clef bass
        \global
        \basses
      }
    >>
%     \context Lyrics = "buttonsII"  { \lyricsto "melody" { \buttonsII  } }
%     \context Lyrics = "buttonsI"   { \lyricsto "melody" { \buttonsI   } }
%     \new RhythmicStaff {
%       \basses_rhythm
%     }
   \new FiguredBass {
     \basses_figures
   }
  >>
  \layout {
    ragged-last = ##t
    #(layout-set-staff-size 16.3)
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
%           \basses
      }
    >>
  }
  \midi {
    \tempo 4 = 150
  }
}
