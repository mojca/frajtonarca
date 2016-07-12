% \version "2.18.2"
\version "2.19.45"
\language "deutsch"

\header{
  title   = "Na planincah"
  composer = "slovenska ljudska"
  tagline = "zapisala Mojca Miklavec s programom LilyPond (https://github.com/mojca/frajtonarca)"
}

#(set-default-paper-size "a4")
\paper {
  top-margin = 2\cm
}
\layout {
  indent = #0
}

startPull = { \mark \markup{ \musicglyph #"scripts.upbow" } }
startPush = { \mark \markup{ \musicglyph #"scripts.downbow" } }

M = #(define-scheme-function (parser location aFinger aButton) (markup? markup?)
  #{ \markup{ \small \bold \with-color #(rgb-color 0.5 0 0) #aFinger \small \with-color #(rgb-color 0 0 0.5) #aButton } #}
)

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
    \key f \major
    \time 3/4

      \startPull
      <<a2\( c'>> <<g4\) b>> |
      \startPush
      <<f2\( a>> <<f4 a>> |
      <<f4 a>> <<e4 g>> <<f4\) a>> |
      \startPull
      <<g2\( b>> <<e4\) g>> |

      <<b2\( d'>> <<a4 c'>> |
      <<g2\) b>> <<g4\( b>> |
      <<g4 b>> <<f4 a>> <<g4\) b>> |
      \startPush
      <<a2\( c'>> << f4\) a>>

      \startPull
      <<a2\( c'>> <<g4\) b>> |
      \startPush
      <<f2\( a>> <<f4 a>> |
      <<f4 a>> <<e4 g>> <<f4\) a>> |
      \startPull
      <<g2\( b>> <<e4\) g>> |

      <<b2\( d'>> <<a4 c'>> |
      <<c'2 e'>> <<b4 d'>> |
      <<a2 c'>> <<g4\) b>> |
      \startPush
      <<f2. a>>
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
  \context Lyrics = "lyricsII" {
    \lyricsto "melody" {
      \set stanza = #"2. "
      Gor po -- je -- jo dro -- - -- bne pti -- čke,
      gor po -- je -- jo dro -- - -- bne pti -- čke,
      gor po -- je -- jo dro -- - -- bne pti -- čke,
      gor po -- je -- jo pti -- či -- ce.
    }
  }
  \context Lyrics = "lyricsIII" {
    \lyricsto "melody" {
      \set stanza = #"3. "
      Gor cve -- te -- jo ro -- ži -- ce be -- le,
      gor cve -- te -- jo ro -- ži -- ce be -- le,
      gor cve -- te -- jo ro -- ži -- ce be -- le,
      gor cve -- te -- jo ro -- ži -- ce.
    }
  }
  \context Lyrics = "lyricsIV" {
    \lyricsto "melody" {
      \set stanza = #"4. "
      E -- no de -- kle ji -- ih pa tr -- ga,
      e -- no de -- kle ji -- ih pa tr -- ga,
      e -- no de -- kle ji -- ih pa tr -- ga,
      da si pu -- šeljc na -- re --di.
    }
  }
  \context Lyrics = "lyricsV" {
    \lyricsto "melody" {
      \set stanza = #"5. "
      »Za klo -- buk ti ga bom pri -- pe -- la,
      za klo -- buk ti ga bom pri -- pe -- la,
      za klo -- buk ti ga bom pri -- pe -- la
      ze -- no zla -- to kno -- felj -- co.«
    }
  }
  % http://lilypond.org/doc/v2.18/Documentation/notation/stanzas

  \new Staff \fixed c
  {
    \set midiInstrument = #"accordion"
    \key f \major
    \clef "bass"
    % maybe this could be done in \chordmode
    c4  <<e g c'>> <<e g c'>> | % V 4 3 3
    f,4 <<f a c'>> <<f a c'>> | % H 4 3 3
    c4  <<f a c'>> <<f a c'>> | % H 2 3 3
    g,4 <<e g c'>> <<e g c'>> | % V 2 3 3
    %
    c4  <<e g c'>> <<e g c'>> | % V 4 3 3
    g,4 <<e g c'>> <<e g c'>> | % V 2 3 3
    c4  <<e g c'>> <<e g c'>> | % V 4 3 3
    f,4 <<f a c'>> <<f a c'>> | % H 4 3 3
    %
    c4  <<e g c'>> <<e g c'>> | % V 4 3 3
    f,4 <<f a c'>> <<f a c'>> | % H 4 3 3
    c4  <<f a c'>> <<f a c'>> | % H 2 3 3
    g,4 <<e g c'>> <<e g c'>> | % V 2 3 3
    %
    c4  <<e g c'>> <<e g c'>> | % V 4 3 3
    g,4 <<e g c'>> <<e g c'>> | % V 2 3 3
    c4  <<e g c'>> <<e g c'>> | % V 4 3 3
    <<f,2. f a c'>>           | % H 43
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
