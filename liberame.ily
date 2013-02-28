%% -*- coding:utf-8; LilyPond-master-file: "requiem_fauré.ly" -*-
%% lilypond source include file, created 2013-02
%%
%% Gabriel Fauré, Requiem (1887) - VI. Libera Me
%%
%% (C) 2013 Johannes Rohrer <src@johannesrohrer.de>
%%
%% This work is licensed under the Creative Commons
%% Attribution-ShareAlike 3.0 Unported License. To view a copy of this
%% license, visit http://creativecommons.org/licenses/by-sa/3.0/ or
%% send a letter to Creative Commons, 444 Castro Street, Suite 900,
%% Mountain View, California, 94041, USA.

LiberaMeGlobal = {
  %% [1] p. 92
  \time 2/2
  \tempo "Moderato" 2 = 60
  s1*10
  \mark\default % A, [1] p. 93
  s1*9
  \mark\default % B, [1] p. 95
  s1*17
  \mark\default % C, [1] p. 97
  s1*7
  \mark\default % D, [1] p. 98
  s1*9
  \bar "||"

  \time 6/4
  \tempo "Più mosso" 2. = 72
  s1.*9
  \mark\default % E, [1] p. 101
  s1.*8
  \mark\default % F, [1] p. 102
  s1.*11
  \mark\default % G, [1] p. 104
  s1.*3
  \bar "||"

  \mark\default % H, [1] p. 105
  \time 2/2
  \tempo "Moderato" 2 = 60
  s1*15
  \mark\default % J, [1] p. 108
  s1*9
  \mark\default % K, [1] p. 109
  s1*14
  \mark\default % L, [1] p. 111
  s1*15
  \bar "|."
}

LiberaMeCommon = {
  \key d \minor
}

LiberaMeTemplate = \relative {
  %% [1] p. 92
  s1*5

  %% [1] p. 93
  s1*5
  %% A
  s1*2

  %% [1] p. 94
  s1*7

  %% [1] p. 95
  %% B
  s1*7

  %% [1] p. 96
  s1*7

  %% [1] p. 97
  s1*3
  %% C
  s1*4

  %% [1] p. 98
  s1*3
  %% D
  s1*4

  %% [1] p. 99
  s1*5
  s1.*1

  %% [1] p. 100
  s1.*6

  %% [1] p. 101
  s1.*2
  %% E
  s1.*4

  %% [1] p. 102
  s1.*4
  %% F
  s1.*2

  %% [1] p. 103
  s1.*5

  %% [1] p. 104
  s1.*4
  %% G
  s1.*1

  %% [1] p. 105
  s1.*2

  %% H
  s1*3

  %% [1] p. 106
  s1*5

  %% [1] p. 107
  s1*7

  %% [1] p. 108
  %% J
  s1*6

  %% [1] p. 109
  s1*3
  %% K
  s1*3

  %% [1] p. 110
  s1*6

  %% [1] p. 111
  s1*5
  %% L
  s1*1

  %% [1] p. 112
  s1*7

  %% [1] p. 113
  s1*7
}

LiberaMeMainMelody = \relative d {
  %% TODO: extract dynamics, adapt at occurences as needed
  %% from first baritone solo
  %% [1] p. 92 "Libera me domine"
  d2 ~ d4. a'8
  a2 g
  bes4. bes8 a2~

  %% [1] p. 93 "de morte æternum / In die illa tre-"
  a2 a2
  a2 d,4. e8
  f2( e)
  d1
  r2 d |
  %% A
  d2. d4
  d'='2 c4 bes

  %% [1] p. 94 "menda, in die illa / Quando cœli mo-"
  c2 f,~
  f4 f^\p g a
  a1~^\<
  a2(\! g)^\>
  a1\!
  r2 a4.^\p a8
  a2 g4 a |

  %% [1] p. 95 "vendi sunt, quando cœli movendi sunt et terra / Dum"
  %% B
  bes2. bes4
  bes2 a4^\cresc bes
  c2. c4
  c2^\< bes4 c
  d2. d4\!
  d2^\f e,=
  r2^\sempre a2

  %% [1] p. 96 "veneris judicare sæculum per ignem"
  d2~ d4. d,=8
  d2 d4 e
  f1~
  f4^\sempref f e d
  b'2. d4
  e,=1 d~

  %% [1] p. 97
  d2 r2
}

LiberaMeBaritoneSolo = \relative d {
  \clef "bass"

  %% [1] p. 92-97a
  R1*2
  \LiberaMeMainMelody

  %% [1] p. 97b-111 tacet
  %% R1*2
  %% R1*7   % C
  %% R1*9   % D
  R1*18
  %% R1.*9
  %% R1.*8  % E
  %% R1.*11 % F
  %% R1.*3  % G
  R1.*31
  %% R1*15  % H
  %% R1*9   % J
  %% R1*14  % K
  %% R1*1   % L
  R1*39

  %% [1] p. 112 "Libera me domine / De morte æ-"
  R1
  d=2~^\(^\p^\dolce d4. a'8
  a2 g
  f4. d8 d2~\)
  d2 d^\p
  d2( a')
  a2. g4

  %% [1] p. 113 "terna libera me domine"
  f2 d~
  d4 d^\pp d d
  d1
  d2. d4
  d1 ~
  d1 ~
  d1\fermata
}

LiberaMeSopranos = \relative  a' {
  \clef "treble"

  %% [1] p. 92-97 "Tremens factus sum e-"
  R1*36 |
  %% C
  a2^\pp bes
  c2 d~
  d4 d c bes
  c2( bes)

  %% [1] p. 98 "go et timeo / et timeo / Dum discussio vene-"
  a2. a4
  g2. a4
  bes2. bes4 |
  %% D
  a2.^\cresc bes4
  c2.^\< \breathe c4
  c2^\f f4. f8
  e2 d4 des

  %% [1] p. 99 "rit atque ventura ira"
  c2. \breathe a4
  bes2. bes4
  bes4(^\> a) g( f)
  e1^\p
  e1

  R1.

  %% [1] p. 100 "Dies illa / Dies iræ / Calamitatis"
  a2.~^\ff a2 a4
  a2. a
  c2.~ c2 c4
  c2. c
  f=''2.^\ffsempre f2 f4
  es2. d

  %% [1] p. 101 "et miseriæ / Dies illa / Dies magna"
  d2 bes4 g2 a4
  bes2.~ bes2 r4 |
  %% E
  g2.~^\ff g2 g4
  g2. g
  bes2.~ bes2 bes4
  bes2. bes

  %% [1] p. 102 "et amara amara valde / Requiem æ-"
  es2.~^\sempre es2 es4
  des2. c2 c4
  c2 as4 f2( g4)
  as1.^\> |
  %% F
  as2.~^\p as2 as4
  g2.~ g2 g4

  %% [1] p. 103 "ternam / Dona eis domi-"
  bes1.
  a1.
  c2.~^\cresc c2 c4
  b2. b
  d2.~ d2 d4

  %% [1] p. 104 "ne / Et lux perpetua luceat"
  cis2.^\f^\> cis^\p
  cis2. cis^\<
  d2.~^\> d2\! b4
  ais1.^\sempredolce |
  %% G
  a2.^\p a2 a4

  %% [1] p. 106 "eis / luceat e-"
  a1.(
  gis1.) |

  %% H "is"
  a1~
  a2 r
  R1*6

  %% [1] p. 107-112m1
  \transpose d d' \LiberaMeMainMelody

  %% [1] p. 112m2-113m1
  R1*7

  %% [1] p. 113m2 "libera me / Domine"
  r4 d,='^\pp d d
  d1
  e2. e4
  d1~
  d1~
  d1\fermata
}

LiberaMeAltos = \relative f' {
  \clef "treble"

  %% [1] p. 92-97 "Tremens factus sum e-"
  R1*36
  %% C
  f2^\pp f\breathe
  g2 a~
  a4 a g f
  e1

  %% [1] p. 98 "go et timeo / Dum discussio vene-"
  f1
  f1
  %% D
  f2( e)
  es2( d)
  c2^\< d
  e2^\f f4. f8
  g2 g4 g

  %% [1] p. 99 "rit atque ventura ira"
  a2 g4( f)
  e2 d
  cis2^\> d
  d1^\p
  cis1

  R1.*1

  %% [1] p. 100 "Dies illa / Dies iræ / Calamitatis"
  f2.~^\ff f2 f4
  f2. f
  f2.~ f2 e4
  a2. a
  a2.^\ffsempre a2 a4
  g2. fis2.

  %% [1] p. 101 "et miseriæ / Dies illa / Dies magna"
  g2 g4 g2 g4
  g2.~ g2 r4 |
  %% E
  es2.~^\ff es2 es4
  es2. es
  g2.~ g2 g4
  g2. g

  %% [1] p. 102 "et amara / amara valde / Requiem æ-"
  g2.~ g2 g4
  f2. e2 e4
  f2 f4 f2.
  f1.^\> |
  %% F
  f2.~^\p f2 f4
  f2.~ f2 f4

  %% [1] p. 103 "ternam dona eis domi-"
  g1.
  g1.
  a2.~ a2 a4
  a2. a
  b2.~ b2 b4

  %% [1] p. 104 "ne / Et lux perpetua luceat"
  b2.^\f^\> gis\p
  fis2. fis^\<
  eis2.~^\> eis2\! eis4
  fis1.^\sempredolce |
  %% G
  d2.^\p d2 d4

  %% [1] p. 105 "eis / luceat e-"
  cis1.(
  b1.) |

  %% H
  cis1
  a2^\pp a4. a8
  a1^\<(

  %% [1] p. 106 "is"
  b1)^\>\(
  a1~\!\)
  a1~
  a1
  R1

  %% [1] p. 107-112m1
  \transpose d d' \LiberaMeMainMelody

  %% [1] p. 112m2-113m1
  R1*7

  %% [1] p. 113m2 "libera me / Domine"
  r4 d='^\pp d d
  d1
  cis2. cis4
  d1~
  d1~
  d1\fermata
}

LiberaMeTenors = \relative e' {
  \clef "treble_8"

  %% [1] p. 92-97 "Tremens factus sum e-"
  R1*36
  %% C
  R1
  e2^\pp f~
  f4 f e d
  c2( cis)

  %% [1] p. 98 "go et timeo / Dum discussio vene-"
  d2( c)
  bes2( a)
  g1
  %% D
  g2( fis)
  g2^\< a
  bes2^\f c4. c8
  cis2 d4 e

  %% [1] p. 99 "rit atque ventura ira"
  f2 e4( d)
  c2 bes4( a)
  g2^\> a
  a2^\p( gis)
  a1

  R1.

  %% [1] p. 100 "Dies illa / Dies iræ / Calamitatis"
  a=2.~^\ff a2 a4
  a2. a
  c2.~ c2 c4
  c2. c2.
  f2.^\ffsempre f2 f4
  es2. d

  %% [1] p. 101 "et miseriæ / Dies illa / Dies magna"
  d2 d4 << { \voiceOne es2 e4 }
           \context Voice = "tenorsII" { \voiceTwo c2 c4 } >> \oneVoice
  d2.~ d2 r4 |
  %% E
  g,=2.~^\ff g2 g4
  g2. g
  bes2.~ bes2 bes4
  bes2. bes

  %% [1] p. 102 "et amara / amara valde / Requiem æ-"
  es2.~ es2 es4
  des2. c2 c4
  c2 c4 <bes des>2.
  c1.^\> |
  %% F
  c2.~^\p c2 c4
  b2.~ b2 b4

  %% [1] p. 103 "ternam / Dona eis domi-"
  d1.
  cis1.
  e2.~ e2 e4
  dis2. dis
  fis2.~ fis2 fis4

  %% [1] p. 104 "ne / Et lux perpetua luceat"
  eis2.^\f^\> eis^\p
  fis2. ais,^\<
  gis2.(^\> d'2)\! d4
  cis1.^\sempredolce |
  %% G
  d2.^\p a2 a4

  %% [1] p. 105-106 "eis"
  g1.(
  f1.) |

  %% H
  e1
  R1*7

  %% [1] p. 107-112m1
  \LiberaMeMainMelody

  %% [1] p. 112m2-113m1
  R1*7

  %% [1] p. 113m2 "libera me / Domine"
  r4 d=^\pp d d
  <<
    {
      \voiceOne
      c'1 | bes2. bes4 | a1~ | a1~ | a1\fermata
    }
    \context Voice = "tenorsII" {
      \voiceTwo
      a=1 | g2. g4 | f1~ | f1~ | f1
    }
  >>
}

LiberaMeBasses = \relative d' {
  \clef "bass"

  %% [1] p. 92-97 "Tremens e-"
  R1*36
  %% C
  d1~^\pp
  d2( c)
  bes1
  a2( g)

  %% [1] p. 98 "go et timeo / Dum discussio vene-"
  d1
  d1
  c1
  %% D
  c2( d)
  e2^\< fis
  g2^\f a4. a8
  bes2 bes4 bes

  %% [1] p. 99 "rit atque ventura ira"
  a2. a4
  g2 f
  e2^\> d
  e1^\p
  a,=,1

  R1.

  %% [1] p. 100 "Dies illa / Dies iræ / Calamitatis"
  a'2.~^\ff a2 a4
  a2. a
  a2.~ a2 a4
  a2. a
  c2.^\ffsempre c2 c4
  c2. c

  %% [1] p. 101 "et miseriæ / Dies illa / Dies magna"
  bes2 g4 g2 g4
  g2.~ g2 r4 |
  %% E
  g2.~^\ff g2 g4
  g2. g
  g2.~ g2 g4
  g2. g

  %% [1] p. 102 "et amara / amara valde / Requiem æ-"
  bes2.~ bes2 bes4
  bes2. bes2 bes4
  as2 f4 f2.
  f1.^\> |
  %% F
  f2.~^\p f2 f4
  g2.~ g2 g4

  %% [1] p. 103 "ternam / Dona eis Domi-"
  g1.
  a1.
  a2.~ a2 a4
  b2. b
  b2.~ b2 b4

  %% [1] p. 104 "ne / Et lux perpetua luceat"
  cis2.^\f^\> b^\p
  ais2. fis^\<
  fis2.~^\> fis2\! fis4
  fis1.^\sempredolce |
  %% G
  f2.^\p f2 f4

  %% [1] p. 105 "eis / luceat e-"
  e1.(
  d1.) |

  %% H
  a=,1
  a2^\pp a4. a8
  a1(^\<

  %% [1] p. 106 "is"
  b)\(^\>
  a1~\)\!
  a1~
  a1
  R1

  %% [1] p. 107-112m1
  \LiberaMeMainMelody

  %% [1] p. 112m2-113m1
  R1*7

  %% [1] p. 113m2 "libera me / Domine"
  r4 d=^\pp d d
  <<
    { \voiceOne d1 | d2. d4 }
    \context Voice = "bassesII" { \voiceTwo fis,1 | g2. g4 }
  >> \oneVoice
  d'=1~
  d1~
  d1\fermata
}


LiberaMeText = \markup {
  \column {
    "Libera me, Domine, de morte æterna, in die illa tremenda"
    "quando cœli movendi sunt et terra:"
    "Dum veneris judicare sæculum per ignem."
    "Tremens factus sum ego, et timeo,"
    "dum discussio venerit, atque ventura ira."
    "Dies illa, dies iræ, calamitatis et miseriæ,"
    "dies magna et amara valde."
  }
}

LiberaMeTextDE = \markup {
  \column {
    "Befreie mich, Herr, vom ewigen Tode an jenem schrecklichen Tage"
    "wenn Himmel und Erde erschüttert werden:"
    "da Du kommst, die Welt durch Feuer zu richten."
    "Zittern befällt mich und Angst,"
    "wenn das Strafgericht kommt und der drohende Zorn."
    "Jener Tag, Tag des Zorns, des Unheils und des Elends,"
    "Tag, so groß und so bitter."
  }
}

LiberaMeTextCombined = \markup {
  \line {
    \LiberaMeText
    \hspace #3
    \italic \LiberaMeTextDE
  }
}


LiberaMeLyricsCommonLibera = \lyricmode {
  Li -- be -- ra me, Do -- mi -- ne, de mor -- te æ -- ter -- na,
  in di -- e il -- la tre -- men -- da,
    in di -- e il -- la
  quan -- do cœ -- li mo -- ven -- di sunt,
    quan -- do cœ -- li mo -- ven -- di sunt et ter -- ra:
  Dum  ve -- ne -- ris ju -- di -- ca -- re sæ -- cu -- lum
  per ig -- nem. __
}

LiberaMeLyricsCommonDiesIlla = \lyricmode {
  Di -- es il -- la,
  di -- es i -- ræ,
  ca -- la -- mi -- ta -- tis et mi -- se -- ri -- æ,
  di -- es il -- la,
  di -- es mag -- na
  et a -- ma -- ra,
    a -- ma -- ra val -- de.
}

LiberaMeLyricsBaritoneSolo = \lyricmode {
  \LiberaMeLyricsCommonLibera

  Li -- be -- ra me, Do -- mi -- ne,
  de mor -- te æ -- ter -- na,
  li -- be -- ra me,
  Do -- mi -- ne. __
}

LiberaMeLyricsSopranos = \lyricmode {
  Tre -- mens, tre -- mens fac -- tus sum e -- go,
  et ti -- me -- o,
    et ti -- me -- o,
  dum dis -- cus -- si -- o ve -- ne -- rit,
  at -- que ven -- tu -- ra i -- ra.

  \LiberaMeLyricsCommonDiesIlla

  Re -- qui -- em æ -- ter -- nam
  do -- na e -- is, Do -- mi -- ne,
  et lux per -- pe -- tu -- a lu -- ce -- at e -- is.

  \LiberaMeLyricsCommonLibera

  Li -- be -- ra me,
  Do -- mi -- ne. __
}

LiberaMeLyricsAltos = \lyricmode {
  Tre -- mens, tre -- mens fac -- tus sum e -- go,
  et ti -- me -- o,
  dum dis -- cus -- si -- o ve -- ne -- rit,
  at -- que ven -- tu -- ra i -- ra.

  \LiberaMeLyricsCommonDiesIlla

  Re -- qui -- em æ -- ter -- nam
  do -- na e -- is, Do -- mi -- ne,
  et lux per -- pe -- tu -- a lu -- ce -- at e -- is,
  lu -- ce -- at e -- is. __

  \LiberaMeLyricsCommonLibera

  Li -- be -- ra me,
  Do -- mi -- ne. __
}

LiberaMeLyricsTenors = \lyricmode {
  Tre -- mens fac -- tus sum e -- go,
  et ti -- me -- o,
  dum dis -- cus -- si -- o ve -- ne -- rit,
  at -- que ven -- tu -- ra i -- ra.

  \LiberaMeLyricsCommonDiesIlla

  Re -- qui -- em æ -- ter -- nam
  do -- na e -- is, Do -- mi -- ne,
  et lux per -- pe -- tu -- a lu -- ce -- at e -- is.

  \LiberaMeLyricsCommonLibera

  Li -- be -- ra me,
  Do -- mi -- ne. __
}

LiberaMeLyricsBasses = \lyricmode {
  Tre -- mens e -- go,
  et ti -- me -- o,
  dum dis -- cus -- si -- o ve -- ne -- rit,
  at -- que ven -- tu -- ra i -- ra.

  \LiberaMeLyricsCommonDiesIlla

  Re -- qui -- em æ -- ter -- nam
  do -- na e -- is, Do -- mi -- ne,
  et lux per -- pe -- tu -- a lu -- ce -- at e -- is,
  lu -- ce -- at e -- is. __

  \LiberaMeLyricsCommonLibera

  Li -- be -- ra me,
  Do -- mi -- ne. __
}


LiberaMe = \score {
  <<
    \new Staff = "BaritoneSolo" \with {
      vocalName = \labelBaritoneSolo
      shortVocalName = \labelBaritoneSoloShort
    } <<
      \LiberaMeGlobal
      \LiberaMeCommon
      \new Voice = "baritonesolo" \LiberaMeBaritoneSolo
      \new Lyrics \lyricsto "baritonesolo" \LiberaMeLyricsBaritoneSolo
    >>
    \new ChoirStaff = "Choir" <<
      \new Staff = "Sopranos" \with {
        vocalName = \labelSopranos
        shortVocalName = \labelSopranosShort
      } <<
        \LiberaMeGlobal
        \LiberaMeCommon
        \new Voice = "sopranos" \LiberaMeSopranos
        \new Lyrics \lyricsto "sopranos" \LiberaMeLyricsSopranos
      >>
     \new Staff = "Altos" \with {
        vocalName = \labelContraltos
        shortVocalName = \labelContraltosShort
      } <<
        \LiberaMeCommon
        \new Voice = "altos" \LiberaMeAltos
        \new Lyrics \lyricsto "altos" \LiberaMeLyricsAltos
      >>
      \new Staff = "Tenors" \with {
        vocalName = \labelTenors
        shortVocalName = \labelTenorsShort
      } <<
        \LiberaMeCommon
        \new Voice = "tenors" \LiberaMeTenors
        \new Lyrics \lyricsto "tenors" \LiberaMeLyricsTenors
      >>
      \new Staff = "Basses" \with {
        vocalName = \labelBasses
        shortVocalName = \labelBassesShort
      } <<
        \LiberaMeCommon
        \new Voice = "basses" \LiberaMeBasses
        \new Lyrics \lyricsto "basses" \LiberaMeLyricsBasses
      >>
    >>
  >>
  \header {
    piece = "VI. Libera me"
    pieceIntroText = \LiberaMeTextCombined
  }
  \layout { }
  \midi { }
}
