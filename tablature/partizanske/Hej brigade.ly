\version "2.19.30"
\language "deutsch"

\include "accordion.ily"
\include "style.ily"

\header{
  title    = "Hej brigade"
  poet     = "Besedilo: Matej Bor"
  composer = "Glasba: Franc Šturm (Radoslav Hrovatin)"
  tagline  = "https://github.com/mojca/frajtonarca"
  % tagline = "zapisala Mojca Miklavec s programom LilyPond (https://github.com/mojca/frajtonarca)"
}

global = {
  \time 2/4
  \key f \major
}

% https://sl.wikipedia.org/wiki/Hej_brigade
% http://yugoslavia-trash-and-trivia.blogspot.com/2014/06/note-za-pesmu-hej-brigade-iz-1948godine.html

% Hej, brigade, hitite,
% razpodite, zatrite,
% požigalce slovenskih domov!,
%
% Hej, mašinca, zagodi,
% naj odmeva povsodi,
% naš pozdrav iz svobodnih gozdov!
%
% Hej, mašinca, zagodi,
% naj odmeva povsodi,
% naš pozdrav iz svobodnih gozdov!
%
% Kje so meje, pregrade,
% za slovenske brigade?
% Ne, za nas ni pregrad in ne mej!
%
% Po slemenih oblačnih
% in po grapah temačnih
% vse od zmage do zmage naprej!
%
% Po slemenih oblačnih
% in po grapah temačnih
% vse od zmage do zmage naprej!
%
% Čez poljane požgane
% tja do bele Ljubljane
% naša vojska prodre kot vihar!
%
% Dokler tu so brigade,
% kdor zemljo nam ukrade?
% Na Slovenskem smo mi gospodar!
%
% Dokler tu so brigade,
% kdor zemljo nam ukrade?
% Na Slovenskem smo mi gospodar!

melody = {
  \global
  \startPush
  \partial 4 <f a>8. <f a>16 | % Hej bri-
  <f a>4 <f a>8 g8           | % gade hi-
  f8 c8 <f a>8. <f a>16      | % tite razpo-
  <f a>4 <f a>8 g8           | % dite za-
  f8 c c c                   | % trite poži-
  \stopPush
  <e g>4 <e g>8. <e g>16     | % galce slo-
  <e g>4 <a c'>8. <g b>16    | % venskih do-
  <f a>2~                    | % mov!
  <f a>4 \startPush <b d'>8. <b d'>16 | % Hej ma-
  \repeat volta 2 {
    <b d'>4 <b d'>8. <b d'>16     | % šinca za-
    \stopPush
    <b d'>8 <b d'> <c' e'> <b d'> | % godi naj od-
    \startPush
    <a c'>4 <a c'>8. <a c'>16     | % meva pov-
    \stopPush
    <c' e'>8 <b d'> <a c'> <g b>  | % sodi naš po-
    \startPush
    <f a>4 c8. c16 | % zdrav iz svo-
  }
  \alternative {
    {
      c4 f8. <f a>16 | % bodnih go-
      \stopPush
      <e g>2~ | % zdov!
      <e g>4 \startPush <b d'>8. <b d'>16 | % Hej ma-
      \stopPush
    }{
      g4 g8 a8 | % bodnih goz-
      \startPush
      <a, f>2~ | % dov!
      <a, f>4 \stopPush r4 |
    }
  }
  
  \bar "|."
}

\score {
\new PianoStaff <<
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
        Hej, bri -- ga -- de, hi -- ti -- te,
        raz -- po -- di -- te, za -- tri -- te,
        po -- ži -- ga -- lce slo -- ven -- skih do -- mov!,
        Hej, ma -- šin -- ca, za -- go -- di,
        naj od -- me -- va pov -- so -- di,
        naš po -- zdrav iz svo -- bo -- dnih go -- zdov!
      }
    }
    \context Lyrics = "buttonsII" {
      \lyricsto "melody" {
        \M "" "B5" -
        - - _
        _ _
        \M "" "B5" -
        - - _
        _ _ _ _
        \M "" "B4" - -
        - \M "" "C4" \M "" "B5"
        \M "" "C3"
        \M "" "C5" -
        - - -
        \M "" "A7" - \M "" "B7" \M "" "A7"
        \M "" "B6" - -
        \M "" "B7" \M "" "A7" \M "" "B6" \M "" "B5"
        - _ _
        _ _ \M "" "B5"
        \M "" "B4"
        \M "" "C5" -
        _ _ _
        \M "" "B4"
      }
    }
    \context Lyrics = "buttonsI" {
      \lyricsto "melody" {
        \M "" "B4" -
        - - \M "" "A5"
        \M "" "B4" \M "" "B3"
        \M "" "B4" -
        - - \M "" "A5"
        \M "" "B4" \M "" "B3" - -
        \M "" "B3" - -
        - \M "" "C3" \M "" "B4"
        \M "" "C2"
        \M "" "C4" -
        - - -
        \M "" "B5" - \M "" "B6" \M "" "B5"
        \M "" "B5" - -
        \M "" "B6" \M "" "B5" \M "" "A5" \M "" "B4"
        - \M "" "B3" -
        - \M "" "B4" \M "" "B4"
        \M "" "B3"
        \M "" "C4" -
        \M "" "B4" - \M "" "A5"
        \M "" "B2"
      }
    }

  \new Dynamics \with {
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = 1
  } {
    \melody
  }

%   \new Staff = "staff" <<
%     \new Voice = "bass" {
%       \clef bass
%       \global
%       ...
%     }
%   >>
  \new RhythmicStaff {
    s4 |
    c4 c |
    c c |
    c c |
    c c |
    c c |
    c c |
    c c |
    c c |
    c c |
    c c |
    c c |
    c c |
    c4 c8. c16 |
    c4 c8. c16 |
    c2 |
    s2 |
    c4 c |
    c2 |
    s2 |
  }
  \new FiguredBass {
    \figuremode {
      \partial 4 s4 |
      <4 3> <4 3> |
      <4 3> <4 3> |
      <4 3> <4 3> |
      <4 3> <4 3> |
      <4 3> <4 3> |
      <4 3> <4 3> |
      <6 5> <6 5> |
      <6 5> <6 5> |
      <6 5> <6 5> |
      <4 3> <4 3> |
      <4 3> <4 3> |
      <4 3> <4 3> |
      <4 3>4 <2>8. <2>16 |
      <2>4 <4>8. <9>16 |
      <4 3>2 |
      s2 |
      <4 3>4 <4 3> |
      <4 3>2 |
      s2 |
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
        \melody
      }
    >>
  }
  \midi {
    \tempo 4 = 100
  }
}

\markup {
  \fill-line {
    \hspace #1
    { \bold 2. }
    \column {
      "Kje so meje, pregrade,"
      "za slovenske brigade?"
      "Ne, za nas ni pregrad in ne mej!"
      ""
      "Po slemenih oblačnih"
      "in po grapah temačnih"
      "vse od zmage do zmage naprej!"
    }
  { \bold 3. }
    \column {
      "Čez poljane požgane"
      "tja do bele Ljubljane"
      "naša vojska prodre kot vihar!"
      ""
      "Dokler tu so brigade,"
      "kdor zemljo nam ukrade?"
      "Na Slovenskem smo mi gospodar!"
    }
    \hspace #2
    \column{}
  }
}
