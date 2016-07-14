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

*(TODO)*

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
