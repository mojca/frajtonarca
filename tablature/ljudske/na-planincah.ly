\version "2.19.30"
\language "deutsch"

\include "accordion.ily"
\include "style.ily"

\header{
  title   = "Na planincah"
  composer = "slovenska ljudska"
}

global = {
  \key f \major
  \time 3/4
}

melody = {
  % \startPull
  <a c'>2\( <g b>4\) |
  \startPush
  <f a>2\( <f a>4 |
  <f a>4 <e g>4 <f a>4\) |
  \stopPush
  <g b>2\( <e g>4\) |

  <b d'>2\( <a c'>4 |
  <g b>2\) <g b>4\( |
  <g b>4 <f a>4 <g b>4\) |
  \startPush
  <a c'>2\( <f a>4\)
  \stopPush
  %
  <a c'>2\( <g b>4\) |
  \startPush
  <f a>2\( <f a>4 |
  <f a>4 <e g>4 <f a>4\) |
  \stopPush
  <g b>2\( <e g>4\) |
  %
  <b d'>2\( <a c'>4 |
  <c' e'>2 <b d'>4 |
  <a c'>2 <g b>4\) |
  \startPush
  <f a>2.
  \stopPush
}

\score {
\new PianoStaff
<<
  % lyrics above a staff should have this override
  \new Lyrics = "buttonsI" \with {
    \override VerticalAxisGroup.staff-affinity = #DOWN
  }
  \new Lyrics = "buttonsII" \with {
    \override VerticalAxisGroup.staff-affinity = #DOWN
  }
  \new Voice = "melody" \fixed c'
  {
    \set midiInstrument = #"accordion"
    \global
    \melody
  }
  \new Lyrics = "lyricsI"   {}
  \new Lyrics = "lyricsII"  {}
  \new Lyrics = "lyricsIII" {}
  \new Lyrics = "lyricsIV"  {}
  \new Lyrics = "lyricsV"   {}

  % see also 5.1.3 Keeping contexts alive
  % \new Lyrics \with { alignAboveContext = #"music" }
  \context Lyrics = "buttonsI" {
    \lyricsto "melody" {
      \M "2" "C4" \M "3" "B5" \M "3" "B5" \M "3" "B5" \M "3" "B5" \M "4" "A5" \M "3" "B5" \M "3" "B5" \M "2" "B4"
      \M "5" "A7" \M "2" "C4" \M "3" "B5" \M "3" "B5" \M "3" "B5" \M "4" "A5" \M "3" "B5" \M "4" "B6" \M "3" "B5"
      \M "2" "C4" \M "3" "B5" \M "3" "B5" \M "3" "B5" \M "3" "B5" \M "4" "A5" \M "3" "B5" \M "3" "B5" \M "2" "B4"
      \M "5" "A7" \M "2" "C4" \M "5" "B7" \M "5" "A7" \M "2" "C4" \M "3" "B5" \M "3" "B5"
    }
  }
  \context Lyrics = "buttonsII" {
    \lyricsto "melody" {
      \M "1" "C3" \M "2" "B4" \M "2" "B4" \M "2" "B4" \M "2" "B4" \M "3" "A4" \M "2" "B4" \M "2" "B4" \M "1" "B3"
      \M "3" "B5" \M "1" "C3" \M "2" "B4" \M "2" "B4" \M "2" "B4" \M "3" "A4" \M "2" "B4" \M "3" "B5" \M "2" "B4"
      \M "1" "C3" \M "2" "B4" \M "2" "B4" \M "2" "B4" \M "2" "B4" \M "3" "A4" \M "2" "B4" \M "2" "B4" \M "1" "B3"
      \M "3" "B5" \M "1" "C3" \M "4" "B6" \M "3" "B5" \M "1" "C3" \M "2" "B4" \M "2" "B4"
    }
  }

  \context Lyrics = "lyricsI" {
    \lyricsto "melody" {
      \set stanza = #"1. "
      Na pla -- nin' -- cah son -- če -- ce si -- je,
      na pla -- nin' -- cah son -- če -- ce si -- je,
      na pla -- nin' -- cah son -- če -- ce si -- je,
      na pla -- nin' -- cah lušt -- no je.
    }
  }
% \context Lyrics = "lyricsII" {
%   \lyricsto "melody" {
%     \set stanza = #"2. "
%     Gor po -- je -- jo dro -- - -- bne pti -- čke,
%     gor po -- je -- jo dro -- - -- bne pti -- čke,
%     gor po -- je -- jo dro -- - -- bne pti -- čke,
%     gor po -- je -- jo pti -- či -- ce.
%   }
% }
% \context Lyrics = "lyricsIII" {
%   \lyricsto "melody" {
%     \set stanza = #"3. "
%     Gor cve -- te -- jo ro -- ži -- ce be -- le,
%     gor cve -- te -- jo ro -- ži -- ce be -- le,
%     gor cve -- te -- jo ro -- ži -- ce be -- le,
%     gor cve -- te -- jo ro -- ži -- ce.
%   }
% }
% \context Lyrics = "lyricsIV" {
%   \lyricsto "melody" {
%     \set stanza = #"4. "
%     E -- no de -- kle ji -- ih pa tr -- ga,
%     e -- no de -- kle ji -- ih pa tr -- ga,
%     e -- no de -- kle ji -- ih pa tr -- ga,
%     da si pu -- šeljc na -- re -- di.
%   }
% }
% \context Lyrics = "lyricsV" {
%   \lyricsto "melody" {
%     \set stanza = #"5. "
%     »Za klo -- buk ti ga bom pri -- pe -- la,
%     za klo -- buk ti ga bom pri -- pe -- la,
%     za klo -- buk ti ga bom pri -- pe -- la
%     "z e" -- no zla -- to kno -- felj -- co.«
%   }
% }
  % http://lilypond.org/doc/v2.18/Documentation/notation/stanzas

  \new AccordionPushPull \with {
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = 1
  } {
    \melody
  }

  \new Staff \fixed c
  {
    \set midiInstrument = #"accordion"
    \global
    \clef "bass"
    % maybe this could be done in \chordmode
    c4  <e g c'> <e g c'> | % V 4 3 3
    f,4 <f a c'> <f a c'> | % H 4 3 3
    c4  <f a c'> <f a c'> | % H 2 3 3
    g,4 <e g c'> <e g c'> | % V 2 3 3
    %
    c4  <e g c'> <e g c'> | % V 4 3 3
    g,4 <e g c'> <e g c'> | % V 2 3 3
    c4  <e g c'> <e g c'> | % V 4 3 3
    f,4 <f a c'> <f a c'> | % H 4 3 3
    %
    c4  <e g c'> <e g c'> | % V 4 3 3
    f,4 <f a c'> <f a c'> | % H 4 3 3
    c4  <f a c'> <f a c'> | % H 2 3 3
    g,4 <e g c'> <e g c'> | % V 2 3 3
    %
    c4  <e g c'> <e g c'> | % V 4 3 3
    g,4 <e g c'> <e g c'> | % V 2 3 3
    c4  <e g c'> <e g c'> | % V 4 3 3
    <f, f a c'>2.         | % H 43
  }
  \new FiguredBass {
    \figuremode {
      <4>4 <3> <3> |
      <4> <3> <3> |
      <2> <3> <3> |
      <2> <3> <3> |
      %
      <4> <3> <3> |
      <2> <3> <3> |
      <4> <3> <3> |
      <4> <3> <3> |
      %
      <4> <3> <3> |
      <4> <3> <3> |
      <2> <3> <3> |
      <2> <3> <3> |
      %
      <4> <3> <3> |
      <2> <3> <3> |
      <4> <3> <3> |
      <3 4>2. |
    }
  }
>>
  \layout{}
  \midi{
    \tempo 4 = 160
  }
}

\markup {
  \fill-line {
    \hspace #1
    \column {
      { \bold 2. }
      "Gor pojejo drobne ptičke,"
      "gor pojejo ptičice."

      { \bold 3. }
      "Gor cvetejo rožice bele,"
      "gor cvetejo rožice."
    }
    \column {
      { \bold 4. }
      "Eno dekle jih pa trga,"
      "da si pušeljc naredi."

      { \bold 5. }
      "»Za klobuk ti ga bom pripela"
      "z eno zlato knofeljco.«"
    }
    \hspace #1
  }
}
