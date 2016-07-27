\version "2.19.30"
\language "deutsch"

\include "accordion.ily"
\include "style.ily"

\header{
  title    = "Rajske strune"
  composer = ""
}

% https://www.scribd.com/doc/307349925/Rajske-strune
% RAJSKE STRUNE ZADONITE!
%
% Rajske strune zadonite, od nebes odmevajte!
% Zbori angelski hitite na zemljo in pevajte:
% Slava bodi na višavah, slava Bogu naj doni,
% mir ljudem pa po nižavah naj nocojšnja noč rosi!
%
% Čuli sladko melodijo so pastirji tisto noč;
% našli Dete in Marijo in ljubezni božje moč;
% pokleknili vdano, verno in molili Jezuščka,
% zrli v duhu neizmerno slavo Sina večnega.
%
% Blaga se skrivnost obhaja, božji Sin se v njej rodi;
% V dušah vernih se poraja Dete blažene noči.
% Sreča neizmerna dana rodu je človeškemu:
% Sladka mana se pripravlja srcu, Bogu zvestemu.

global = {
  \time 3/4
  \key f \major
}

melody = \fixed c' {
  \global
  \partial 4
  f8 g | % rajske
  a8 c f4 f8 g | % strune zado-
  a8 c f4 f8 g | % nite od ne-
  <f a>8 <f d'> <f c'>4 \startPush <e g>8 <e a> | % bes mevaj-
  <a, c f>2 \stopPush f8 g | % te! Zbori
  \break
  a8 c f4 f8 g | % angelski hi-
  a8 c f4 f8 g | % tite na ze-
  <f a>8 <f d'> <f c'>4 \startPush <e g>8 <e a> | % mljo in pevaj-
  <a, c f>2 <a c'>8 <a f'> \stopPush | % te: Slava
  \break
  <b e'>4 <e b> <c' e'>8 <b d'> | % bodi na vi-
  \startPush <a c'>4 <f a> <a c'>8 <a f'> \stopPush | % šavah, slava
  <b e'>4 <e b> <c' e'>8 <b d'> | % Bogu naj do-
  \startPush <a c'>2 \stopPush f8 g | % ni, mir lju-
  \break
  a8 c f4 f8 g | % dem pa po ni-
  a8 c f4 f8 g | % žavah naj no-
  <f a>8 <f d'> <f c'>4 \startPush <e g>8 <e a> | % cojšnja noč ro-
  \partial 2 <a, c f>2 \stopPush | % si!
  \bar "|."
}

\score {
\new PianoStaff <<
    \new Lyrics = "buttonsIII" \with {
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
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
        Raj -- ske stru -- _ ne za -- do -- ni -- _ te,
        do ne -- bes _ od -- me -- vaj -- te!
        Zbo -- ri an -- _ gel -- ski hi -- ti -- _ te
        na ze -- mljo _ in pe -- vaj -- te:
        Sla -- va bo -- di na vi -- ša -- vah,
        sla -- va Bo -- gu naj do -- ni,
        mir lju -- dem _ pa po ni -- ža -- _ vah naj no -- coj -- _ šnja noč ro -- si!
      }
    }
    \context Lyrics = "lyricsII" {
      \lyricsto "melody" {
        \set stanza = #"2. "
        Ču -- li slad -- _ ko me -- lo -- di -- _ jo so pa -- stir -- _ ji ti -- sto noč;
        na -- šli De -- _ te in Ma -- ri -- _ jo in lju -- be -- _ zni bo -- žje moč;
        po -- kle -- kni -- li vda -- no, ve -- rno in mo -- li -- li Je -- zu -- ščka,
        zr -- li v_du -- _ hu ne -- iz -- me -- _ rno sla -- vo Si -- _ na ve -- čne -- ga.
      }
    }
    \context Lyrics = "lyricsIII" {
      \lyricsto "melody" {
        \set stanza = #"3. "
        Bla -- ga se _ skri -- vnost ob -- ha -- _ ja, bo -- žji Sin _ se v_njej ro -- di;
        V_du -- šah ver -- _ nih se po -- ra -- _ ja De -- te bla -- _ že -- ne no -- či.
        Sre -- ča ne -- iz -- mer -- na da -- na ro -- du je člo -- veš -- ke -- mu:
        Slad -- ka ma -- _ na se pri -- prav -- _ lja sr -- cu, Bo -- _ gu zves -- te -- mu.
      }
    }
    \context Lyrics = "buttonsIII" {
      \lyricsto "melody" {
        \m \m
        \m \m \m \m \m
        \m \m \m \m \m
        \m \m \m \m \m
        \M "3" "B4" \m \m
        \m \m \m \m \m
        \m \m \m \m \m
        \m \m \m \m \m
        \M "3" "B4" \m \m
        \m \m \m \m
        \m \m \m \m
        \m \m \m \m
        \m \m \m
        \m \m \m \m \m
        \m \m \m \m \m
        \m \m \m \m \m
        \M "3" "B4"
      }
    }
    \context Lyrics = "buttonsII" {
      \lyricsto "melody" {
        \m _ % Rajske
        _ _ _ _ _ % strune zado-
        _ _ _ _ _ % nite, do ne-
        \M "4" "A5" \M "5" "A7" \M "4" "B6" \M "4" "A5" \M "4" "B5" % bes odmevaj-
        \M "2" "B3" \m \m % te! Zbori
        \m \m \m \m \m % angelski hi-
        \m \m \m \m \m % tite na ze-
        \M "4" "A5" \M "5" "A7" \M "4" "B6" \M "4" "A5" \M "4" "B5" % mljo in pevaj-
        \M "2" "B3" \M "4" "B6" \M "5" "B7" % te! Slava
        \M "5" "B7" \M "3" "B5" \M "5" "B7" \M "5" "A7" % bodi na vi-
        \M "4" "B6" \M "3" "B5" \M "4" "B6" \M "5" "B7" % šavah, slava
        \M "5" "B7" \M "3" "B5" \M "5" "B7" \M "5" "A7" % Bogu naj do-
        \M "4" "B6" \m \m % ni, mir lju-
        \m \m \m \m \m % dem pa po ni-
        \m \m \m \m \m % žavah naj no-
        \M "4" "A5" \M "5" "A7" \M "4" "B6" \M "4" "A5" \M "4" "B5" % cojšnja noč ro-
        \M "2" "B3" % si!
      }
    }
    \context Lyrics = "buttonsI" {
      \lyricsto "melody" {
        \M "3" "A4" \M "2" "B4" % Rajske
        \M "4" "A5" \M "1" "B2" \M "3" "A4" - \M "2" "B4" % strune zado-
        \M "4" "A5" \M "1" "B2" \M "3" "A4" - \M "2" "B4" % nite, do ne-
        \M "3" "A4" \M "3" "A4" \M "3" "A4" \M "3" "A4" \M "3" "A4" % bes odmevaj-
        \M "1" "B2" \M "3" "A4" \M "2" "B4" % te! Zbori
        \M "4" "A5" \M "1" "B2" \M "3" "A4" - \M "2" "B4" % angelski hi-
        \M "4" "A5" \M "1" "B2" \M "3" "A4" - \M "2" "B4" % tite na ze-
        \M "3" "A4" \M "3" "A4" \M "3" "A4" \M "3" "A4" \M "3" "A4" % mljo in pevaj-
        \M "1" "B2" \M "3" "B5" \M "3" "B5" % te! Slava
        \M "3" "B5" \M "1" "B3" \M "4" "B6" \M "3" "B5" % bodi na vi-
        \M "3" "B5" \M "2" "B4" \M "3" "B5" \M "3" "B5" % šavah, slava
        \M "3" "B5" \M "1" "B3" \M "4" "B6" \M "3" "B5" % Bogu naj do-
        \M "3" "B5" \M "3" "A4" \M "2" "B4" % ni, mir lju-
        \M "4" "A5" \M "1" "B2" \M "3" "A4" - \M "2" "B4" % dem pa po ni-
        \M "4" "A5" \M "1" "B2" \M "3" "A4" - \M "2" "B4" % žavah naj no-
        \M "3" "A4" \M "3" "A4" \M "3" "A4" \M "3" "A4" \M "3" "A4" % cojšnja noč ro-
        \M "1" "B2" % si!
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
%       ...
%     }
%   >>
  \new RhythmicStaff {
    \partial 4 s4 |
    c r r |
    c r r |
    c r c |
    c r r |
    c r r |
    c r r |
    c r c |
    c r r |
    c c c |
    c c c |
    c c c |
    c r r |
    c r r |
    c r r |
    c r c |
    \partial 2 c s |
  }
  \new FiguredBass {
    \figuremode {
      \partial 4 s4 |
      <6 5> s s |
      <6 5> s s |
      <6 5> s <2 1> |
      <4 5> s s |
      <6 5> s s |
      <6 5> s s |
      <6 5> s <4 2> |
      <4 3> s s |
      <4> <3> <3> |
      <4> <3> <3> |
      <4> <3> <3> |
      <4> s s |
      <6 5> s s |
      <6 5> s s |
      <6 5> s <4 2> |
      \partial 2 <4 3>2 |
    }
  }
>>

  \layout {
%     ragged-last = ##t
  }
}

\score {
  \unfoldRepeats {
    \new PianoStaff <<
      \new Voice = "melody" \fixed c' {
        \set Staff.midiInstrument = "accordion"
        \melody
      }
    >>
  }
  \midi {
    \tempo 4 = 80
  }
}

