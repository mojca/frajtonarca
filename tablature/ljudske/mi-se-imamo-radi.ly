\version "2.19.30"
\language "deutsch"

\include "accordion.ily"
\include "style.ily"

\header{
  title   = "Mi se imamo radi"
  composer = "slovenska ljudska"
}

global = {
  \time 2/4
  \key f \major
}

melody = \fixed c' {
  <c' e'>8. <c' e'>16 <c' e'>8 <d' f'> |
  <c' e'>4 <e b> |
  <c' e'>8 <b d'> <a c'> <g b> |
  \startPush
  <f a f'>4
  \stopPush
  <c c'> |
  %
  \break
  \startPush
  <a c'>8. <a c'>16 <a c'>8 <b d'> | % Mi se ma-mo
  <a c'>4 <f a> | % ra-di
  <b d'>8 <b d'> <a c'> <a c'> | % ra-di ra-di
  \stopPush
  <g b>4 <e g> | % ra-di
  %
  % \break
  <c' e'>8. <c' e'>16 <c' e'>8 <d' f'> | % mi se ma-mo
  <c' e'>4 <e b> | % ra-di
  <c' e'>8 <c' e'> <b d'> <b d'> | % ra-di ra-di
  \startPush
  <a c'>4 <f a> | % ra-di
  %
  % \break
  <a c'>8. <a c'>16 <a c'>8 <b d'> | % mi se ma-mo
  <a c'>4 <f a> | % ra-di
  <b d'>8 <b d'> <a c'> <a c'> | % ra-di ra-di
  \stopPush
  <g b>4 <e g> | % ra-di
  %
  <c' e'>8. <c' e'>16 <c' e'>8 <d' f'> | % mi se ma-mo
  <c' e'>4 <e b> | % ra-di
  <c' e'>8 <b d'> <a c'> <g b> | % ra-di prav za
  \startPush
  <f a f'>4 % res
  \stopPush
  <c c'> |
  
}

\score {
\new PianoStaff
<<
  \new Lyrics = "buttonsII" \with {
    \override VerticalAxisGroup.staff-affinity = #DOWN
  }
  \new Lyrics = "buttonsI" \with {
    \override VerticalAxisGroup.staff-affinity = #DOWN
  }
  \new Voice = "melody"
  {
    \set midiInstrument = #"accordion"
    \global
    \melody
  }
  \new Lyrics = "lyricsI"   {}

  % see also 5.1.3 Keeping contexts alive
  % \new Lyrics \with { alignAboveContext = #"music" }
%   \context Lyrics = "buttonsIII" {
%     \lyricsto "melody" {
%       _ _ _ _
%       _ _
%       _ _ _ _ \M "5" "B7"
%     }
%   }
  \context Lyrics = "buttonsII" {
    \lyricsto "melody" {
      \M "4" "B7" \M "4" "B7" \M "4" "B7" \M "5" "A8"
                  \M "4" "B7" \M "2" "B5"
                  \M "4" "B7" \M "5" "A7" \M "3" "B6" \M "3" "B5"
                  \M "3" "B5" \M "4" "B6"
                  \M "4" "B6" \M "4" "B6" \M "4" "B6" \M "3" "C5"
                  \M "4" "B6" \M "3" "B5"
                  \M "3" "C5" \M "3" "C5" \M "4" "B6" \M "4" "B6"
                  \M "3" "B5" \M "2" "B4"
                  \M "4" "B7" \M "4" "B7" \M "4" "B7" \M "5" "A8"
                  \M "4" "B7" \M "2" "B5"
                  \M "4" "B7" \M "4" "B7" \M "5" "A7" \M "5" "A7"
                  \M "4" "B6" \M "3" "B5"
                  \M "4" "B6" \M "4" "B6" \M "4" "B6" \M "3" "C5" 
                  \M "4" "B6" \M "3" "B5"
                  \M "3" "C5" \M "3" "C5" \M "4" "B6" \M "4" "B6"
                  \M "3" "B5" \M "2" "B4"
                  \M "4" "B7" \M "4" "B7" \M "4" "B7" \M "5" "A8"
                  \M "4" "B7" \M "2" "B5"
                  \M "4" "B7" \M "5" "A7" \M "3" "B6" \M "3" "B5"
                  \M "3" "B5" \M "4" "B6"
    }
  }
  \context Lyrics = "buttonsI" {
    \lyricsto "melody" {
      \M "3" "B6" \M "3" "B6" \M "3" "B6" \M "4" "A7"
                  \M "3" "B6" \M "1" "B3"
                  \M "3" "B6" \M "2" "B5" \M "1" "A5" \M "2" "B4"
                  \M "2" "B4" \M "1" "B2"
                  \M "3" "B5" \M "3" "B5" \M "3" "B5" \M "2" "C4" % mi se ma-mo
                  \M "3" "B5" \M "2" "B4"                        % ra-di
                  \M "2" "C4" \M "2" "C4" \M "3" "B5" \M "3" "B5" % ra-di ra-di
                  \M "2" "B4" \M "1" "B3"                         % ra-di
                  \M "3" "B6" \M "3" "B6" \M "3" "B6" \M "4" "A7" % mi se ma-mo
                  \M "3" "B6" \M "1" "B3"                         % ra-di
                  \M "3" "B6" \M "3" "B6" \M "2" "B5" \M "2" "B5" % ra-di ra-di
                  \M "3" "B5" \M "2" "B4"                        % ra-di
                  \M "3" "B5" \M "3" "B5" \M "3" "B5" \M "2" "C4"  % Mi se ma-mo
                  \M "3" "B5" \M "2" "B4"                        % ra-di
                  \M "2" "C4" \M "2" "C4" \M "3" "B5" \M "3" "B5" % ra-di ra-di
                  \M "2" "B4" \M "1" "B3"                         % ra-di
                  \M "3" "B6" \M "3" "B6" \M "3" "B6" \M "4" "A7" % mi se ma-mo
                  \M "3" "B6" \M "1" "B3"                         % ra-di
                  \M "3" "B6" \M "2" "B5" \M "1" "A5" \M "2" "B4"
                  \M "2" "B4" \M "1" "B2"
%                   \M "" ""
    }
  }

  \context Lyrics = "lyricsI" {
    \lyricsto "melody" {
      _ _ _ _ _ _ _ _ _ _ _ _
      \set stanza = #"1. "
      Mi se 'ma -- mo ra -- di ra -- di ra -- di ra -- di,
      mi se 'ma -- mo ra -- di ra -- di ra -- di ra -- di,
      mi se 'ma -- mo ra -- di ra -- di ra -- di ra -- di,
      mi se 'ma -- mo ra -- di ra -- di prav za -- res.
    }
  }
  % http://lilypond.org/doc/v2.18/Documentation/notation/stanzas

  \new AccordionPushPull \with {
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = 1
  } {
    \melody
  }

  \new Staff \fixed c
  {
    \set midiInstrument = #"accordion"
    \key f \major
    \clef "bass"
    % maybe this could be done in \chordmode
    r2 |
    <g, e g c>2 | % V 23
    c,4 d,8 e,    | % V 4 9 7
%     f,4 c, |
    <f, f a c'>4 % H 34
    <c e g c'> | % V 34
    %
    % c4  <<e g c'>> <<e g c'>> | % V 4 3 3
    % f,4 <<f a c'>> <<f a c'>> | % H 4 3 3
    % c4  <<f a c'>> <<f a c'>> | % H 2 3 3
    % g,4 <<e g c'>> <<e g c'>> | % V 2 3 3
    % %
    % c4  <<e g c'>> <<e g c'>> | % V 4 3 3
    % g,4 <<e g c'>> <<e g c'>> | % V 2 3 3
    % c4  <<e g c'>> <<e g c'>> | % V 4 3 3
    % f,4 <<f a c'>> <<f a c'>> | % H 4 3 3
    % %
    % c4  <<e g c'>> <<e g c'>> | % V 4 3 3
    % f,4 <<f a c'>> <<f a c'>> | % H 4 3 3
    % c4  <<f a c'>> <<f a c'>> | % H 2 3 3
    % g,4 <<e g c'>> <<e g c'>> | % V 2 3 3
    % %
    % c4  <<e g c'>> <<e g c'>> | % V 4 3 3
    % g,4 <<e g c'>> <<e g c'>> | % V 2 3 3
    % c4  <<e g c'>> <<e g c'>> | % V 4 3 3
    % <<f,2. f a c'>>           | % H 43
  }
  \new FiguredBass {
    \figuremode {
      s2 |
      s2 | % alternativno: <23> |
      % % lažja izvedba:
      % <4>8 <3> <2> <3> |
      % <34>4 <34>4 |
      % %
      % <4>8 <3> <2> <3> |
      % <4> <3> <2> <3> |
      % <4> <3> <2> <3> |
      % <2> <3> <4> <3> |
      % <2> <3> <4> <3> |
      % <2> <3> <4> <3> |
      % <2> <3> <4> <3> |
      % <4> <3> <2> <3> |
      % %
      % <4> <3> <2> <3> |
      % <4> <3> <2> <3> |
      % <4> <3> <2> <3> |
      % <2> <3> <4> <3> |
      % %
      % <2> <3> <4> <3> |
      % <2> <3> <4> <3> |
      % <2> <3> <4> <3> |
      % <34>4 <34> |
      % težja izvedba:
      <4>8 <3> <9> <7> |
      <34>4 <34>4 |
      %
      <4>8 <3> <2> <3> |
      <4> <3> <2> <3> |
      <4> <9> <2> <9> |
      <2> <3> <4> <3> |
      <2> <3> <4> <3> |
      <2> <3> <4> <3> |
      <2> <3> <4> <7> |
      <4> <3> <2> <9> |
      %
      <4> <3> <2> <3> |
      <4> <3> <2> <3> |
      <4> <9> <2> <9> |
      <2> <3> <4> <3> |
      %
      <2> <3> <4> <3> |
      <2> <3> <4> <3> |
      <2> <4> <9> <7> |
      <34>4 <34> |
    }
  }
>>
  \layout{
%     ragged-last = ##t
    \context {
      \Global
      \grobdescriptions #all-grob-descriptions
    }
    \context {
      \Dynamics
      \consists \accordionPushSpannerEngraver
    }
  }
  \midi{
    \tempo 4 = 160
  }
}
