%% -*- coding:utf-8 -*-    lilypond source file
%%
%% Gabriel Fauré, Requiem (1887)
%%
%% (C) 2013 Johannes Rohrer <src@johannesrohrer.de>
%%
%% This work is licensed under the Creative Commons
%% Attribution-ShareAlike 3.0 Unported License. To view a copy of this
%% license, visit http://creativecommons.org/licenses/by-sa/3.0/ or
%% send a letter to Creative Commons, 444 Castro Street, Suite 900,
%% Mountain View, California, 94041, USA.
%%
%% References:
%%
%%   [1] First edition, J. Hamelle, n.d. (1901), plate J. 4650 H.
%%       Reprinted by Edwin F. Kalmus & Co., Inc., Publishers of Music,
%%       Boca Raton, Florida. Public domain.
%%       <http://imslp.org/wiki/Requiem,_Op.48_%28Faur%C3%A9,_Gabriel%29>

\version "2.16.0"

#(load "get-revision-str.scm")
#(if (not (defined? 'revision-string)) (define revision-string "unknown"))

%% from <http://lists.gnu.org/archive/html/lilypond-user/2010-04/msg00057.html>
%% (2010-04-05) by Robin Bannister
#(define-markup-command (mm-feed layout props amount) (number?)
 (let ((o-s (ly:output-def-lookup layout 'output-scale)))
   (ly:make-stencil "" '(0 . 0) (cons 0 (abs (/ amount o-s))))))
#(define-markup-command (put-mm layout props dir amount arg)
 (ly:dir? number? markup?) (interpret-markup layout props
   (markup #:put-adjacent Y dir arg #:mm-feed amount)))


copyrightText = \markup \put-mm #UP #4 \column {
  \line { "Edition Aix Vocalis © 2013 Johannes Rohrer." }
  \line { "Diese Fassung darf verwendet werden unter den Bedingungen der Lizenz " }
  \line {
    \italic "Creative Commons Namensnennung – Weitergabe unter gleichen Bedingungen 3.0 Unported."
  }
  \with-url #"http://creativecommons.org/licenses/by-sa/3.0/deed.de"
  \line { \typewriter "http://creativecommons.org/licenses/by-sa/3.0/deed.de" }
  \line {
    "This edition may be used according to the terms of the "
    \italic "Creative Commons Attribution—ShareAlike 3.0 Unported"
    " License."
  }
  \with-url #"http://creativecommons.org/licenses/by-sa/3.0/"
  \line { \typewriter "http://creativecommons.org/licenses/by-sa/3.0/" } 
}

taglineText = \markup {
  \with-url #"http://lilypond.org/"
  \line {
    "Music engraving by LilyPond"
    $(lilypond-version)
    "–"
    \typewriter "www.lilypond.org"
  }
  " · "
  "score revision: " \revision-string
}

\header {
  title = "Requiem"
  composer = "Gabriel Fauré (1845–1924)"
  opus = "op. 48"
  dateComposed = "1887"
  copyright = \copyrightText
  tagline = \taglineText
}

#(set-global-staff-size 16)

\paper {
  papersize = "a4"
  two-sided = ##t
  top-margin = 10\mm
  bottom-margin = 15\mm
  outer-margin = 20\mm
  inner-margin = 10\mm
  binding-offset = 2\mm
  indent = 7\mm
  markup-system-spacing #'padding = #2  % default 0.5
  score-markup-spacing #'padding = #5   % default 0.5
  system-system-spacing #'padding = #3  % default 1
  bookTitleMarkup = \markup {
    %% overrides default from ly/titling-init.ly
    \override #'(baseline-skip . 3.5)
    \column {
      \column {
        \fill-line {
          \fontsize #5 \bold \fromproperty #'header:title
        }
        \fill-line {
          \fromproperty #'header:poet
          { \large \bold \fromproperty #'header:instrument }
          \fromproperty #'header:composer
        }
        \fill-line {
          \fromproperty #'header:meter
          \fromproperty #'header:arranger
        }
        \fill-line {
          \null
          \line {
            \concat { \fromproperty #'header:opus
                      " (" \fromproperty #'header:dateComposed ")" }
          }
        }
      }
    }
  }
  scoreTitleMarkup = \markup \column {
    %% overrides default from ly/titling-init.ly
    \put-mm #DOWN #2 \line {
      \fontsize #3 \bold \fromproperty #'header:piece
    }
    \put-mm #DOWN #3 \line {
      \fromproperty #'header:pieceIntroText
    }
  }
}

\layout {
  \context {
    \Score
    markFormatter = #format-mark-box-alphabet
    skipBars = ##t
    \override DynamicTextSpanner #'style = #'none
    \override BarNumber #'font-size = #2
    \override BarNumber #'self-alignment-X = #CENTER
    %% displace rehearsal marks over clefs a bit to the right to avoid
    %% having to evade the bar numbers vertically
    \override Clef #'break-align-anchor = #3.0
  }
  \context {
    \Staff
    \RemoveEmptyStaves
    \override VerticalAxisGroup #'remove-first = ##t
    \override InstrumentName #'self-alignment-X = #RIGHT
    \override InstrumentName #'padding = #1  % default 0.3
  }
}

%% So far, we manually hard-code horizontal offsets to center on the
%% main dynamic text of the commented mark. It would be more elegant
%% to calculate them automatically using the mechanisms employed in
%% <http://lsr.dsi.unimi.it/LSR/Snippet?id=739>.
commentedDynamic =
#(define-music-function
  (parser location commentA dynamictext commentB htranslate)
  (string? string? string? number?)
  (make-dynamic-script
   #{
     \markup {
       \null
       \translate #(cons htranslate 0) {
         \normal-text { \italic $commentA }
         \dynamic { $dynamictext }
         \normal-text { \italic $commentB }
       }
     }
   #}))

menop = \commentedDynamic "meno" "p" "" #-13.8
fsempre = \commentedDynamic "" "f" "sempre" #7.2
ffsempre = \commentedDynamic "" "ff" "sempre" #7.3
pdolce =  \commentedDynamic "" "p" "dolce" #5.2
ppdolcissimo = \commentedDynamic "" "pp" "dolcissimo" #10.5
ppsempre = \commentedDynamic "" "pp" "sempre" #7.5
ppsostenuto = \commentedDynamic "" "pp" "sostenuto" #9.0
semprepp = \commentedDynamic "sempre" "pp" "" #-19.0
semprep = \commentedDynamic "sempre" "p" "" #-17.0
sempref = \commentedDynamic "sempre" "f" "" #-16.5

crescmolto =
%% TODO: "molto" should appear at around half the spanner length
#(make-music 'CrescendoEvent
             'span-direction START
             'span-type 'text
             'span-text "cresc. molto")

pocoapococresc =
#(make-music 'CrescendoEvent
             'span-direction START
             'span-type 'text
             'span-text "poco a poco cresc.")
pococresc =
#(make-music 'CrescendoEvent
             'span-direction START
             'span-type 'text
             'span-text "poco cresc.")


div = -\markup { \right-align "div." }
dolce = -\markup { \italic "dolce" }
dolcesempre = -\markup { \italic "dolce sempre" }
dolceespressivo = -\markup { \italic "dolce espressivo" }
dolcetranquille = -\markup { \italic "dolce tranquille" }
espress = -\markup { \italic "espress." }
sempre = -\markup { \italic "sempre" }
sempredolce = -\markup { \italic "sempre dolce" }
solo = -\markup { \right-align "Solo" }
sostenuto = -\markup { \italic "sostenuto" }

labelSopranos = "S"
labelSopranosShort = "S"
labelAltos = "A"
labelAltosShort = "A"
%% We do not distinguish altos and contraltos
labelContraltos = "A"
labelContraltosShort = "A"
labelTenors = "T"
labelTenorsShort = "T"
labelBasses = "B"
labelBassesShort = "B"
labelSopranoSolo = "S"
labelSopranoSoloShort = "S"
labelBaritoneSolo = "Bar"
labelBaritoneSoloShort ="Bar"

\include "introitetkyrie.ily"
\include "offertoire.ily"
\include "sanctus.ily"
\include "piejesus.ily"
\include "agnusdei.ily"
\include "liberame.ily"
\include "inparadisum.ily"

\book {
  \score { \IntroitEtKyrie }
  \score { \Offertoire }
  \score { \Sanctus }
  \score { \PieJesus }
  \score { \AgnusDei }
  \score { \LiberaMe }
  \score { \InParadisum }
}