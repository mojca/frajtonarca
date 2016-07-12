% \version "2.18.2"
\version "2.19.45"
\language "deutsch"

\header{
% title    = "C-F-B"
  title    = ""
  composer = ""
  tagline  = ""
}

\paper {
  left-margin = 0\mm
% oddFooterMarkup = ##f
}

symbolPull = \markup{ \musicglyph #"scripts.upbow" }
symbolPush = \markup{ \musicglyph #"scripts.downbow" }

bassesHChords = {
  <<e g c'>>   %  1 c
  c            %  2 C
  <<f a c'>>   %  3 f
  f,           %  4 F
  <<f b d'>>   %  5 b
  b,           %  6 B
  r            %  -
  g,           %  7 G
  <<e a cis'>> %  8 a
  a,           %  9 A
  <<fis a d'>> % 10 d
  d            % 11 D
}

bassesVChords = {
  <g h d'> %  1 g
  g,       %  2 G
  <e g c'> %  3 c
  c        %  4 C
  <f a c'> %  5 f
  f,       %  6 F
  r        %  -
  e,       %  7 E
  <f a d'> %  8 dm
  d        %  9 D
  <g b d'> % 10 es
  es,      % 11 Es
}

bassesNumbers = {
  \figuremode {
    <1>4 <2> | <3> <4> | <5> <6> | s <7> | <8> <9> | <10> <11> |
  }
}
bassesHNames = { \lyricmode { c  C f F b B   G a?  A d? D  } }
bassesVNames = { \lyricmode { g? G c C f F   E dm? D es Es } }

<<
  \new Lyrics = "bassesHSuperscript" { \override VerticalAxisGroup.staff-affinity = #DOWN }
  \new Voice = "bassesH" \fixed c
  {
    \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'((alignment-distances . (20)))
    \key c \major
    \clef "bass"
    \time 2/4
    \bassesHChords
  }
  \new FiguredBass {
    \bassesNumbers
  }
  \new Lyrics = "bassesVSuperscript" { \override VerticalAxisGroup.staff-affinity = #DOWN }
  \new Voice = "bassesV" \fixed c
  {
    \key c \major
    \clef "bass"
    \time 2/4
    \bassesVChords
  }
  \new FiguredBass {
    \bassesNumbers
  }
  \context Lyrics = "bassesHSuperscript" {
    \lyricsto "bassesH" {
      \set stanza = \symbolPush
      \lyricmode {\bassesHNames}
    }
  }
  \context Lyrics = "bassesVSuperscript" {
    \lyricsto "bassesV" {
      \set stanza = \symbolPull
      \bassesVNames
    }
  }
>>
