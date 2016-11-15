\version "2.19.30"
\language "deutsch"

\include "accordion.ily"
\include "style.ily"

\header{
  title    = "Nisem pozabil"
  poet     = "U-A1-A2-B1-B2-A3-B1-B4"
  composer = "Mladi Dolenjci"
  arranger = "priredba: Matic Štavar"
}

global = {
  \time 3/4
}

melodyU = \fixed c' {
  \key f \major
  \startPush
  <b d' b'>4 <b d' b'> <a c' a'> |
  <b d' b'>2.~ |
  <b d' b'>2. |
  \stopPush
  r4 <b g'> <c' a'> |
  <d' b'>4 <c' a'> <b g'> |
  \startPush
  <a c' f'>2.~ |
  <a f'>2.~ |
  <a f'>4 r r |
  \stopPush
  <e b c'>4 r r |
}

melodyAa = \fixed c' {
\repeat unfold 2 { <a c'>4 <a c'> h | }
  <a c'>2. |
  <f a>4 <g b> <a c'> |
  <g b>2. |
  <e g>2.~ |
  <e g>2.~ |
  <e g>2. |  
}

melodyA = \fixed c' {
  %\key f \major
  %\markDefaultSegno
  \markDefault
  \bar "S"
  \repeat volta 2 {
    \melodyAa
    \startPush
    \repeat unfold 2 { <b d'>4 <b d'> <a c'> | }
    \stopPush
    <b d'>2.
    <g b>4 <a c'> <b d'> |
    \startPush
    <a c'>2.~ |
    <a c'>2.~ |
    <a c'>2.~ |
    <a c'>2. |
    \stopPush
    \melodyAa
    \startPush
    <b d' b'>4 <b d' b'> <a c' a'> |
    <b d' b'>2. |
    \stopPush
    r4 <b g'> <c' a'> |
    <d' b'>4 <c' a'> <b g'> |
  } \alternative {
    {
      \startPush
      <a c' f'>2.~ |
      <a c' f'>2.~ |
      <a c' f'>4 r r |
      \stopPush
      <e b c'>4 r r
    }{
      \set Score.repeatCommands = #'((volta "2, 3") end-repeat)
      \startPush
      <a c' f'>2.~ |
      <a c' f'>2.~ |
      <a c' f'>2. |
      \stopPush
      <f a es' f'>2.
    }
  }
}

melodyB = \fixed c' {
  \key b \major
  \markDefault
  \repeat volta 3 {
    \startPush
    <d' f'>2. |
    <d' f'>2 <c' es'>4 |
    <b d'>2. |
    <b d'>4 <c' es'> <d' f'> |
    \stopPush
    \repeat unfold 2 { <es' g'>4 <es' g'> <d' f'> | }
    <es' g'>2.~ |
    <es' g'>2 <g es'>4 |
    <a f'>2. |
    <a f'>2 <g es'>4 |
    <es c'>2 <es c'>4 |
    <es c'>4 <es c'> <f d'> |
    <g es'>2. |
    <f d'>2 <es c'>4 |
    \startPush
    <f d'>2.~ |
    <f d'>2 f4 |
    <d' f'>2. |
    <d' f'>2 <c' es'>4 |
    <b d'>2. |
    <b d'>4 <c' es'> <d' f'> |
    \stopPush
    \repeat unfold 2 { <es' g'>4 <es' g'> <d' f'> | }
    <es' g'>2.~ |
    <es' g'>2 <g es'>4 |
    <a f'>2. |
    <a f'>2 <g es'>4 |
    <es c'>2.~ |
    <es c'>4 <es c'> <f d'> |
    <g es'>2. |
    <f d'>2 <es c'>4 |
  } \alternative {
    {
      \set Score.repeatCommands = #'((volta "1, 3"))
      \startPush
      <d b>2.~ |
      <d b>4 <f f'>8 <f f'> <f f'>4 |
    }{
      <d b>2.~ |
      <d b>4 \stopPush <c c'>8 <c c'> <c c'>4 |
      \once \override Score.RehearsalMark.direction = #DOWN
      \mark \markup { \small { \center-column { \line { "D.S." } \line { "al Fine" } } } }
    }{
      \set Score.repeatCommands = #'((volta "4") end-repeat)
      \startPush
      <d b>2.~ |
      <d b>2 <d' f'>4 |
    }
  }
  <f' a'>2. |
  <f' a'>2 <es' g'>4 |
  <c' es'>2.~ |
  <c' es'>4 <c' es'> <d' f'> |
  <es' g'>2. |
  <d' f'>2 <c' es'>4 |
  \startPush
  <b d'>4 r8 <b d' f'> <b d' f'>4 |
  <b d' f'>4 r r |
  \stopPush
}

melody = {
  \global
  \melodyU
  \melodyA
  \melodyB
}

bassesPushFff = { f,4 <f a c'> <f a c'> | } % 4 3 3
bassesPushCff = { c,4 <f a c'> <f a c'> | } % 2 3 3

bassesPullGcc = { g,4 <f a c'> <f a c'> | } % 2 3 3
bassesPullCcc = { c,4 <f a c'> <f a c'> | } % 4 3 3

bassesPushBbb = { b,,4 <d f b> <d f b> | } % 6 5 5
bassesPushFbb = { f,4  <d f b> <d f b> | } % 4 5 5

bassesPullCff = { c,4 <f a c'> <f a c'> | } % 4 5 5
bassesPullFff = { f,4 <f a c'> <f a c'> | } % 6 5 5

bassesPullEseses = { es,4 <es g b> <es g b> | } % 11 10 10

bassesU = {
  \key f \major
  r2. |
  \bassesPushBbb \bassesPushFbb
  \bassesPullCcc | c,4 d, e, |
  \bassesPushFff | f,4 a, c, | f,4 r r |
  <c, f a c'>4 r r |
}
basses_figuresU = \figuremode {
  r2. |
  <6>4 <5> <5> | <4>4 <5> <5> |
  <4>4 <3> <3> | <4>4 <9> <7> |
  <4>4 <3> <3> | <4>4 <9> <2> | <4>4 r r |
  <3 4>4 r r |
}

bassesA = {
  %\key f \major
  \repeat volta 2 {
    \repeat unfold 2 { \bassesPullFff \bassesPullCff }
    \repeat unfold 2 { \bassesPullGcc \bassesPullCcc }
    \repeat unfold 1 { \bassesPushBbb \bassesPushFbb }
    \repeat unfold 1 { \bassesPullCcc \bassesPullGcc }
    \repeat unfold 2 { \bassesPushFff \bassesPushCff }
    \repeat unfold 2 { \bassesPullFff \bassesPullCff }
    \repeat unfold 2 { \bassesPullGcc \bassesPullCcc }
    \bassesPushBbb \bassesPushFbb
    \bassesPullCcc c,4 d, e, |
  } \alternative {
    {
      \bassesPushFff | f,4 a, c, | f,4 r r |
      <c, f a c'>4 r r |
    }{
      \bassesPushFff | f,4 a, c, | \bassesPushFff |
      <f, f a c'>2. |
    }
  }
}
basses_figuresA = \figuremode {
  \repeat volta 2 {
    \repeat unfold 2 { <6>4 <5> <5> | <4>4 <5> <5> | } % V
    \repeat unfold 2 { <2>4 <3> <3> | <4>4 <3> <3> | } % V
    \repeat unfold 1 { <6>4 <5> <5> | <4>4 <5> <5> | } % H
    \repeat unfold 1 { <4>4 <3> <3> | <2>4 <3> <3> | } % V
    \repeat unfold 2 { <4>4 <3> <3> | <2>4 <3> <3> | } % H
    \repeat unfold 2 { <6>4 <5> <5> | <4>4 <5> <5> | } % V
    \repeat unfold 2 { <2>4 <3> <3> | <4>4 <3> <3> | } % V
    <6>4 <5> <5> | <4>4 <5> <5> | % H
    <4>4 <3> <3> | <4>4 <9> <7> | % V
  } \alternative {
    {
      <4>4 <3> <3> | <4>4 <9> <2> | <4>4 r r | % H
      <3 4>4 r r | % V
    }{
      <4>4 <3> <3> | <4>4 <9> <2> | <4>4 <3> <3> | % H
      <5 6>4 r r | % V
    }
  }
}
bassesBa = {
  \repeat unfold 2 { \bassesPushBbb \bassesPushFbb }
  \repeat unfold 4 { \bassesPullEseses }
  \repeat unfold 2 { \bassesPullCff \bassesPullFff }
  \repeat unfold 1 { \bassesPullEseses }
  \repeat unfold 1 { \bassesPullFff }
}
bassesB = {
  \key b \major
  \repeat volta 3 {
    \bassesBa
    \bassesPushBbb \bassesPushFbb
    \bassesBa
  } \alternative {
    {
      b,,4 d, f, | b,,4 r r |
    }{
      b,,4 d, f, | b,,4 r r |
    }{
      \bassesPushBbb \bassesPushFbb
      \repeat unfold 2 { \bassesPullCff \bassesPullFff }
      \bassesPullEseses \bassesPullFff
      b,,4 d, f, | b,,4 r r |
    }
  }
}
basses_figuresBa = \figuremode {
  \repeat unfold 2 { <6>4 <5> <5> | <4>4 <5> <5> | } % H
  \repeat unfold 4 { <11>4 <10> <10> | } % V
  \repeat unfold 2 { <4>4 <5> <5> | <6>4 <5> <5> | } % V
  \repeat unfold 1 { <11>4 <10> <10> | } % V
  \repeat unfold 1 { <6>4 <5> <5> | } % V
}
basses_figuresB = \figuremode {
  \repeat volta 3 {
    \basses_figuresBa
    <6>4 <5> <5> | <4>4 <5> <5> | % H
    \basses_figuresBa
  } \alternative {
    {
      <6>4 <11> <4> | <6>4 r r | % H
    }{
      <6>4 <11> <4> | <6>4 r r | % H
    }{
      <6>4 <5> <5> | <4>4 <5> <5> | % H
      \repeat unfold 2 { <4>4 <5> <5> | <6>4 <5> <5> | } % V
      <11>4 <10> <10> | <6>4 <5> <5> | % V
      <6>4 <11> <4> | <6>4 r r | % H
    }
  }
}

basses = {
  \bassesU
  \bassesA
  \bassesB
}
basses_figures = {
  \basses_figuresU
  \basses_figuresA
  \basses_figuresB
}

buttonsIII-U = \lyricmode {
  \M "4" "B7" - \M "4" "F8" \M "4" "B7"
  \repeat unfold 5 { \m }
  \M "4" "F7" \M "3" "F6"
}
buttonsII-U = \lyricmode {
  \M "2" "B5" -           \M "2" "F6" \M "2" "B5"
  \M "5" "F8" \M "4" "B7" \M "5" "F9" \M "4" "B7" \M "5" "F8" \M "3" "F6" \M "2" "F5"
}
buttonsI-U = \lyricmode {
  \M "1" "B4" -           \M "1" "F5" \M "1" "B4"
  \M "1" "F5" \M "2" "B4" \M "1" "C7" \M "2" "B4" \M "1" "F5" \M "2" "F5" \M "1" "F3"
}
buttonsII-Aa = \lyricmode {
  \repeat unfold 2 { \M "3" "F6" - \m } \M "3" "F6"
  \M "4" "C5" \M "3" "F5" \M "4" "F6" \M "3" "F5" \M "2" "F4"
}
buttonsI-Aa = \lyricmode {
  \repeat unfold 2 { \M "1" "C5" - \M "4" "C6" } \M "1" "C5"
  \M "1" "C4" \M "2" "F4" \M "1" "C5" \M "2" "F4" \M "1" "F3"
}
buttonsIII-A = \lyricmode {
  \repeat unfold 35 { \m }
  \M "4" "B7" - \M "4" "F8" \M "4" "B7"
  \repeat unfold 5 { \m }
  \M "4" "F7" \M "3" "F6"
  \M "4" "F7" \M "4" "F6"
}
buttonsII-A = \lyricmode {
  \buttonsII-Aa
  \repeat unfold 2 { \M "3" "B5" - \M "4" "F6" } \M "5" "C7"
  \M "3" "F5" \M "4" "F6" \M "5" "C7" \M "4" "F6"
  \buttonsII-Aa
  \M "2" "B5" - \M "2" "F6" \M "2" "B5"
  \M "5" "F8" \M "4" "B7" \M "5" "F9" \M "4" "B7" \M "5" "F8"
  \M "3" "F6" \M "2" "F5"
  \M "3" "F6" \M "2" "B3"
}
buttonsI-A = \lyricmode {
  \buttonsI-Aa
  \repeat unfold 2 { \M "2" "B4" - \M "1" "F5" } \M "3" "F5"
  \M "2" "F4" \M "1" "C5" \M "3" "F5" \M "3" "F5"
  \buttonsI-Aa
  \M "1" "B4" - \M "1" "F5" \M "1" "B4"
  \M "1" "F5" \M "2" "B4" \M "1" "C7" \M "2" "B4" \M "1" "F5"
  \M "2" "F5" \M "1" "F3"
  \M "2" "F5" \M "1" "B2"
}
buttonsII-Ba = \lyricmode {
  \M "4" "B6" - \M "2" "Es" \M "3" "B5" - \M "2" "Es" \M "4" "B6"
  \repeat unfold 2 { \M "4" "F8" - \M "3" "B6" } \M "4" "F8"
  \M "3" "B5" \M "4" "B6" - \M "3" "B5"
  \M "2" "B4" -
}
buttonsI-Ba = \lyricmode {
  \M "3" "B5" - \M "4" "F6" \M "2" "B4" - \M "4" "F6" \M "3" "B5"
  \repeat unfold 2 { \M "2" "B5" - \M "5" "C7" } \M "2" "B5"
  \M "1" "F4" \M "2" "B3" - \M "1" "F4"
  \M "1" "B1" -
}
buttonsIII-B = \lyricmode {
  \repeat unfold 72 { \m }
  \M "4" "B6" - -
}
buttonsII-B = \lyricmode {
  \buttonsII-Ba
  - - \M "5" "C7" \M "3" "B5" \M "5" "C7" \M "2" "B4"
  \M "3" "B5" \m
  \buttonsII-Ba
  \M "5" "C7" \M "3" "B5" \M "5" "C7" \M "2" "B4"
  \M "2" "B4" \M "4" "B6" - -
  \M "2" "B4" \M "4" "F6" - -
  \M "2" "B4" \M "3" "B6"
  \M "4" "B7" - \M "4" "F8" \M "3" "B5" - \M "2" "B6" \M "4" "F8" \M "2" "B6" \M "3" "B5"
  \M "3" "B5" - - -
}
buttonsI-B = \lyricmode {
  \buttonsI-Ba
  - - \M "1" "C4" \M "2" "F4" \M "1" "C4" \M "1" "B1"
  \M "1" "B3" \M "1" "B3"
  \buttonsI-Ba
  \M "1" "C4" \M "2" "F4" \M "1" "C4" \M "1" "B1"
  \M "1" "B2" \M "1" "B3" - -
  \M "1" "B2" \M "1" "F2" - -
  \M "1" "B2" \M "2" "B5"
  \M "3" "B6" - \M "2" "B5" \M "2" "B4" - \M "4" "C7" \M "2" "B5" \M "4" "C7" \M "2" "B4"
  \M "2" "B4" - - -
}

buttonsIII = {
  \buttonsIII-U
  \buttonsIII-A
  \buttonsIII-B
}
buttonsII = {
  \buttonsII-U
  \buttonsII-A
  \buttonsII-B
}
buttonsI = {
  \buttonsI-U
  \buttonsI-A
  \buttonsI-B
}

\score {
\new PianoStaff <<
    \new Lyrics = "buttonsIII" \with { \override VerticalAxisGroup.staff-affinity = #DOWN }
    \new Lyrics = "buttonsII"  \with { \override VerticalAxisGroup.staff-affinity = #DOWN }
    \new Lyrics = "buttonsI"   \with { \override VerticalAxisGroup.staff-affinity = #DOWN }
    \new Voice  = "melody"           { \melody }

    \context Lyrics = "lyricsI" {
      \lyricsto "melody" {
        \repeat unfold 11 { \m }
        \set stanza = #"1. "
        Spet bom no -- coj za -- i -- gral sva -- tom na va -- si,
        vso dol -- go noč z_nji -- mi bom vri -- skal in pel.
        Ko -- nec je sanj, skri -- vam jih v_pre -- pol -- ni ča -- ši,
        ko -- nec je dni, ko sem bil še ve -- sel.

        \m ca. \m

        Ni -- sem po -- za -- bil, _ _ ni -- sem po -- za -- bil de -- kle.
        No -- coj bom i -- gral, če -- tu -- di mi po -- či sr -- ce.
        No -- coj bom s_har -- moni -- ko _ _ zad -- njič za te -- be za -- pel,
        a z_ju -- tri -- šnjim dnem ne -- kam da -- leč od -- šel.

        \repeat unfold 7 { \m }
        šel, a z_ju -- tri -- šnjim dnem ne -- kam da -- leč od -- šel.
      }
    }

    \context Lyrics = "lyricsII" {
      \lyricsto "melody" {
        \repeat unfold 11 { \m }
        \set stanza = #"2. "
        Za paj -- čo -- lan bo no -- coj mla -- da ne -- ve -- sta,
        bi -- se -- re svo -- jih sol -- za mi skri -- va -- la.
        Ni -- sem po -- za -- bil o -- bljub, da mi bo zve -- sta,
        ve -- dno bom nosil \m jih sre -- di sr- \m \m %ca.

        min.
      }
    }
    \context Lyrics = "lyricsIII" {
      \lyricsto "melody" {
        \repeat unfold 11 { \m }
        \set stanza = #"3. "
        Zi -- dal sem grad nad o -- blak v_mo -- dre vi -- ši -- ne,
        vi -- del pa ni -- sem glo -- bin tem -- nih str -- min.
        Zdaj vem, ka -- ko sre -- ča se hi -- tro raz -- bli -- ne,
        in da o -- stane \m sa -- mo še spo- %-- min.
      }
    }

    \context Lyrics = "buttonsIII" { \lyricsto "melody" { \buttonsIII } }
    \context Lyrics = "buttonsII"  { \lyricsto "melody" { \buttonsII  } }
    \context Lyrics = "buttonsI"   { \lyricsto "melody" { \buttonsI   } }

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
  \new FiguredBass {
    \figuremode {
      \basses_figures
    }
  }
>>
  \layout {
    #(layout-set-staff-size 16.5)
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
    \tempo 4 = 160
  }
}
