\version "2.19.30"
\language "deutsch"

\include "accordion.ily"
\include "style.ily"

\header{
  title    = "Trzinka"
  composer = "Slovenska ljudska"
}

global = {
  \time 2/4
  \key f \major
}

melody = \fixed c' {
  \global
  \startPush
  \partial 4 <a c'>4       | % Tr'-
  <f a>8 <f a>4 <a c'>8    | % zinka, Tr'-
  <f a>8 <f a>4 <a c'>8    | % zinka, Tr'-
  <f a>8 <f a> <e g> <f a> | % zinka zgodaj
  \stopPush
  <a c'>4 <g b>8 <a c'>    | % vstala, Tr'-
  <g b>8 <g b>4 < a c'>8   | % zinka, Tr'-
  <g b>8 <g b>4 < a c'>8   | % zinka, Tr'-
  <g b>8 <g b> <f a> <g b> | % zinka zgodaj
  \startPush
  <b d'>4 <a c'>8 <a c'>   | % vstala, Tr'-
  <f a>8 <f a>4 <a c'>8    | % zinka, Tr'-
  <f a>8 <f a>4 <a c'>8    | % zinka, Tr'-
  <f a>8 <f a> <e g> <f a> | % zinka zgodaj
  \stopPush
  <a c'>4 <g b>            | % vstala
  <b d'>4. <a c'>8         | % svoj'ga
  <c' e'>4. <b d'>8        | % ljub'ga
  <a c'>4 <g b>            | % čaka-
  \startPush
  \partial 4 <f a>8 r8     | % la
  \stopPush
  \bar "|."
}

basses = {
  \partial 4 r4
  f,8 <f a c'> c, <f a c'>    |
  f, <f a c'> c, <f a c'>     |
  f, <f a c'> c, <f a c'>     |
  g, <e g c'> c, <e g c'>     |
  g, <e g c'> c, <e g c'>     |
  g, <e g c'> c, <e g c'>     |
  g, <e g c'> c, <e g c'>     |
  f, <f a c'> c, <f a c'>     |
  f, <f a c'> c, <f a c'>     |
  f, <f a c'> c, <f a c'>     |
  f, <f a c'> c, <f a c'>     |
  g, <e g c'> c, <e g c'>     |
  g, <e g c'> c, <e g c'>     |
  g, <e g c'> c, <e g c'>     |
  g, <e g c'> c, <e g c'>     |
  \partial 4 <f, f a c'>8 r8 |
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
      \global
      \melody
    }
    \context Lyrics = "lyricsI" {
      \lyricsto "melody" {
        \set stanza = #"1. "
        Tr -- zin -- ka, Tr -- zin -- ka, Tr -- zin -- ka zgo -- daj vsta -- la,
        Tr -- zin -- ka, Tr -- zin -- ka, Tr -- zin -- ka zgo -- daj vsta -- la,
        Tr -- zin -- ka, Tr -- zin -- ka, Tr -- zin -- ka zgo -- daj vsta -- la,
        svoj’ -- ga ljub -- čka ča -- ka -- la.
      }
    }
    \context Lyrics = "buttonsII" {
      \lyricsto "melody" {
        \M "4" "B6"
        \M "3" "B5" - \M "4" "B6"
        \M "3" "B5" - \M "4" "B6"
        \M "3" "B5" - \M "4" "A5" \M "3" "B5"
        \M "2" "C4" \M "3" "B5" \M "2" "C4"
        \M "3" "B5" - \M "2" "C4"
        \M "3" "B5" - \M "2" "C4"
        \M "3" "B5" - \M "4" "A5" \M "3" "B5"
        \M "3" "C5" \M "4" "B6" -
        \M "3" "B5" - \M "4" "B6"
        \M "3" "B5" - \M "4" "B6"
        \M "3" "B5" - \M "4" "A5" \M "3" "B5"
        \M "2" "C4" \M "3" "B5"
        \M "5" "A7" \M "2" "C4"
        \M "5" "B7" \M "5" "A7"
        \M "2" "C4" \M "3" "B5"
        -
      }
    }
    \context Lyrics = "buttonsI" {
      \lyricsto "melody" {
        \M "3" "B5"
        \M "2" "B4" - \M "3" "B5"
        \M "2" "B4" - \M "3" "B5"
        \M "2" "B4" - \M "3" "A4" \M "2" "B4"
        \M "1" "C3" \M "2" "B4" \M "1" "C3"
        \M "2" "B4" - \M "1" "C3"
        \M "2" "B4" - \M "1" "C3"
        \M "2" "B4" - \M "3" "A4" \M "2" "B4"
        \M "2" "C4" \M "3" "B5" -
        \M "2" "B4" - \M "3" "B5"
        \M "2" "B4" - \M "3" "B5"
        \M "2" "B4" - \M "3" "A4" \M "2" "B4"
        \M "1" "C3" \M "2" "B4"
        \M "3" "B5" \M "1" "C3"
        \M "4" "B6" \M "3" "B5"
        \M "1" "C3" \M "2" "B4"
        -
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
%     \partial 4 s4 |
%     \repeat unfold 15 { c8 c c c | }
%     \partial 4 c8 r8 |
%   }
  \new FiguredBass {
    \figuremode {
      \startPush
      \partial 4 s4 |
      <4>8 <3> <2> <3> |
      <4> <3> <2> <3> |
      <4> <3> <2> <3> |
      \stopPush
      <2> <3> <4> <3> |
      <2> <3> <4> <3> |
      <2> <3> <4> <3> |
      <2> <3> <4> <3> |
      \startPush
      <4> <3> <2> <3> |
      <4> <3> <2> <3> |
      <4> <3> <2> <3> |
      <4> <3> <2> <3> |
      \stopPush
      <2> <3> <4> <3> |
      <2> <3> <4> <3> |
      <2> <3> <4> <3> |
      <2> <3> <4> <3> |
      \startPush
      \partial 4 <4 3> r8 |
      \stopPush
    }
  }
>>

  \layout {
    ragged-last = ##f
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

\markup {
  \column {
    \line{
      { \bold 2. }
      \column {
        "Na okno, na okno, na okno se je vsedla,"
        "svoj’ga ljubčka čakala."
      }
    }
    "\n" "\n"
    \line{
      { \bold 3. }
      \column {
        "Po ganku, po ganku, po ganku je hodila,"
        "svoj’ga ljubčka čakala."
      }
    }
    "\n" "\n"
    \line{
      { \bold 4. }
      \column {
        "Oj, mamca, oj, mamca, oj, le zaprite vrata,"
        "moj’ga ljubčka več ne bo."
      }
    }
    "\n" "\n"
    \line{
      { \bold 5. }
      \column {
        "Tako m’je, tako m’je, tako m’je snoč’ govoril,"
        "kakor bi slovo jemal."
      }
    }
    "\n" "\n"
    \line{
      { \bold 6. }
      \column {
        "Še en pušeljc, še en pušeljc, še en pušeljc bom nar’dila"
        "za to rajžo žalostno."
      }
    }
    "\n" "\n"
    \line{
      { \bold 7. }
      \column {
        "Na špampet, na špampet, na špampet se je vsedla"
        "in se milo jokala."
      }
    }
    "\n" "\n"
    \line{
      { \bold 8. }
      \column {
        "Na raufn’k, na raufn’k, na raufn’k se je vsedla,"
        "svoj’ga ljubčka čakala."
      }
    }
    "\n" "\n"
    \line{
      { \bold 9. }
      \column {
        "Vso črno, vso črno, vso črno r’t je ’mela,"
        "svoj’ga ljubčka čakala."
      }
    }
  } \column {
    \line{
      { \bold 10. }
      \column {
        "Na kaktus, na kaktus, na kaktus se je vsedla,"
        "svoj’ga ljubčka čakala."
      }
    }
    "\n" "\n"
    \line{
      { \bold 11. }
      \column {
        "Bodice, bodice, bodice v r’t je ’mela,"
        "svoj’ga ljubčka čakala."
      }
    }
    "\n" "\n"
    \line{
      { \bold 12. }
      \column {
        "Na torto, na torto, na torto se je vsedla,"
        "svoj’ga ljubčka čakala."
      }
    }
    "\n" "\n"
    \line{
      { \bold 13. }
      \column {
        "Vso sladko, vso sladko, vso sladko r’t je mela,"
        "svoj’ga ljubčka čakala."
      }
    }
    "\n" "\n"
    \line{
      { \bold 14. }
      \column {
        "Na žajfo, na žajfo, na žajfo se je vsedla,"
        "svoj’ga ljubčka čakala."
      }
    }
    "\n" "\n"
    \line{
      { \bold 15. }
      \column {
        "Vso spolzko, vso spolzko, vso spolzko r’t je ’mela"
        "svoj’ga ljubčka čakala."
      }
    }
    "\n" "\n"
    \line{
      { \bold 16. }
      \column {
        "Po hribih, po hribih, po hribih je hodila,"
        "svoj’ga ljubčka iskat šla."
      }
    }
    "\n" "\n"
    \line{
      { \bold 17. }
      \column {
        "Za skalo, za skalo, za skalo ga je našla"
        "in ga srčno kušn’la."
      }
    }
  }
}
