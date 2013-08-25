%% -*- coding:utf-8; LilyPond-master-file: "requiem_fauré.ly" -*-
%% lilypond source include file, created 2013-02
%%
%% Gabriel Fauré, Requiem (1887) - I. Introit et Kyrie
%%
%% (C) 2013 Johannes Rohrer <src@johannesrohrer.de>
%%
%% This work is licensed under the Creative Commons
%% Attribution-ShareAlike 3.0 Unported License. To view a copy of this
%% license, visit http://creativecommons.org/licenses/by-sa/3.0/ or
%% send a letter to Creative Commons, 444 Castro Street, Suite 900,
%% Mountain View, California, 94041, USA.

IntroitEtKyrieGlobal = {
  %% [1] p. 1
  \tempo "Molto largo" 4 = 40
  \time 4/4
  s1*6
  \mark\default % A, [1] p. 2
  s1*6
  \mark\default % B, [1] p. 4
  s1*5
  \bar "||"

  \tempo "Andante moderato" 4 = 72
  s1*6
  \mark\default % C, [1] p. 6
  s1*9
  \mark\default % D, [1] p. 8
  s1*7
  \mark\default % E, [1] p. 10
  s1*10
  \mark\default % F, [1] p. 13
  s1*11
  \mark\default % G, [1] p. 15
  s1*6
  \mark\default % H, [1] p. 17
  s1*8
  \mark\default % J, [1] p. 19
  s1*10
  \mark\default % K, [1] p. 21
  s1*7
  \bar "|."
}

IntroitEtKyrieCommon = {
  \key d \minor
}

IntroitEtKyrieTemplate = \relative {
  \clef "treble"
  %% [1] p. 1
  s1*4

  %% [1] p. 2
  s1*2
  %% A
  s1*2

  %% [1] p. 3
  s1*4

  %% [1] p. 4
  %% B
  s1*5


  %% [1] p. 5
  s1*4

  %% [1] p. 6
  s1*2
  %% C
  s1*2

  %% [1] p. 7
  s1*4

  %% [1] p. 8
  s1*3
  %% D
  s1*1

  %% [1] p. 9
  s1*4

  %% [1] p. 10
  s1*2
  %% E
  s1*2

  %% [1] p. 11
  s1*4

  %% [1] p. 12
  s1*4

  %% [1] p. 13
  %% F
  s1*4

  %% [1] p. 14
  s1*4

  %% [1] p. 15
  s1*3
  %% G
  s1*1

  %% [1] p. 16
  s1*4

  %% [1] p. 17
  s1*1
  %% H
  s1*3

  %% [1] p. 18
  s1*4

  %% [1] p. 19
  s1*1
  %% J
  s1*3

  %% [1] p. 20
  s1*5

  %% [1] p. 21
  s1*2
  %% K
  s1*2

  %% [1] p. 22
  s1*5
}

IntroitEtKyrieSopranos =  \relative a' {
  \clef "treble"
  %% [1] p. 1 "Requiem æternam dona"
  R1
  a4\(^\ppsostenuto a a4. a8
  a2 a\)
  r2 a4^\tweak #'extra-offset #'(-2 . -2) \semprepp\( a

  %% [1] p. 2 "eis domine et lux perpetua"
  a4 a c4. c8
  c2~\) c4 r |
  %% A
  r4 d^\< d d   % [1] has an additional "cresc." before the hairpin
  f4.^\f f8 f2

  %% [1] p. 3 "luceat / luceat"
  r4 d es es~
  es8 r r4 r bes^\>  % [1] has both "dim." and hairpin
  c4 c~ c8^\p r r4
  R1 |

  %% [1] p. 4 "luceat eis / luceat eis"
  %% B
  r4 es,='^\pp\( f f
  ges2 as\)
  r4 a^\ppp\( a a
  a1
  a2\)\fermata r2\fermata


  %% [1] p. 5-10
  %% R1*6
  %% R1*9 %% C
  %% R1*7 %% D
  %% R1*2 %% E
  R1*24

  %% [1] p. 11 "Te decet hymnus, Deus in Sion,"
  f='4(\(^\dolce bes) a bes
  es4( d) c\)\breathe d\(
  bes4 a g2
  f2~ f4\) r

  %% [1] p. 12 " et tibi reddetur votum in Jerusalem."
  f4\( bes a bes
  es4( d) c\) d\(
  bes4\breathe c8 d d4. cis8
  d2\) r2 |

  %% [1] p. 13 "exaudi / exaudi orationem meam"
  %% F
  f4^\ff f2 c4^\>\breathe  % [1]: Hairpin reversed
  a4^\p a2 d4
  f4^\ff\( f8 f f4 c^\>
  a2^\p a\)

  %% [1] p. 14 "ad te omnis caro veniet"
  r4 fis'=''2(^\ffsempre cis4)
  a4\breathe a2\( a4
  bes2. f4
  a4. a8 a2\)

  %% [1] p. 15 "omnis caro veniet"
  r4  bes2^\> f4                % [1]: textual "dim" instead of hairpin
  a2.^\p^\> a4\breathe
  a2.^\pp a4 |                  % [1]: \p again
  %% G
  a4 r r2

  %% [1] p. 16 "Kyrie / Kyrie / Kyrie e-"
  R1
  d=''4.\(^\dolceespressivo d8 a2
  c4. c8 a2\)\breathe
  d4.\( d8 a4 a

  %% [1] p. 17 "leison / Kyrie eleison / eleison / e-"
  c4. c8 a2\)\breathe |
  %% H
  f4^\< a d f                   % [1]: textual "cresc" inst. of hairpin
  c4.^\f c8 c4\breathe bes
  a4.^\> a8 a4 d

  %% [1] p. 18 "leison / Christe / Christe / Christe e-"
  d4.^\p d8 a2
  r4 es'=''2->^\ff es4^\>
  a,2^\p a
  r4 es'=''4^\ff es es4^\>

  %% [1] p. 19 "leison / Christ / Christe / elei-"
  a,4.^\p a8 a2 |
  %% J
  r4 bes='2^\semprep a4
  r4 gis2 e4
  r4 f\( f e

  %% [1] p. 20 "son / eleison"
  d2\) r
  R1*2
  r4 f^\pp\( e e
  d2\) r2

  %% [1] p. 21 "eleison"
  R1*2 |
  %% K
  r4 f4^\pp\( es es\)
  d1~

  %% [1] p. 22 "_ / eleison"
  d2~ d4 r
  R1
  r4 d^\pp d d
  d1~
  d1\fermata
}

IntroitEtKyrieAltos =  \relative f' {
  \clef "treble"
  %% [1] p. 1 "Requiem æternam dona"
  R1
  f4^\pp\( f f4. f8
  f2 f\)
  r2 a4^\tag #'aix -\tweak #'extra-offset #'(-2 . -1) -\semprepp\( a

  %% [1] p. 2 "eis domine et lux perpetua"
  a4 a a4. a8
  a2~\) a4 r |
  %% A
  r4 bes^\< bes bes  % [1] has an additional "cresc." before the hairpin
  c4.^\f c8 c2

  %% [1] p. 3 "luceat / luceat"
  r4 bes bes bes~
  bes8 r r4 r g^\>   % [1] uses textual "dim." only
  a4 a~ a8^\tag #'aix -\p r r4
  R1 |

  %% [1] p. 4 "luceat eis / luceat eis"
  %% B
  r4 bes,=\(^\tag #'aix -\pp c c
  des2 f\)
  r4 f^\ppp\( f f
  e2( b)
  cis2\)\fermata r2\fermata


  %% [1] p. 5-12
  %% R1*6
  %% R1*9  %% C
  %% R1*7  %% D
  %% R1*10 %% E
  R1*32

  %% [1] p. 13 "exaudi / exaudi orationem meam"
  %% F
  c'=''4^\tag #'aix -\ff c2 a4^\tag #'aix -\>\breathe
  f4^\tag #'aix -\p f2 a4
  c4^\tag #'aix -\ff c8 c c4 a^\tag #'aix -\>
  f2^\tag #'aix -\p f

  %% [1] p. 14 "ad te omnis caro veniet"
  r4 cis'=''2^\tag #'aix -\ffsempre ( a4)
  eis4\breathe eis2 eis4
  f2. f4
  f4. f8 f2

  %% [1] p. 15 "omnis caro veniet"
  r4 f2^\tag #'aix -\> f4
  f2.^\tag #'aix -\p^\tag #'aix -\p c4\breathe
  cis2.^\tag #'aix -\pp cis4 |
  %% G
  d4 r r2

  %% [1] p. 16 "Kyrie / Kyrie / Kyrie e-"
  R1
  d'=''4.\(^\tag #'aix -\dolceespressivo d8 a2
  c4. c8 a2\) \breathe
  d4.\( d8 a4 a

  %% [1] p. 17 "leison / Kyrie eleison / eleison / e-"
  c4. c8 a2\) \breathe |
  %% H
  a,=4 d f a
  c4. c8 c4\breathe bes
  a4. a8 a4 f

  %% [1] p. 18 "leison / Christe / Christe / Christe e-"
  d4 g a2
  r4 fis2->^\tag #'aix -\ff fis4^\tag #'aix -\>
  g2^\tag #'aix -\p g
  r4 fis4^\tag #'aix -\ff fis fis^\tag #'aix -\>

  %% [1] p. 19 "leison / Christe / Christe / elei-"
  g4.^\tag #'aix -\p g8 g2 |
  %% J
  r4 f2^\tag #'aix -\semprep f4
  r4 e2 e4
  r4 c\( c cis

  %% [1] p. 20 "son / eleison"
  d2\) r
  R1*2
  r4 f4\(^\tag #'aix -\pp e e
  d2\) r

  %% [1] p. 21 "eleison"
  R1*2 |
  %% K
  r4 f^\tag #'aix -\pp es es
  d1 ~

  %% [1] p. 22 "_ / eleison"
  d2~ d4 r
  R1
  r4 d^\tag #'aix -\pp d d
  d1~
  d1\fermata
}

IntroitEtKyrieTenors =  \relative d' {
  \clef "treble_8"
  %% [1] p. 1 "Requiem æternam dona"
  R1
  <<
    {
      \voiceOne
      d4^\tag #'aix \div ^\pp \(
        d d4. d8 | d2 d \)
    }
    \context Voice = "tenorsII" { \voiceTwo a4 a a4. a8 | a2 a }
  >> \oneVoice
  r2 <<
    {
      \voiceOne
      e'='4^\tag #'aix -\tweak #'extra-offset #'(-2 . -2.5) -\semprepp\( e
    }
    \context Voice = "tenorsII" { \voiceTwo c4 c }
  >>

  %% [1] p. 2 "eis domine et lux perpetua"
  <<
    { \voiceOne e4 e f4. f8 | f2~\) f4 }
    \context Voice = "tenorsII" { \voiceTwo c4 c c4. c8 | c2~ c4 }
  >> \oneVoice r4
  %% A
  r4 <<
   %% [1] has an additional "cresc." before the hairpin
    { \voiceOne f4^\< f f | f4.^\f f8 f2 }
    \context Voice = "tenorsII" { \voiceTwo d4 d d | c4. c8 c2 }
  >> \oneVoice

  %% [1] p. 3 "luceat / luceat"
  r4 <<
    { \voiceOne d4 es es~ | es8 }
    \context Voice = "tenorsII" { \voiceTwo bes4 bes bes~ | bes8 }
  >> \oneVoice r8 r4 r bes4^\>   % [1] uses textual "dim." only
                           ^\tag #'aix -\tweak #'X-offset #-1 -\unisono
  c4 c~ c8^\tag #'aix -\p r r4
  R1 |

  %% [1] p. 4 "luceat eis / luceat eis"
  %% B
  r4 g^\tag #'aix -\pp\( a a
  bes2 ces\)
  r4 a4\( a a
  g2( f)
  e2\)\fermata r2\fermata


  %% [1] p. 5 "Requiem æternam"
  R1*2
  d'='4.^\tweak #'X-offset #-2 ^\tweak #'Y-offset #-3 \p
        ^\tweak #'X-offset #1 \dolceespressivo \(
    d8 a4. a8
  c2 a\)

  %% [1] p. 6 "dona eis domine et lux perpetua lu-"
  d4.\( d8 a4 a
  c4. c8 a2\)
  %% C
  f4(^\< a) d f  % [1]: additional "cresc." before hairpin
  c4.^\f c8 c4\breathe bes4\(

  %% [1] p. 7 "ceat eis"
  a4 a2( d4)
  d2^\> a\!\)
  R1*2

  %% [1] p. 8 "requiem æternam dona / dona eis"
  d4.^\dolce\( d8 a4. a8
  c2 a\)\breathe
  f4(^\< a) d( f) % [1]: additional "cresc." before hairpin
  %% D
  e4.^\f\( e8 e4 d8( f)

  %% [1] p. 9 "domine et lux perpetua luceat e-"
  e4. d8 c4\) r
  r4 c^\sempref \( c b8( a)
  c4. c8 c4 bes4
  a4^\> a a( gis)               % [1] indicates \p at the BEGINNING of
                                % the decrescendo hairpin

  %% [1] p. 10-12 "is"
  a4\p\) r r2
  %% R1
  %% R1*10 %% E
  R1*11

  %% [1] p. 13 "exaudi / exaudi orationem meam"
  %% F
  %% [1]: divisi notated as chords
  <<
    {
      \voiceOne
      f'='4^\tag #'aix -\ff ^\tag #'aix \div
        f2 f4^\tag #'aix -\> \breathe
      d4^\tag #'aix -\p d2 f4
      f4^\tag #'aix -\ff f8 f f4 f^\tag #'aix -\>
      cis2^\tag #'aix -\p cis
    }
    \context Voice = "tenorsII" {
      \voiceTwo
      c='4 c2 c4 | d4 d2 d4 | c4 c8 c c4 c | cis2 cis
    }
  >> \oneVoice

  %% [1] p. 14 "ad te omnis caro veniet"
  r4 <<
    { \voiceOne fis='2.^\tag #'aix -\ffsempre | eis4\breathe cis2 cis4 }
    \context Voice = "tenorsII" { \voiceTwo cis='2. | cis4 cis2 cis4 }
  >> \oneVoice |
  des2.^\tag #'aix \tweak #'X-offset #2 \unisono des4
  des4. des8 des2

  %% [1] p. 15 "omnis caro veniet"
  r4 des2^\tag #'aix -\> des4
  c2.^\tag #'aix -\p^\tag #'aix -\> a4\breathe
  a2.^\tag #'aix -\pp a4 |
  %% G
  f4 r r2

  %% [1] p. 16 "Kyrie / Kyrie / Kyrie e-"
  R1
  d'='4.\(^\tag #'aix -\dolceespressivo d8 a2
  c4. c8 a2\) \breathe
  d4.\( d8 a4 a

  %% [1] p. 17 "leison / Kyrie eleison / eleison / e-"
  c4. c8 a2\) \breathe |
  %% H
  r2 a4( d)
  f4 c d\breathe e
  e4. e8 d4 d8( e)

  %% [1] p. 18 "leison / Christe / Christe / Christe e-"
  f4 d cis2
  r4 c2->^\tag #'aix -\ff c4^\tag #'aix -\>
  cis2^\tag #'aix -\p cis
  r4 c^\tag #'aix -\ff c c^\tag #'aix -\>

  %% [1] p. 19 "leison / Christe / Christe / elei-"
  cis4.^\tag #'aix -\p cis8 cis2 |
  %% J
  r4 bes2^\tag #'aix -\semprep c4
  r4 c2 c4
  r4 a\( a g

  %% [1] p. 20 "son / eleison"
  f2\) r
  R1*2
  r4 f\(^\tag #'aix -\pp e e
  d2\) r

  %% [1] p. 21 "eleison"
  R1*2 |
  %% K
  r4 f^\tag #'aix -\pp es es
  d1 ~

  %% [1] p. 22 "_ / eleison"
  d2~ d4 r4
  R1
  r4 d^\tag #'aix -\pp d d
  d1~
  d1\fermata
}

IntroitEtKyrieBasses =  \relative f {
  \clef "bass"
  %% [1] p. 1 "Requiem æternam dona"
  R1
  <<
    {
      \voiceOne
      f4^\tag #'aix \div ^\pp \(
        f f4. f8 | f2 f\)
    }
    \context Voice = "bassesII" { \voiceTwo d4 d d4. d8 | d2 d }
  >> \oneVoice
  r2 <<
    {
      \voiceOne
      a'=4^\tag #'aix -\tweak #'extra-offset #'(-2 . -3) -\semprepp \( a
    }
    \context Voice = "bassesII" { \voiceTwo c,=4 c }
  >>

  %% [1] p. 2 "eis domine et lux perpetua"
  <<
    { \voiceOne a'=4 a a4. a8 | a2~\) a }
    \context Voice = "bassesII" { \voiceTwo c,=4 c c4. c8 | c2~ c }
  >> \oneVoice
  %% A
  r4 <<
   %% [1] has an additional "cresc." before the hairpin
    { \voiceOne bes'=4^\< bes bes | c4.^\f c8 c2 }
    \context Voice = "tenorsII" { \voiceTwo f,=4 f f | f4. f8 f2 }
  >> \oneVoice

  %% [1] p. 3 "luceat / luceat"
  r4 <<
    { \voiceOne bes=4 bes bes~ | bes8 }
    \context Voice = "tenorsII" { \voiceTwo f4 es es~ | es8 }
  >> \oneVoice r8 r4 r g4^\>  % [1] has both "dim." and hairpin
                         ^\tag #'aix -\tweak #'X-offset #-1 -\unisono
  a4 a~ a8^\p r r4
  R1 |

  %% [1] p. 4 "luceat eis / luceat eis"
  %% B
  r4 es^\tag #'aix -\pp\( es es
  des2 des\)
  r4 c\( c c
  cis2( d)
  a2\)\fermata r\fermata


  %% [1] p. 5-12
  %% R1*6
  %% R1*9  %% C
  %% R1*7  %% D
  %% R1*10 %% E
  R1*32

  %% [1] p. 13 "exaudi / exaudi orationem meam"
  %% F
  a'=4^\tag #'aix -\ff a2 a4^\tag #'aix -\>\breathe
  a4^\tag #'aix -\p a2 a4
  a4^\tag #'aix -\ff a8 a a4 a^\tag #'aix -\>
  a2^\tag #'aix -\p a

  %% [1] p. 14 "ad te omnis caro veniet"
  r4 a2.^\tag #'aix -\ffsempre
  a4\breathe a2 a4
  %% divisi written as chords in [1]
  <<
    { \voiceOne f2. bes4^\div | a4. a8 a2 }
    \context Voice = "bassesII" { \voiceTwo f2. f4 | f4. f8 f2 }
  >> \oneVoice

  %% [1] p. 15 "omnis caro veniet"
  r4 <<
    {
      \voiceOne
      f=2^\tag #'aix -\> bes4
      a2.^\tag #'aix -\p^\tag #'aix -\> f4\breathe
      f2.^\tag #'aix -\pp f4 |
      %% G
      d4
    }
    \context Voice = "bassesII" {
      \voiceTwo
      f=2 f4 | f2. f4 | a,2. a4 | d4
    }
  >>  \oneVoice r4 r2

  %% [1] p. 16-17 "Kyrie eleison / eleison / e-"
  R1*5
  %% H
  d=4^\tag #'aix \unisono f a a
  a4. a8 f4\breathe c'
  c4. c8 f,4 g

  %% [1] p. 18 "leison / Christe / Christe / Christe e-"
  a4 b a2
  r4 a2->^\tag #'aix -\ff a4^\tag #'aix -\>
  a2^\tag #'aix -\p a
  r4 a^\tag #'aix -\ff a a^\tag #'aix -\>

  %% [1] p. 19 "leison / Christe / Christe / elei-"
  a4.^\tag #'aix -\p a8 a2 |
  %% J
  d,=4.(^\tag #'aix -\semprep e8) f2
  c4.( d8) e2
  r4 a,\( a a

  %% [1] p. 20 "son / eleison"
  d2\) r
  R1*2
  r4 f4\(^\tag #'aix -\pp e e
  d2\) r

  %% [1] p. 21 "eleison"
  R1*2
  %% K
  r4 f4^\tag #'aix -\pp es es
  d1~

  %% [1] p. 22 "_ / eleison"
  d2~ d4 r
  R1
  r4 d^\tag #'aix -\pp d d
  d1~
  d1\fermata
}


IntroitEtKyrieText = \markup {
  \column {
    "Requiem æternam dona eis, Domine,"
    "et lux perpetua luceat eis."
    "Te decet hymnus, Deus, in Sion,"
    "et tibi reddetur votum in Jerusalem:"
    "exaudi orationem meam, ad te omnis caro veniet."
    "Kyrie eleison. Christe eleison."
  }
}

IntroitEtKyrieTextDE = \markup {
  \column {
    "Herr, gib ihnen die ewige Ruhe,"
    "und das ewige Licht leuchte ihnen."
    "Dir gebührt ein Loblied, Gott, in Zion,"
    "und dir soll man Gelübde einlösen in Jerusalem:"
    "erhöre mein Gebet, zu dir kommt alles Fleisch."
    "Herr, erbarme dich. Christus, erbarme dich."
  }
}

IntroitEtKyrieTextCombined = \markup {
  \line {
    \IntroitEtKyrieText
    \hspace #3
    \italic \IntroitEtKyrieTextDE
  }
}

IntroitEtKyrieLyricsCommonA = \lyricmode {
  Re -- qui -- em æ -- ter -- nam do -- na e -- is, Do -- mi -- ne,
  et lux per -- pe -- tu -- a lu -- ce -- at,
    lu -- ce -- at,
    lu -- ce -- at e -- is,
    lu -- ce -- at e -- is.
}

IntroitEtKyrieLyricsCommonB = \lyricmode {
  ex -- au -- di,
  ex -- au -- di o -- ra -- ti -- o -- nem me -- am,
  ad __ te om -- nis ca -- ro ve -- ni -- et,
  om -- nis ca -- ro ve -- ni -- et.
}

IntroitEtKyrieLyricsCommonC = \lyricmode {
  Chris -- te,
  Chris -- te e -- le -- i -- son,
  e -- le -- i -- son,
  e -- le -- i -- son, __
  e -- le -- i -- son. __
}

IntroitEtKyrieLyricsSopranos = \lyricmode {
  \IntroitEtKyrieLyricsCommonA

  Te de -- cet hym -- nus, De -- us, in Si -- on,
  et ti -- bi red -- de -- tur vo -- tum in Je -- ru -- sa -- lem:

  \IntroitEtKyrieLyricsCommonB

  Ky -- ri -- e,
  Ky -- ri -- e,
  Ky -- ri -- e e -- le -- i -- son,

  Ky -- ri -- e e -- le -- i -- son,
  e -- le -- i -- son,
  e -- le -- i -- son.

  Chris -- te,
  Chris -- te,
  Chris -- te e -- le -- i -- son,

  \IntroitEtKyrieLyricsCommonC
}

IntroitEtKyrieLyricsAltos = \lyricmode {
  \IntroitEtKyrieLyricsCommonA
  \IntroitEtKyrieLyricsCommonB

  Ky -- ri -- e,
  Ky -- ri -- e,
  Ky -- ri -- e e -- le -- i -- son,

  Ky -- ri -- e e -- le -- i -- son,
  e -- le -- i -- son,
  e -- le -- i -- son.

  Chris -- te,
  Chris -- te,
  Chris -- te e -- le -- i -- son,

  \IntroitEtKyrieLyricsCommonC
}

IntroitEtKyrieLyricsTenors = \lyricmode {
  \IntroitEtKyrieLyricsCommonA

  Re -- qui -- em æ -- ter -- nam
  do -- na e -- is, Do -- mi -- ne,
  et lux per -- pe -- tu -- a
  lu -- ce -- at e -- is.


  Re -- qui -- em æ -- ter -- nam
  do -- na do -- na e -- is, Do -- mi -- ne,
  et lux per -- pe -- tu -- a
  lu -- ce -- at e -- is.

  \IntroitEtKyrieLyricsCommonB

  Ky -- ri -- e,
  Ky -- ri -- e,
  Ky -- ri -- e e -- le -- i -- son,

  e -- le -- i -- son,
  e -- le -- i -- son,
  e -- le -- i -- son.

  Chris -- te,
  Chris -- te,
  Chris -- te e -- le -- i -- son,

  \IntroitEtKyrieLyricsCommonC
}

IntroitEtKyrieLyricsBasses = \lyricmode {
  \IntroitEtKyrieLyricsCommonA
  \IntroitEtKyrieLyricsCommonB

  Ky -- ri -- e e -- le -- i -- son,
  e -- le -- i -- son,
  e -- le -- i -- son.

  Chris -- te,
  Chris -- te,
  Chris -- te e -- le -- i -- son,

  \IntroitEtKyrieLyricsCommonC
}


IntroitEtKyriePianoRedDyn = {
  %% [1] p. 1
  s1\ff\>
  s1\p
  s2. s4\<
  s4\ff\> s2.

  %% [1] p. 2
  s1\p
  s2. s4\<
  %% A
  s1\ff
  s1\moltosostenuto

  %% [1] p. 3
  s1
  s2 s4\> s4
  s4\p s2.
  s4\< s4 s2\sff\>

  %% [1] p. 4
  %% B
  s1\psempre
  s1*4


  %% Andante moderato, [1] p. 5
  s2\p\dolceespressivo s4\< s4
  s4\> s4 s2\!
  s1*2

  %% [1] p. 6
  s1*2
  %% C
  s4\< s2.
  s1\f

  %% [1] p. 7
  s1
  s4\> s2.
  s4\p s s\< s
  s4\> s s2\!

  %% [1] p. 8
  s1*2
  s1\<
  %% D
  s1\f

  %% [1] p. 9
  s1
  s1
  s4 s2.\>
  s1\p

  %% [1] p. 10
  s4 s2.\f
  s4 s2.\>
  %% E
  s4\! s2.\>
  s4\! s2.

  %% [1] p. 11
  s1\psempre
  s1*3

  %% [1] p. 12
  s1*3
  s4 s2.\<

  %% [1] p. 13
  %% F
  s2.\f s4\>
  s2.\p s4\<
  s4\f s2 s4\>
  s2.\p s4\<

  %% [1] p. 14
  s1\ffsempre
  s1*2
  s1\>

  %% [1] p. 15
  s1
  s1\p
  s1\pp
  %% G
  s4 s2.\<

  %% [1] p. 16
  s1\!
  s1*3

  %% [1] p. 17
  s1
  %% H
  s1\<
  s1\f
  s1\>

  %% [1] p. 18
  s2\p s2\<
  s2.\ff s4\>
  s2.\p s4\<
  s2.\ff s4\>

  %% [1] p. 19
  s1\p
  %% J
  s1\p
  s1*2

  %% [1] p. 20
  s1*2
  s1\<
  s4\mf\> s2\! s4
  s1

  %% [1] p. 21
  s1
  s1\<
  %% K
  s4\mf\> s2\! s4
  s1\psempre

  %% [1] p. 22
  s1*5
}

IntroitEtKyriePianoRedMD = \relative d' {
  \clef "treble"

  %% [1] p. 1
  d1-> ~
  d1 ~
  d2. d4
  c1 ~ |

  %% [1] p. 2
  c1 ~
  c2. c4
  %% A
  bes1-> ~
  bes4 bes a f' |

  %% [1] p. 3
  d4 bes2 a4
  g4 es' bes g ~
  g4 g f c'
  a4 \parenthesize f es'2-> ~

  %% [1] p. 4
  %% B
  es='1 |
  des1 |
  c1 |
  cis2 d |
  a2\fermata r2\fermata

  %% Andante moderato, [1] p. 5, 6
  \repeat unfold 3 <<
    {
      \voiceOne
      d'=''2 a |
      c2 a |
    }
    \context Voice = "mdb" {
      \voiceTwo
      f='4 g a f~ |
      f4 g a2 |
    }
  >>

  %% C
  <<
    {
      \voiceOne
      f='4 a d f |
      c2 c8 g bes4 |
    }
    \context Voice = "mdb" {
      \voiceTwo
      f4 a f4. a8 |
      c=''8 a f c d4 e4 |
    }
  >>

  %% [1] p. 7, 8
  <<
    {
      \voiceOne
      a='2 a4 d |
      d2 <a cis,> |
    }
    \context Voice = "mdb" {
      \voiceTwo
      s2 d,='4. e8 |
      f4 <g d> a g
    }
  >>
  \repeat unfold 2 <<
    {
      \voiceOne
      d'=''2 a |
      c2 a |
    }
    \context Voice = "mdb" {
      \voiceTwo
      f='4 g a f~ |
      f4 g a2 |
    }
  >>
  <<
    {
     \voiceOne
     f='4 a d f |
     %% D
     e2 ~ e4 d8 f |
    }
    \context Voice = "mdb" {
      \voiceTwo
      a,,=4. d8 f4. a8 |
      %% D
      c8 b gis e f g a4 |
    }
  >>

  %% [1] p. 9
  <<
    {
      \voiceOne
      e'=''4. d8 c4 c8 d |
      c2. b8 a |
      c2. bes4 |
      a2. gis4 |
    }
    \context Voice = "mdb" {
      \voiceTwo
      c=''8 b gis e f g a b |
      a8 g e c g' fis dis b |
      a'='8 g e c g' f d bes
      f'='8 e c d b c d e |
    }
  >> \oneVoice

  %% [1] p. 10
  <c=' a'>4 <c e c'> <b d e b'> <a c e a> |
  r4 <bes cis e bes'> <a c f a> <g d' f g> |
  %% E
  r4 <<
    {
      \voiceOne
      bes'='4\legato a g |
      bes4 a g f ~ |
    }
    \context Voice = "mdb" {
      \voiceTwo
      s2 cis='4 ~ |
      cis4 d2 es4 |
    }
  >>

  %% [1] p. 11
  <<
    {
      \voiceOne
      f='4\dolce bes a bes |
      es4 d c d |
      bes4 a g2 |
      f1 ~ |
    }
    \context Voice = "mdb" {
      \voiceTwo
      bes,=4. c8 d4. es8 |
      f4. fis8 g4. a8 |
      d,='4. f8 bes,4. es8 |
      es4. d8 d4. c8 |
    }
  >>

  %% [1] p. 12
  <<
    {
      \voiceOne
      f='4 bes a bes |
      es4 d c d |
      bes4 c8 d d4. cis8 |
    }
    \context Voice = "mdb" {
      \voiceTwo
      bes,=4. c8 d4. es8 |
      f4. fis8 g4. a8 |
      d,4. g8 f4 e
    }
  >> \oneVoice
  <d=' f d'>4 q2 q4

  %% [1] p. 13
  %% F
  <f=' c f'>4 q2 <f a c>4 |
  <f a>2 ~ <f a>4 <f d'>4 |
  <f c' f>4 q2 <f a c>4
  <f a>2. <f a cis>4

  %% [1] p. 14
  <fis cis' fis>4 q2 <fis a cis>4 |
  <eis a>4 q2 q4 |
  <f bes>2. <des f>4 |
  <cis f a>4 q2 q4 |

  %% [1] p. 15-17
  << { \voiceOne bes'='2. f4 }
     \context Voice = "mdb" { \voiceTwo <des=' f>1 } >> \oneVoice |
  <c f a>4 q2 q4 |
  <a cis f>4 q2 <cis f a>4 |
  %% G
  \repeat unfold 3 <<
    {
      \voiceOne
      d'=''2 a |
      c2 a |
    }
    \context Voice = "mdb" {
      \voiceTwo
      f='4 g a f~ |
      f4 g a2 |
    }
  >>

  %% H
  <<
    {
      \voiceOne
      f='4 a d f |
      c2~ c8 f, bes4 |
      a2~ a4 d4 |
    }
    \context Voice = "mdb" {
      \voiceTwo
      a,=4. d8 f4. a8 |
      c8 a f c d4 <c e> ~ |
      e8 c ~ <a c>
          \change Staff = "m.s." \voiceThree
              e
          \change Staff = "m.d." \voiceTwo
              d'='4. e8 |
    }
  >>

  %% [1] p. 18
  <f=' d'>4 <d g> <c a'>2 |
  <es fis c' es>4 q2 q4 |
  <g a>4 q2 q4 |
  <es fis c' es>4 q2 q4 |

  %% [1] p. 19
  <g a>4 q2 q4 |
  %% J
  <bes,= f' bes>4 q2 <c f a>4 |
  <c e gis> q2 <c e>4 |
  <f, c' f>4 q2 <g cis e>4 |

  %% [1] p. 20-22
  <<
    \context Voice = "mdi" {
      %% [1] p. 20
      \change Staff = "m.s." \voiceThree
      f4. d8 es4. e8 |
      f4. fis8 g4. gis8 |
      \change Staff = "m.d." \voiceTwo
      a4. bes8 c4. cis8 |
      es4. d8 d4. cis8 |
      \change Staff = "m.s." \voiceThree
      d,=4. d8 es4. e8 |
      %% [1] p. 21
      f4. fis8 g4. gis8 |
      \change Staff = "m.d." \voiceTwo
      a4. bes8 c4. cis8 |
      %% K
      es4. d8 d4. c8 |
      c4. bes8
          \change Staff = "m.s." \voiceThree
              fis=4. g8 |
      %% [1] p. 22
      \change Staff = "m.d." \voiceTwo
      bes4.
          \change Staff = "m.s." \voiceThree
              a8 e4. f8 |
      a4. g8 e4. f8 |
    }
    {
      \oneVoice
      %% [1] p. 20
      d'='4. s8 s2 |
      r4 d es e |
      \voiceOne
      f2. e4 |
      g4 f e2 |
      \oneVoice
      d4. s8 s2
      %% [1] p. 21
      r4 d es e |
      \voiceOne
      f2. e4 |
      g4 f es2 |
      d1 ~ |
      %% [1] p. 22
      d1 ~ |
      d1 ~ |
      d1 ~ |
      d1 ~ |
      d1\fermata
    }
  >>
}

IntroitEtKyriePianoRedMS = \relative d, {
  \clef "bass"

  %% [1] p. 1
  <d d'>1-> ~ |
  <d d'>1 ~ |
  <d d'>2. <d d'>4 |
  <c c'>1-> ~ |

  %% [1] p. 2
  <c c'>1 ~ |
  <c c'>2. <c c'>4 |
  %% A
  <bes bes'>1-> ~ |
  <bes bes'>4 <bes bes'> <a a'> <f' f'> |

  %% [1] p. 3
  <d d'>4 <bes bes'>2 <a a'>4 |
  <g g'>4 <es' es'> <bes bes'> <g g'> ~ |
  <g g'>4 <g g'> <f f'> <c' c'> |
  <a a'>4 <f' f'> <es es'>2-> ~ |

  %% [1] p. 4
  %% B
  <es es'>1 |
  <des des'>1 |
  <c c'>1 |
  <cis cis'>2( <d d'>) |
  <a a'>2\fermata r2\fermata

  %% Andante moderato, [1] p. 5, 6
  \repeat unfold 3 <<
    \context Voice = "msa" {
      \voiceOne
      a''=2~ a8 d
         \change Staff = "m.d." \voiceThree
            f4 ~ |
      f2 ~ f8 e
         \change Staff = "m.s." \voiceOne
            a,4 ~ |
    }
    {
      \voiceTwo
      d,=4 e f d |
      a4 bes c cis |
    }
  >>

  %% C
  <<
    \context Voice = "msa" {
      \voiceOne
      a'=4. d8 a2 |
    }
    {
      \voiceTwo
      d,=4 f a, d |
    }
  >> \oneVoice
  <a' c>4 a, bes c |

  %% [1] p. 7, 8
  <<
    \context Voice = "msa" {
      \change Staff = "m.d." \voiceTwo
      e'='8 c a
          \change Staff = "m.s." \voiceOne
              e f4 g |
      a4 <f b> <e a>2 |
    }
    {
      \voiceTwo
      f=4 f, bes2 |
      a1
    }
  >>
  \repeat unfold 2 <<
    \context Voice = "msa" {
      \voiceOne
      a'=2~ a8 d
         \change Staff = "m.d." \voiceThree
            f4 ~ |
      f2 ~ f8 e
         \change Staff = "m.s." \voiceOne
            a,4 ~ |
    }
    {
      \voiceTwo
      d,=4 e f d |
      a4 bes c cis |
    }
  >> \oneVoice
  d=4 f a <d, d'> |
  %% D
  <gis= e'>4 b <a c> <c f> |

  %% [1] p. 9
  <gis= e'>4 b a <f c'> ~ |
  <e c'>4 g <dis a'> fis |
  <e= c'>4 g d f |
  <<
    \context Voice = "msa" {
      \voiceOne
      a=2 e
    }
    {
      \voiceTwo
      c=4 d e e,
    }
  >> \oneVoice

  %% [1] p. 10
  a=,4 <fis, fis'>4 <gis gis'> <a a'> |
  r4 <g g'> <a a'> <bes bes'> |
  %% E
  r2 r4 <<
    \context Voice = "msa" {
      \voiceOne
      e'=4 ~ |
      e4 f g a |
    }
    {
      \voiceTwo
      a,=,4 |
      a2 b4 c |
    }
  >>

  %% [1] p. 11
  \oneVoice
  d=4 es f g |
  a4 bes e, fis |
  g4 d es c |
  <a f'>4 g'= <f as> <es a> |

  %% [1] p. 12
  d=4 es f g |
  a4 bes e, fis |
  g4 e a a, |
  d=4 <d a'>2 <d a'>4 |


  %% [1] p. 13
  %% F
  <a'= c>4 q2 q4 |
  <a d>2 ~ q4 q |
  <a c>4 q2 q4 |
  <a cis>2. q4 |

  %% [1] p. 14
  <a= cis>4 q2 q4 |
  <a cis>4 q2 q4 |
  <f des'>2. ~ <f bes>4
  <f a>4 q2 q4

  %% [1] p. 15-17
  <f= bes>1 |
  <f a>4 q2 q4 |
  <a, f'>4 q2 a'4 |
  %% G
  \repeat unfold 3 <<
    \context Voice = "msa" {
      \voiceOne
      a=2~ a8 d
         \change Staff = "m.d." \voiceThree
            f4 ~ |
      f2 ~ f8 e
         \change Staff = "m.s." \voiceOne
            a,4 ~ |
    }
    {
      \voiceTwo
      d,=4 e f d |
      a4 bes c cis |
    }
  >>

  %% H
  d=4 f a d |
  <a f'>4 a, <bes f'> c |
  <<
    \context Voice = "msa" {
      \voiceOne
      s2 f=4 g |
    }
    {
      \voiceTwo
      f=4 f, bes2 |
    }
  >>

  %% [1] p. 18
  <<
    \context Voice = "msa" {
      \voiceOne
      a'=4 <f b> <e a>2 |
    }
    {
      \voiceTwo
      a,=,1
    }
  >> \oneVoice
  <a'= c>4 q2 q4 |
  <a cis>4 q2 q4 |
  <a c>4 q2 q4

  %% [1] p. 19
  <a cis>4 q2 q4 |
  %% J
  <d,,=, d'>4.( <e e'>8) <f f'>4.( a8) |
  <c,=, c'>4.( <d d'>8) <e e'>4.( gis8) |
  a1

  %% [1] p. 20
  \voiceTwo
  <d,=, d'>1 ~ |
  <d d'>1 ~ |
  <d d'>4 <f f'> <a a'> a ~ |
  a4 bes g a |
  <d,=, d'>1 ~ |

  %% [1] p. 21
  <d d'>1 ~ |
  <d d'>4 <f f'> <a a'> a ~ |
  %% K
  a4 bes g a |
  <<
    \context Voice = "msa" {
      \voiceOne
      d=1 ~ |
    }
    {
      \voiceTwo
      fis,=,4 g a bes |
    }
  >>

  %% [1] p. 22
  <<
    \context Voice = "msa" {
      \voiceOne
      d=1 ~ |
      d1 ~ |
      d1 |
      d2 <f a> |
      <f a>1\fermata
    }
    {
      \voiceTwo
      e,=,4 f fis a |
      dis,4 e g gis |
      bes4. a8 e4. f8 |
      d2 d |
      d1\fermata
    }
  >>
}


IntroitEtKyrieVocals = <<
  \new ChoirStaff = "Choir" <<
    \new Staff = "Sopranos" \with {
      vocalName = \labelSopranos
      shortVocalName = \labelSopranosShort
    } <<
      \IntroitEtKyrieGlobal
      \IntroitEtKyrieCommon
      \new Voice = "sopranos" \IntroitEtKyrieSopranos
      \new Lyrics \lyricsto "sopranos" \IntroitEtKyrieLyricsSopranos
    >>
    \new Staff = "Altos" \with {
      vocalName = \labelAltos
      shortVocalName = \labelAltosShort
    } <<
      \IntroitEtKyrieCommon
      \new Voice = "altos" \IntroitEtKyrieAltos
      \new Lyrics \lyricsto "altos" \IntroitEtKyrieLyricsAltos
    >>
    \new Staff = "Tenors" \with {
      vocalName = \labelTenors
      shortVocalName = \labelTenorsShort
    } <<
      \IntroitEtKyrieCommon
      \new Voice = "tenors" \IntroitEtKyrieTenors
      \new Lyrics \lyricsto "tenors" \IntroitEtKyrieLyricsTenors
    >>
    \new Staff = "Basses" \with {
      vocalName = \labelBasses
      shortVocalName = \labelBassesShort
    } <<
      \IntroitEtKyrieCommon
      \new Voice = "basses" \IntroitEtKyrieBasses
      \new Lyrics \lyricsto "basses" \IntroitEtKyrieLyricsBasses
    >>
  >>
>>

IntroitEtKyriePianoReduction =  <<
  \new PianoStaff = "Piano" \with {
    instrumentName = \labelPiano
  } <<
    \new Staff = "m.d." <<
      \IntroitEtKyrieCommon
      \IntroitEtKyriePianoRedMD
    >>
    \new Dynamics \IntroitEtKyriePianoRedDyn
    \new Staff = "m.s." <<
      \IntroitEtKyrieCommon
      \IntroitEtKyriePianoRedMS
    >>
  >>
>>


IntroitEtKyrieVocalScore = \score {
  \IntroitEtKyrieVocals
  \header {
    piece = "I. Introït et Kyrie"
    pieceIntroText = \IntroitEtKyrieTextCombined
  }
  \layout { }
  \midi { }
}

IntroitEtKyriePianoVocalScore = \score {
  <<
    \IntroitEtKyrieVocals
    \IntroitEtKyriePianoReduction
  >>
  \header {
    piece = "I. Introït et Kyrie"
    pieceIntroText = \IntroitEtKyrieTextCombined
  }
  \layout { }
  \midi { }
}
