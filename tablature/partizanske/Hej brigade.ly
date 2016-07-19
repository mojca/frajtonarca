\version "2.19.30"
\language "deutsch"

\include "frajtonarca.ly"

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
  \partial 4 <f a>8. <f a>16 | % Hej bri-
  <f a>4 <f a>8 g8           | % gade hi-
  f8 c8 <f a>8. <f a>16      | % tite razpo-
  <f a>4 <f a>8 g8           | % dite
  f8 c c c                   | % 
  <e g>4 <e g>8. <e g>16     | % 
  <e g>4 <a c'>8. <g b>16    | % 
  <f a>2~                    | % 
  <f a>4 <b d'>8. <b d'>16   | % mov! Hej ma-
  \repeat volta 2 {
    <b d'>4 <b d'>8. <b d'>16      | % šinca za-
     <b d'>8 <b d'> <c' e'> <b d'> | % godi naj od-
     <a c'>4 <a c'>8. <a c'>16     | % meva pov-
     <c' e'>8 <b d'> <a c'> <g b>  | % sodi naš po-
     <f a>4 c8. c16 | % zdrav iz svo-
  }
  \alternative {
    {
      c4 f8. <f a>16 | % bodnih goz-
      <e g>2~ | % dov!
      <e g>4 <b d'>8. <b d'>16 | % Hej ma-
    }{
      g4 g8 a8 | % bodnih goz-
      <a, f>2~ | % dov!
      <a, f>4 r4 |
    }
  }
  
  \bar "|."
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
        \M "" "A5" -
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
        \M "" "A4" -
        \M "" "B4" - \M "" "A5"
        \M "" "B2"
      }
    }
%   >>

  \new Dynamics \with {
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = 1
  } {
    \startPush
    s4
    s2*4
    \stopPush
    s2*3 s4
    \startPush
    s4 s2
    \stopPush
    s2
    \startPush
    s2
    \stopPush
    s2
    \startPush
    s2*2
    \stopPush
    s2 s4
    \startPush
    s4
    \stopPush
    %
    s2
    \startPush
    s2 s4
    \stopPush
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
  \context {
    \Global
    \grobdescriptions #all-grob-descriptions
  }
  \context {
    \Dynamics
    \consists \accordionPushSpannerEngraver
  }
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
%   \line {
%     \column {"        "}
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
