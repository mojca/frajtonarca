\version "2.19.30"
\language "deutsch"

\include "frajtonarca.ly"

\header{
  title    = "Na juriš"
  poet     = "Besedilo: Tone Seliškar"
  composer = "Glasba: Karol Pahor"
  tagline  = "https://github.com/mojca/frajtonarca"
  % tagline = "zapisala Mojca Miklavec s programom LilyPond (https://github.com/mojca/frajtonarca)"
}

global = {
  \time 2/4
  \key f \major
}

% https://www.youtube.com/watch?v=48h3ZYOFUvE

melody = {
  \global
  \partial 8 f8            |
  c'4 a8. f16              | % Na juriš, na
  c'4 a8. f16              | % juriš, na
  <e b c'>2                | % ju
  <e b c'>4. c8            | % riš! Krik
  <e g>4 <e g>8. <e g>16   | % borcev vih-
  <e g>4 <d f>8 e8         | % ra skozi
  <a, f>2                  | % ho-
  <a, c>4 r8 c8            | % te so-
  <e g>4 <e g>8. <e g>16   | % vragove
  <e g>4 <a c'>8. <b d'>16 | % vrste so
  <f a>2                   | % go-
  <a, f>4 r8 f8            | % ste. U-
  \repeat volta 2 {
    <b d'>4 <b d'>8 <a c'>8              | % dari na-
    b8( a) g c                           | % vali u-
    <a c'>4 <a c'>8 f8                   | % sekaj iz-
    a8( g) f e                           | % pali! Na
    \break
    <b, d>4 <b, d>8. <b, d>16            | % juriš o-
    <b d'>4 <b d'>8. <a c'>16            | % hej parti-
    <g b>2~                              | % zan,
    <g b>4 <a c'>4                       | % pred
    <c' e'>4 <c' e'>8. <b d'>16          | %  tabo svo-
    <a c'>8.( <b d'>16) <a c'>8. <e b>16 | % bode je
  }
  \alternative {
    {
      <f a>2~      | % dan!
      <f a>4 r8 f8 |
    }
    {
      <f a>2~   |
      <f a>4 r8 s8 |
    }
  }
  \bar "|."
}

\score {
\new PianoStaff <<
%     \new Lyrics = "buttonsII" \with {
%       \override VerticalAxisGroup.staff-affinity = #DOWN
%     }
%     \new Lyrics = "buttonsI" \with {
%       \override VerticalAxisGroup.staff-affinity = #DOWN
%     }
    \new Voice = "melody" \fixed c' {
      \melody
   }
    \context Lyrics = "lyricsI" {
      \lyricsto "melody" {
        \set stanza = #"1. "
        Na ju -- riš, na ju -- riš, na ju -- riš!
        Krik bor -- cev vi -- hra sko -- zi ho -- ste,
        so -- vra -- go -- ve vr -- ste so go -- ste.
        U -- da -- ri, na -- va -- li, u -- se -- kaj, iz -- pa -- li!
        Na ju -- riš, o -- hej, par -- ti -- zan,
        pred ta -- bo svo -- bo -- de je dan!
      }
    }
%     \context Lyrics = "buttonsII" {
%       \lyricsto "melody" {
%         \M "5" "A7"
%       }
%     }
%     \context Lyrics = "buttonsI" {
%       \lyricsto "melody" {
%         \M "2" "B5"
%       }
%     }

  \new Dynamics \with {
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = 1
  } {
    \startPush
    s8
    s2*2
    \stopPush
    s2*4
    \startPush
    s2*2
    \stopPush
    s2*2
    \startPush
    s2*3
    \stopPush
    s2*3
    \startPush
    s2*2
    \stopPush
    s2*4
    \startPush
    s2*3 s4
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
%     \basses
    \partial 8
    c8 |
    c4 c8. c16 |
    c4 c8. c16 |
    c2 |
    c4. c8 |
    c4 c8. c16 |
    c4 c8 c8 |
    c4 c4 |
    c4 c8 c8 |
    c4 c8. c16 |
    c4 c8. c16 |
    c4 c4 |
    c4 c8 c8 |
    c4 c8 c8 |
    c8 c c c |
    c4 c8 c8 |
    c8 c c c |
    c4 c8. c16 |
    c4 c8. c16 |
    c4 c4 |
    c4 c4 |
    c4 c8. c16 |
    c8. c16 c8. c16 |
    c4 c4 |
    c4 r8 c8 |
    %
    c4 c4 |
    c4 s4 |
  }
  \new FiguredBass {
    \figuremode {
      \partial 8 <4>8 |
      <2>4 <9>8. <4>16 |
      <2>4 <9>8. <4>16 |
      <4>2 |
      <4 3>4. <4 3>8 |
      <4 3>4 <4 3>8. <4 3>16 |
      <4 3>4 <4 3>8 <4 3>8 |
      <4 3>4 <4 3>4 |
      <4 3>4 <4 3>8 <4 3>8 |
      <4 3>4 <4 3>8. <4 3>16 |
      <4 3>4 <4 3>8. <4 3>16 |
      <4 3>4 <4 3>4 |
      <4 3>4 <4 3>8 <4 3>8 |
      %
      <6 5>4 <6 5>8 <6 5>8 |
      <4 3>8 <4 3>8 <4 3>8 <4 3>8 |
      <6 5>4 <6 5>8 <6 5>8 |
      <6 5>8 <6 5>8 <6 5>8 <6 5>8 |
      <6 5>4 <6 5>8. <6 5>16 |
      <6 5>4 <6 5>8. <6 5>16 |
      <4 3>4 <4 3>4 |
      <4 3>4 <4 3>4 |
      <4 3>4 <4 3>8. <4 3>16 |
      <4 3>8. <4 3>16 <4 3>8. <4 3>16 |
      <4 3>4 <4 3>4 |
      <4 3>4 s8 <4 3>8 |
      %
      <4 3>4 <4 3>4 |
      <4 3>4 s4 |
    }
  }
>>

\layout {
%   ragged-last = ##t
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
  \line {
    { \bold 2. }
    \column {
      "Na juriš, na juriš, na juriš,"
      "maščujmo požgane domove,"
      "maščujmo vse naše grobove!"
      "Preženi besneče"
      "in reši trpeče!"
      "Na juriš, o-hej, partizan,"
      "pred tabo svobode je dan!"
    }
    { \bold 3. }
    \column {
      "Na juriš, na juriš, na juriš,"
      "požgimo vsa gnila drevesa,"
      "zemljo spremenimo v nebesa,"
      "vsem sonce naj sije,"
      "le radost naj klije!"
      "Na juriš, o-hej, partizan,"
      "pred tabo svobode je dan!"
    }
    { \bold 4. }
    \column {
      "Na juriš, na juriš, na juriš,"
      "vsi bratje teptani za nami,"
      "svobodo si vzamemo sami!"
      "Skoz glad in trpljanje"
      "v lepše življenje!"
      "Na juriš, o-hej, partizan,"
      "pred tabo svobode je dan!"
    }
  }
}
