%% -*- coding:utf-8; LilyPond-master-file: "requiem_fauré.ly" -*-
%% lilypond source include file, created 2013-04
%%
%% Gabriel Fauré, Requiem (1887) - Common definition for all scores
%%
%% (C) 2013 Johannes Rohrer <src@johannesrohrer.de>
%%
%% This work is licensed under the Creative Commons
%% Attribution-ShareAlike 3.0 Unported License. To view a copy of this
%% license, visit http://creativecommons.org/licenses/by-sa/3.0/ or
%% send a letter to Creative Commons, 444 Castro Street, Suite 900,
%% Mountain View, California, 94041, USA.

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


copyrightTextShort = \markup \put-mm #UP #4 \line {
  "Edition Aix Vocalis © 2013 Johannes Rohrer."
}

copyrightTextLong = \markup {
  \override #'(baseline-skip . 2.5)
  \column {
    \copyrightTextShort
    \vspace #0.3
    \justify {
      Die Komposition ist gemeinfrei, und diese Fassung basiert, bis
      auf den Klavierauszug, auf einer gemeinfreien Vorlage. Soweit
      für dieses Dokument und seine Quelldateien dennoch Urheberrechte
      bestehen, wird hiermit die Verwendung unter den Bedingungen der
      Lizenz \italic { Creative Commons Namensnennung – Weitergabe
      unter gleichen Bedingungen 3.0 Unported } gestattet.
    }
    \null
    \with-url #"http://creativecommons.org/licenses/by-sa/3.0/deed.de"
    \line {
      \typewriter
      "http://creativecommons.org/licenses/by-sa/3.0/deed.de"
    }
    \vspace #0.3
    \justify {
      The composition is in the Public Domain, and this edition is
      based, except for the piano reduction, on a Public Domain
      reference. Inasmuch as copyrights apply anyway for this document
      and its source files, permission is hereby granted to use them
      under the terms of the \italic { Creative Commons
      Attribution—ShareAlike 3.0 Unported } license.
    }
    \null
    \with-url #"http://creativecommons.org/licenses/by-sa/3.0/"
    \line {
      \typewriter "http://creativecommons.org/licenses/by-sa/3.0/"
    }
  }
}

taglineText = \markup \column {
  \with-url #"http://lilypond.org"
  \line {
    "Music engraving by LilyPond "
    #(lilypond-version)
    "—"
    \typewriter "www.lilypond.org"
  }
  \line {
    "Source files available on GitHub: "
    \with-url #"https://github.com/johannesrohrer/faure-requiem"
    \typewriter "https://github.com/johannesrohrer/faure-requiem"
    " · "
    "revision: "
    \revision-string
  }
}

AixVocalis = \markup {
  \override #'(font-name . "Linux Biolinum O") "AIX VOCALIS"
}

\header {
  title = "Requiem"
  composer = "Gabriel Fauré (1845–1924)"
  opus = "op. 48"
  dateComposed = "1887"
  copyright = \copyrightTextShort
  copyrightFull = \copyrightTextLong
  tagline = \taglineText
}

#(set-global-staff-size 16)


%% In newer LilyPond versions, these \on-the-fly helper procedures are
%% already defined in ly/titling-init.ly
#(define (part-first-page? layout props)
  (= (chain-assoc-get 'page:page-number props -1)
     (ly:output-def-lookup layout 'first-page-number)))

#(define (not-part-first-page layout props arg)
  (if (not (part-first-page? layout props))
      (interpret-markup layout props arg)
      empty-stencil))


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

  %% override default from ly/titling-init.ly
  bookTitleMarkup = \markup {
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

  %% override default from ly/titling-init.ly
  scoreTitleMarkup = \markup \column {
    \put-mm #DOWN #2 \line {
      \fontsize #3 \bold \fromproperty #'header:piece
    }
    \put-mm #DOWN #3 \line {
      \fromproperty #'header:pieceIntroText
    }
  }

  %% override header defaults from ly/titling-init.ly
  oddHeaderMarkup = \markup
  \fill-line {
    %% force the header to take some space, otherwise the
    %% page layout becomes a complete mess.
    " "
    \on-the-fly #print-page-number-check-first
      \on-the-fly #not-part-first-page \fromproperty #'page:page-number-string
  }
  evenHeaderMarkup = \markup
  \fill-line {
    \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    " "
  }

  %% override footer defaults from ly/titling-init.ly, removing the
  %% tagline on the last page (we include it within the titling
  %% section)
  oddFooterMarkup = \markup {
    \column {
      \fill-line {
        %% Copyright header field only on first page.
        \on-the-fly #part-first-page \fromproperty #'header:copyright
      }
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
  \context {
    \ChoirStaff
    \accidentalStyle #'ChoirStaff "modern-voice"
  }
  \context {
    \PianoStaff
    %% Useful while arranging: let rests (including spacer rests)
    %% prevent the piano staves from getting hidden, so blank staves
    %% can be printed where the arrangement is not finished yet.
    keepAliveInterfaces = #'(multi-measure-rest-interface
                             rhythmic-grob-interface
                             lyric-interface
                             stanza-number-interface
                             percent-repeat-interface)
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
psempre = \commentedDynamic "" "p" "sempre" #7.5
ppsempre = \commentedDynamic "" "pp" "sempre" #7.5
ppsostenuto = \commentedDynamic "" "pp" "sostenuto" #9.0
semprepp = \commentedDynamic "sempre" "pp" "" #-19.0
semprep = \commentedDynamic "sempre" "p" "" #-17.0
sempref = \commentedDynamic "sempre" "f" "" #-16.5

crescmolto =
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

atempo = -\markup { \italic "a tempo" }
div = -\tweak #'X-offset #-2 -\markup { \right-align "div." }
dolce = -\markup { \italic "dolce" }
dolcesempre = -\markup { \italic "dolce sempre" }
dolceespressivo = -\markup { \italic "dolce espressivo" }
dolceetranquille = -\markup { \italic "dolce e tranquille" }
espress = -\markup { \italic "espress." }
pocorall = -\markup { \italic "poco rall." }
sempre = -\markup { \italic "sempre" }
sempredolce = -\markup { \italic "sempre dolce" }
solo = -\markup { \right-align "Solo" }
sostenuto = -\markup { \italic "sostenuto" }
unisono = -\markup { \right-align "unis." }
unpocopiu = -\markup { \italic "un poco più" }

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
labelBassesI = "BI"
labelBassesShortI = "BI"
labelSopranoSolo = "S"
labelSopranoSoloShort = "S"
labelBaritoneSolo = "Bar"
labelBaritoneSoloShort ="Bar"
labelPiano = "Piano"

switchToBassesI = {
  \set Staff.shortVocalName = \labelBassesI
  <>^\tweak #'X-offset #-2 -\markup { \right-align "BI" }
}
switchToBassesAll = {
  \set Staff.shortVocalName = \labelBasses
  <>^\tweak #'X-offset #-2 -\markup { \right-align "BI/II" }
}
