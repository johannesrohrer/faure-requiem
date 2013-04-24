%% -*- coding:utf-8; LilyPond-master-file: "requiem_fauré.ly" -*-
%% lilypond source include file, created 2013-04
%%
%% Gabriel Fauré, Requiem (1887) - Title pages
%%
%% (C) 2013 Johannes Rohrer <src@johannesrohrer.de>
%%
%% This work is licensed under the Creative Commons
%% Attribution-ShareAlike 3.0 Unported License. To view a copy of this
%% license, visit http://creativecommons.org/licenses/by-sa/3.0/ or
%% send a letter to Creative Commons, 444 Castro Street, Suite 900,
%% Mountain View, California, 94041, USA.

pageTwoFooter = \markup \column {
  \fromproperty #'header:copyrightFull
  \vspace #0.5
  \fromproperty #'header:tagline
  \vspace #2
  \draw-hline
  \vspace #3
  \fill-line {
    \line {
      \general-align #Y #CENTER {
        \with-dimensions #'(0 . 40) #'(0 . 20)
        \epsfile #X #45 #"graphics/logo-aixvocalis.eps"
        \hspace #1
        \with-url #"http://aixvocalis.org"
        \column {
          \line {
            \AixVocalis "ist ein freier gemischter Chor aus Aachen."
          }
          \line {
            \AixVocalis "is a free mixed choir from Aachen, Germany."
          }
          \line { \typewriter "http://aixvocalis.org/" }
        }
      }
    }
    \hspace #1
    \general-align #Y #CENTER {
      \epsfile #X #12 #"graphics/qrcode-aixvocalis.eps"
    }
  }
}

titlingBookpart = \bookpart {
  \paper {
    #(define fonts (make-pango-font-tree
                    "Linux Libertine O"
                    "Linux Biolinum O"
                    "Inconsolata"
                    (/ staff-height pt 20)))
    bookTitleMarkup = \markup \column {
      \vspace #6
      \fill-line {
        \override #'(font-name . "Linux Libertine Capitals O")
        \fontsize #10
        \fromproperty #'header:composer
      }
      \vspace #6
      \fill-line {
        \fontsize #16
        \fromproperty #'header:title
      }
      \vspace #6
      \fill-line {
        \fontsize #10
        \fromproperty #'header:opus
      }
      \vspace #6
      \fill-line { \override #'(span-factor . 1/2) \draw-hline }
      \vspace #12
      \fill-line {
        \fontsize #6
        \fromproperty #'header:instrument
      }
      \vspace #12
      \fill-line {
        \fontsize #6
        \override #'(font-name . "Linux Biolinum O")
        "EDITION AIX VOCALIS"
      }
      \vspace #1
    }
    scoreTitleMarkup = \markup \null

    %% override TOC defaults defined in ly/toc-init.ly
    tocTitleMarkup = \markup \huge \column {
      \fill-line { \null "Inhaltsverzeichnis · Table of Contents" \null }
      \vspace #1.5
    }
    tocItemMarkup = \markup {
      \fill-line {
        \null
        \override #'(line-width . 70)
        \fill-with-pattern #1 #RIGHT .
          \fromproperty #'toc:text
          \fromproperty #'toc:page
        \null
      }
    }

    %% override footer defaults from ly/titling-init.ly
    oddFooterMarkup = \markup \on-the-fly #(on-page 2) \pageTwoFooter
  }

  \pageBreak

  \markup \column {
    \vspace #12
    \table-of-contents
  }
}
