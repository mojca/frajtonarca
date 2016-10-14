# Creating scores for diatonic accordion with LilyPond

This is a collection of ideas and snippets with scores for diatonic accordion
to support notation widely spread in Slovenia.

## Requirements

This will be a short description about requirements for typesetting tablatures for diatonic accordion.

In short the following features would be neat to have:

* define which buttons are present and define the pitches belonging to individual buttons
* being able to input scores in *ABC* notation with button names (like *B4*, *C3*, ...) and automatically get the corresponding pitch
* if a different tuning is used, automatically transpose the scores to that tuning
* allow placement of nicely aligned button names on top of the scores
  * control the markup (colour, font, ...) of button names
  * 
* optionally add finger numbers
  * control the markup and placement (in front of button name, in a separate top row above button names, next to the pitches, below the pitches, ...)
  * place just finger numbers or just button names or both or mixed
* enter basses just once (either as numbers or in letters: C, c, F, f, ...) and print any combination of the following:
  * button number
  * finger number
  * chord (with musical notes)
  * chord with a letter
* add notation to differentiate between push and pull
  * either with `\upbow` and `\downbow`
  * or with horizontal lines

## Specification / Documentation

### Melody

*(TODO)*

### Basses

There are many different types of accordions around, but a typical 3-row accordion in Slovenia with a CFB tuning would have the following pitches on its 11 buttons (played with the left hand):

| Button nr. | Name | Pitch (push) | Name | Pitch (pull) |
| ---------- | ---- | ------------ | ---- | ------------ |
|          1 | c    | `<e g c'>  ` | g    | `<g h d'>`   |
|          2 | C    | `c,        ` | G    | `g,      `   |
|          3 | f    | `<f a c'>  ` | c    | `<e g c'>`   |
|          4 | F    | `f,        ` | C    | `c,      `   |
|          5 | b    | `<d f b>   ` | f    | `<f a c'>`   |
|          6 | B    | `b,,       ` | F    | `f,      `   |
|          7 | G    | `g,        ` | E    | `e,      `   |
|          8 | a    | `<e a cis'>` | dm   | `<f a d'>`   |
|          9 | A    | `a,        ` | D    | `d,      `   |
|         10 | d    | `<fis a d'>` | es   | `<g b d'>`   |
|         11 | D    | `d,        ` | Es   | `es,     `   |

#### Desired input

There are several possible ways to input the basses:

1. enter button numbers (some sort of `| 4 3 3 | 2 3 3 |`): fast & the easiest (potentially prone to errors if playing direction is wrong)
2. enter pitch/chord names (some sort of `| F f f | C f f |`): fast & easy
3. enter full chords: super tedious (but useful when importing from MIDI files)

At the moment this is the shortcut I use for entering chords as numbers:
```lilypond
\new FiguredBass {
  \figuremode {
    \repeat unfold 2 { <2>4 <3> <3> | <4> <3> <3> | } % pull
    \repeat unfold 4 { <4>4 <3> <3> | <2> <3> <3> | } % push
    \repeat unfold 2 { <2>4 <3> <3> | <4> <3> <3> | } % pull
    <6>4 <5> <5> | % push
    <4>4 <9> <7> | % pull
    <6 5>2.      | % pull
  }
}
```
This type of input is perfectly OK, the visual result is fully satisfying, there is sufficient information for the player to perform the piece from the scores.

But there are certain shortcomings:

* I'm unable to automatically convert that input into either of the following:
  * names (to get `| F f f | C f f |` out of `| 4 3 3 | 2 3 3 |` if desired)
  * proper chords for the printout (so that, say, a piano could perform the same piece)
  * proper music in the MIDI file
* I'm not even able to automatically convert that to `RhythmicStaff`, so I usually have to add something like

  ```lilypond
  \new RhythmicStaff {
    \repeat unfold 10 { c4 c c | }
    c2. |
  }
  ```

  to get unambiguity.

Ideally the input would also be supplemented with the information about the playing direction (in theory I'm already entering the playing direction in the melody part with an `AccordionPushSpanEvent`: `\startPush` & `\stopPush`, but I was told that it is a bit tricky to use that information from another stave).

#### Desired output

There are multiple ways to represent how to play the basses. Depending on the score writer, style, skill of the target audience, space limitations, etc., the following notations are common:

1. write down just the button numbers:

   `| 4 3 3 | 2 3 3 | 4 3 3 | 2 3 3 | ...`
   
   *(Most often the rhythm is simple & constant, so the durations don't always need to be explicit and that saves a lot of space. Numbers alone are not too 'educative' though.)*

2. write down the pitch/chord names:

   `| F f f | C f f | F f f | C f f | ...`
   
   *(Total beginners without any background in music theory would prefer button numbers.)*

3. engrave full chords

4. engrave simplified chords

   C major (usually represented by `<e g c'>`) would be represented by `c`; the other button has `c,`, so it's clear which one is meant

5. add `RhythmicStaff` to (1.) or (2.)

   *(Not really common. I use it myself at the moment to add unambiguity without having to type in all the chords manually, but this notation needs relatively lots of space and the melody could just as well be represented by proper chords with hardly more space being used.)*

6. combination of (1.) and (3.): full chords + numbers

7. add finger numbers to any above mentioned notation

   *(Rare, but sometimes useful, in particular for total beginners or when the playing pattern is more complex.)*

#### Desired features

1. Enter playing direction, button numbers (or chord names) with durations just once.
2. Define the mapping of buttons on the specific accordion for which the scores are written
3. Get any of the output mentioned above + MIDI file automatically.
4. Reverse: get button numbers (or chord names) from full chords
   
   *(say, when importing music from MIDI file; only as a bonus feature)*


#### Additional desired features

* Shorten the duration of basses in MIDI files.

   When the basses are written as `f,4 <f a c'>4 <f a c'>4`, they are generally played shorter, for example as `f,8 r8 <f a c'>8 r8 <f a c'>8 r8`. Sometimes the pitches/chored are writted with dotted notation. The graphical output should generally be simplified and composed of quarter notes, but it would be awesome if one could get shortened pitches/chords in the midi file without having to rewrite or duplicate the input. I imagine having a function that accepts music with one additional parameter (percentage of duration – set to 50% or 100% by default) and transforms it to shortened pithes for use in the midi file.

## Playground

### Horizontal lines to mark pushes

### Markup for push and pull

## Special thanks

* *David Kastrup*
  * extensive help on the mailing list
  * a lot of initial work to support accordion ([snippet](http://lilypond.org/doc/v2.19/Documentation/snippets/templates#templates-score-for-diatonic-accordion))
* *David Nalesnik*
  * `AccordionPushSpanner`, a thick line spanning between the staves when the accordion is pushed ([ml](http://lists.gnu.org/archive/html/lilypond-user/2016-07/msg00392.html))
* *Simon Albrecht*
  * placement of push/pull markup ([ml](http://lists.gnu.org/archive/html/lilypond-user/2016-07/msg00388.html))
