\version "2.19.30"
\language "deutsch"

\include "accordion.ily"
\include "style.ily"

\header{
  title    = "K tebi želim, moj Bog"
  poet     = ""
  composer = ""
  arranger = ""
}

global = {
  \time 3/4
}

melody = \fixed c' {
  \global
  \key f \major

  % moderato
  a4^\markup { \dynamic p } g f |
  f4. d8 d4 |
  c4 f a |
  g2 r4 |
  a4 g f |
  f4. d8 d4 |
  c8.( f16) e4 g |
  f2. |
  
  c'4^\markup { \dynamic f } d' c' |
  c'4. a8 c'4 |
  c'4 d' c' |
  c'4. a8 g4 |
  a4 g f |
  f4. d8 d4 |
  c8.( f16) e4 g |
  f2. |
  \bar "|."
}
basses = {}

\score {
\new PianoStaff <<
    \new Lyrics = "buttonsII" \with {
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Lyrics = "buttonsI" \with {
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Voice = "melody" {
      \melody
    }
    \context Lyrics = "lyricsI" {
      \lyricsto "melody" {
        \set stanza = #"1. "
        K_te -- bi že -- lim, moj Bog, k_te -- bi moj Bog,
        če boš po -- slal brid -- kost a -- li ra -- dost.
        Te -- be bom lju -- bil zdaj, zdaj in na ve -- ko -- maj.
      }
    }
    \context Lyrics = "lyricsII" {
      \lyricsto "melody" {
        \set stanza = #"2. "
        Str -- ma je pot v_ne -- bo, str -- ma ze -- lo,
        a -- li lah -- ka s_te -- boj, ti greš z_me -- noj.
        Ma -- ri -- ja tam sto -- ji in mi na -- prej ve -- li.
        K_te -- bi že -- lim, moj Bog, k_te -- bi moj Bog.
      }
    }
    \context Lyrics = "lyricsIII" {
      \lyricsto "melody" {
        \set stanza = #"3. "
        Zdaj je še tem -- na noč; po -- šlji po -- moč,
        da ne o -- ma -- gam zdaj, ro -- ko po -- daj!
        Ka -- dar pa pri -- de dan, pel ti bom ves u -- dan.
      }
    }

    \new AccordionPushPull \with {
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = 1
    } {
      \melody
    }

%   \new Staff = "staff" <<
%     \new Voice = "bass" {
%       \clef bass
%       \global
%       \basses
%     }
%   >>
%   \new RhythmicStaff {
%   }
%   \new FiguredBass {
%     \figuremode {
%     }
%   }
>>
  \layout {
%     ragged-last = ##t
%     #(layout-set-staff-size 16)
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
