%% -*- coding:utf-8; LilyPond-master-file: "requiem_fauré.ly" -*-
%% lilypond source include file, created 2013-02
%%
%% Gabriel Fauré, Requiem (1887) - V. Agnus Dei
%%
%% (C) 2013 Johannes Rohrer <src@johannesrohrer.de>
%%
%% This work is licensed under the Creative Commons
%% Attribution-ShareAlike 3.0 Unported License. To view a copy of this
%% license, visit http://creativecommons.org/licenses/by-sa/3.0/ or
%% send a letter to Creative Commons, 444 Castro Street, Suite 900,
%% Mountain View, California, 94041, USA.

AgnusDeiGlobal = {
  %% [1] p. 70
  \tempo "Andante" 4 = 69
  \time 3/4
  s2.*12
  \mark\default % A, [1] p. 73
  s2.*6
  \mark\default % B, [1] p. 74
  s2.*8
  \mark\default % C, [1] p. 76
  s2.*10
  \mark\default % D, [1] p. 79
  s2.*10
  \mark\default % E, [1] p. 81
  s2.*14
  \mark\default % F, [1] p. 84
  s2.*9
  \mark\default % G, [1] p. 86
  s2.*5
  \bar "||"

  \time 4/4
  \tempo "Molto largo" 4 = 40
  s1*6
  \mark\default % H, [1] p. 88
  s1*7
  \bar "||"

  \time 3/4
  \tempo "Tempo I" 4 = 72 % [1]: "1° Tempo"
  s2.*7
  \bar "|."
}

AgnusDeiCommon = {
  \key f \major
  s2.*74
  s1*13
  \key d \major
}

AgnusDeiTemplate = \relative {
  %% [1] p. 70
  s2.*3

  %% [1] p. 71
  s2.*4

  %% [1] p. 72
  s2.*4

  %% [1] p. 73
  s2.*1
  %% A
  s2.*3

  %% [1] p. 74
  s2.*3
  %% B
  s2.*1

  %% [1] p. 75
  s2.*4

  %% [1] p. 76
  s2.*3
  %% C
  s2.*1

  %% [1] p. 77
  s2.*5

  %% [1] p. 78
  s2.*4

  %% [1] p. 79
  %% D
  s2.*4

  %% [1] p. 80
  s2.*5

  %% [1] p. 81
  s2.*1
  %% E
  s2.*4

  %% [1] p. 82
  s2.*4

  %% [1] p. 83
  s2.*5

  %% [1] p. 84
  s2.*1
  %% F
  s2.*3

  %% [1] p. 85
  s2.*4

  %% [1] p. 86
  s2.*2
  %% G
  s2.*2

  %% [1] p. 87
  s2.*3

  s1*2

  %% [1] p. 88
  s1*4
  %% H
  s1*1

  %% [1] p. 89
  s1*5

  %% [1] p. 90
  s1*1

  s2.*3

  %% [1] p. 91
  s2.*4
}

AgnusDeiSopranos = \relative g' {
  \clef "treble"

  %% [1] p. 70-74 "Agnus"
  R2.*18
  %% B
  g4^\f^\> fis\! r

  %% [1] p. 75 "dei / Agnus dei qui tollis"
  dis4^\p e\breathe f\(
  e^\< a( c)                  % [1]: additional redundant text "cresc."
  e4~^\f e8\) r g,4
  g4^\> fis\! r

  %% [1] p. 76 "peccata mundi / dona"
  dis4^\p\( e f
  f4(^\< a c)\!
  d2\)^\f\breathe es4 |       % [1]: additional "sempre f"
  %% C
  es4( d) r

  %% [1] p. 77-80 "dona eis requiem" / "Lux"
  d4 c a
  f4^\> d e\!                 % [1]: additional redundant "dim."
  f4~ f8 r r4 |

  %% R2.*6
  %% R2.*4 %% D
  %% R2.*4
  R2.*14 |

  c'=''2.~^\tweak #'X-offset #-3 -\tweak #'Y-offset #-1 \p^\dolcesempre\(

  %% [1] p. 81 "_ æterna luceat eis / luceat"
  c2 c4 |
  %% E
  c2 c4\)
  ces4\( es ces
  bes2 bes4\)
  a4\( cis a

  %% [1] p. 82 "eis domine / cum sanctis"
  gis2 gis4\)
  gis4( fis) e
  es2.
  c'=''4^\dolcesempre\( c c

  %% [1] p. 83 "tuis in æternum quia pius,"
  c2 c4\)
  ces4(\( es) ces
  bes2 bes4\)
  a4\((cis) a
  as2 as4\)         % [1]: end of phrasing slur unclear

  %% [1] p. 84 "pius es / cum sanctis tuis"
  a4( f) g |
  %% F
  as2 bes4
  c2^\crescmolto c4
  b2 c4

  %% [1] p. 85 "in æternaum qui pi-"
  des2^\< des4
  c2 des4
  d2^\fsempre d4
  c2.

  %% [1] p. 86-87 "us es" /  "Requiem æ-"
  bes2.
  a2. |
  %% G
  R2.*3
  R2.\fermataMarkup
  R2.\fermataMarkup

  R1
  a='4^\pp\( a a4. a8

  %% [1] p. 88 "ternam dona eis domine / Et lux per-"
  a2 a\)
  r2 a4^\pp\( a
  a a c4. c8 c2~ c4\) r |
  %% H
  r4 d^\< d d   % [1]: additional redundant textual "cresc."

  %% [1] p. 89 "petua luceat / luceat / luceat"
  f4.^\f f8 f2
  r4 c4 des2^\>
  des4~ des8 r r4 as='4       % [1]: additional textual "dim."
  a2 a4^\tag #'aix \! r
  r4 a^\pp a a

  %% [1] p. 90-91 "eis"
  a1

  a2 r4
  R2.*5
  R2.\fermataMarkup
}

AgnusDeiAltos = \relative es' {
  \clef "treble"

  %% [1] p. 70-74 "Agnus"
  R2.*18
  %% B
  es4^\f^\> es\! r

  %% [1] p. 75 "dei / Agnus dei qui tollis"
  a,=4^\p bes\breathe b
  a4^\< e'2                   % [1]: textual "cresc." instead
  e4~^\f e8 r es4
  es4^\tag #'aix -\> es^\tag #'aix -\! r

  %% [1] p. 76 "peccata mundi / dona"
  a,=4^\p bes b
  a4(^\tag #'aix -\< f' g)
  fis2^\f g4 |                % [1]: additional "sempre f"
  %% C
  f2 r4

  %% [1] p. 77-81m1 "dona eis requiem"
  e4 g c,='
  c4^\tag #'aix -\> c c^\tag #'aix -\!
  c4~ c8 r r4 |
  %% R2.*6
  %% R2.*9 % D
  %% R2.*1 % [1] p. 81
  R2.*16 |

  %% [1] p. 81m2 "Lux æterna luceat eis"
  %% E
  as'='2^\pp g4
  ges2 ges4
  ges4 ges f
  e2 e4

  %% [1] p. 82 "luceat eis domine / cum sanctis"
  e4 e dis
  dis2 cis4
  des4^\< des^\> des\!
  c4 as' as

  %% [1] p. 83 "tuis in æternum quia"
  as2 g4
  ges2 ges4
  ges2 f4
  e2 e4
  es2 es4

  %% [1] p. 84 "pius es / cum sanctis tuis"
  es4( f) g |
  %% F
  as2 as4
  as2^\tag #'aix \crescmolto g4
  as2 as4

  %% [1] p. 85 "in æternum quia pi-"
  as2^\tag #'aix \< g4
  as2 as4
  as2^\fsempre a4             % [1]: just \f
  g2.

  %% [1] p. 86-87m1 "us es"
  f2.
  e2. |
  %% G
  R2.*3

  %% [1] p. 87m2 "Requiem æ-"
  R2.\fermataMarkup
  R2.\fermataMarkup

  R1
  f='4^\pp f f4. f8

  %% [1] p. 88 "ternam dona eis domine / Et lux per-"
  f2 f
  r2 a4^\pp a
  a4 a a4. a8
  a2~ a4 r |
  %% H
  r4 bes^\tag #'aix \< bes bes

  %% [1] p. 89 "petua luceat / luceat"
  c4.^\tag #'aix \f c8 c2
  r4 f, f2^\tag #'aix \>
  f4~ f8 r r4 as
  a2 a4^\tag #'aix \! r
  r4 d,^\pp d d

  %% [1] p. 90-91 "eis"
  f2( e)

  d2 r4
  R2.*5
  R2.\fermataMarkup
}

AgnusDeiTenors = \relative c' {
  \clef "treble_8"

  %% [1] p. 70-71 "Agnus"
  R2.*6
  r4 c4^\tweak #'X-offset #-3 \p^\dolceespressivo\( c

  %% [1] p. 72 "Dei qui tollis peccata mun-"
  c4 d\) e\(
  e4 f e8( d)
  c4( bes) a\breathe
  a2( g4)

  %% [1] p. 73 "di / dona eis dona eis"
  f4~ f8\) r^\pococresc c'='4\( |
  %% A
  c4 d e\!\breathe            % [1]: Additional hairpin starts at c4
  e4( f) e8( d)
  c4( bes) a\)\breathe

  %% [1] p. 74 "requiem / Agnus"
  a4(\(^\> c) bes\!
  a4~ a8\) r r4
  R2.
  %% B
  bes!4^\f^\> a\! r

  %% [1] p. 75 "dei / Agnus dei qui tollis"
  fis4^\p  g\breathe gis
  a4^\< c4( e)                % [1]: textual "cresc." instead
  e4~^\f e8 r bes4
  bes4^\tag #'aix -\> a^\tag #'aix -\! r

  %% [1] p. 76 "peccata mundi / dona"
  fis4^\p g gis
  a(^\tag #'aix -\< c es)
  d2^\f es4 |                 % [1]: additional "sempre f"
  %% C
  es4( d) r

  %% [1] p. 77 "dona eis requiem / Agnus"
  d4 c a
  a4^\tag #'aix -\> a bes^\tag #'aix -\!
  a4~ a8 r r4
  R2.
  r4^\espress c4\( c

  %% [1] p. 78 "dei qui tollis peccata mundi / do-"
  c4 d e
  e4 f\)\breathe c\(
  c4( d) c8( bes)
  c4 a\) d^\cresc |     % [1]: additional redundant short hairpin

  %% [1] p. 79 "na / dona eis requiem"
  %% D
  f4(\! e)\breathe d4\(
  d4^\> c a\!
  c4( e) d
  e2.\)

  %% [1] p. 80-81m1 "sempiternam requiem"
  b2\( b4
  c2 c4
  b2 b4
  c2.\)
  R2.*2 |

  %% [1] p. 81m2 "Lux æterna luceat eis"
  %% E
  <>^\div
  <<
    { \voiceOne es='2^\pp es4 | es2 es4 | des4 des des | cis2 cis4 }
    \context Voice = "tenorsII" {
      \voiceTwo c='2 c4 | ces2 ces4 | bes4 bes bes | a2 a4
    }
  >>

  %% [1] p. 82 "luceat eis domine / cum sanctis"
  <<
    { b=4 b b | b( a) gis | g as bes | c es es }
    \context Voice = "tenorsII" {
      gis,=4 gis b | b( a) gis | g as bes | c c c
    }
  >>

  %% [1] p. 83 "tuis in æternum quia"
  <<
    { es='2 es4 | es2 es4 | des2 des4 | des2 des4 | ces2 as4 }
    \context Voice = "tenorsII" {
      c='2 c4 | ces2 ces4 | bes2 bes4 | beses2 beses4 | as2 as4
    }
  >>

  %% [1] p. 84 "pius es / cum sanctis tuis"
  << { es'='2 des4 }
     \context Voice = "tenorsII" { as=2 bes4 } >>
  %% F
  <<
    { c='2 bes4 | c2^\tag #'aix \crescmolto c4 | b2 c4 }
    \context Voice = "tenorsII" { c='2 bes4 | c2 c4 | b2 c4 }
  >>

  %% [1] p. 85 "in æternum quia pi-"
  <<
    {
      des='2^\tag #'aix \< des4 |
      c2 des4 |
      d2^\fsempre d4 |        % [1]: just \f
      e2.
    }
    \context Voice = "tenorsII" {
      des='2 des4 | c2 des4 | d2 d4 | e2.
    }
  >>

  %% [1] p. 86-87m1 "us es"
  << { f='2. | cis2. }
     \context Voice = "tenorsII" { f='2. | cis2. } >> \oneVoice
  %% G
  R2.*3

  %% [1] p. 87m2 "Requiem æ-"
  R2.\fermataMarkup
  R2.\fermataMarkup

  R1
  << { \voiceOne d='4^\pp d d4. d8 }
     \context Voice = "tenorsII" { \voiceTwo a=4 a a4. a8 } >>

  %% [1] p. 88 "ternam dona eis domine / Et lux per-"
  << { d='2 d }
     \context Voice = "tenorsII" { a=2 a } >>
  \oneVoice r2   <<
    { \voiceOne e'='4^\pp e | e e f4. f8 | f2~ f4 }
    \context Voice = "tenorsII" {
      \voiceTwo c='4 c | c c c4. c8 c2~ c4
    }
  >> \oneVoice r4 |

  %% H
  r4 << { \voiceOne f='4^\tag #'aix \< f f }
        \context Voice = "tenorsII" { \voiceTwo d='4 d d } >>

  %% [1] p. 89 "petua luceat / luceat / luceat"
  << { f='4.^\tag #'aix \f f8 f2 }
    \context Voice = "tenorsII" { c='4. c8 c2 } >>
  \oneVoice r4 <<
    { \voiceOne c='4 des2^\tag #'aix \> | des4~ des8 }
    \context Voice = "tenorsII" { \voiceTwo as=4 as2 | as4~ as8 }
  >> \oneVoice r8 r4 <<
    { \voiceOne des='4 | cis2 cis4^\tag #'aix \! }
    \context Voice = "tenorsII" { \voiceTwo des='4 | cis2 cis4 }
  >> \oneVoice r4
  r4 <<
    { \voiceOne d4^\pp d d }
    \context Voice = "tenorsII" { \voiceTwo f,=4 f g }
  >>

  %% [1] p. 90-91 "eis"
  <<
    { \voiceOne d'='2( cis) | d2 }
    \context Voice = "tenorsII" { \voiceTwo a=1 | a2 }
  >> \oneVoice r4
  R2.*5
  R2.\fermataMarkup
}

AgnusDeiBasses = \relative c {
  \clef "bass"

  %% [1] p. 70-74 "Agnus"
  R2.*18
  %% B
  c4^\f^\> c\! r

  %% [1] p. 75 "dei / Agnus dei qui tollis"
  c4^\p c\breathe d\(
  e\)^\< e4( a)               % [1]: textual "cresc." instead
  c4~^\f c8 r c,4
  c4^\tag #'aix -\> c^\tag #'aix -\! r

  %% [1] p. 76 "peccata mundi / dona"
  c4^\p c d
  es2(^\tag #'aix -\< c'4)
  c2^\f bes4 |                % [1]: additional "sempre f"
  %% C
  << { \voiceOne bes2^\tag #'aix \div }
     \context Voice = "bassesII" { \voiceTwo f2 } >> \oneVoice r4

  %% [1] p. 77-81m1 "dona eis requiem"
  <<
    {
      \voiceOne a4 a e |
      f4^\tag #'aix -\> f g^\tag #'aix -\! |
      f4~ f8
    }
    \context Voice = "bassesII" {
      \voiceTwo e4 e e |
      f4 f g |
      f4~ f8
    }
  >> \oneVoice r8 r4 |

  %% R2.*6
  %% R2.*10 % D
  R2.*16 |

  %% [1] p. 81m2 "Lux æterna luceat eis"
  %% E
  %%<>^\div   % additional "div." mark from [1] is redundant here
  <<
    { \voiceOne as2^\pp g4 | ges2 ges4 | ges ges f | fes2 fes4 }
    \context Voice = "bassesII" {
      \voiceTwo as,=,2 c4 | es2 es4 | ges,4 ges bes | des2 des4
    }
  >>

  %% [1] p. 82 "luceat eis domine / cum sanctis"
  <<
    { fes=4 fes es | ces2 des4 | es f g | es as as }
    \context Voice = "bassesII" {
      fes,=,4 fes as | ces2 des4 | es es es | as, as as
    }
  >>

  %% [1] p. 83 "tuis in æternum quia"
  <<
    { as'=2 g4 | ges2 ges4 | ges2 f4 | fes2 fes4 | fes2 es4 }
    \context Voice = "bassesII" {
      as,=,2 c4 | es2 es4 | ges,2 bes4 | des2 des4 | fes,4( as) ces
    }
  >>

  %% [1] p. 84 "pius es / cum sanctis tuis"
  <<
    {
      es=2 bes'4 |
      %% F
      as2 as4
      as2^\tag #'aix \crescmolto g4
      as2 as4
    }
    \context Voice = "bassesII" {
      c,=2 es4 |
      %% F
      f2 f4
      f2 e4
      f2 f4
    }
  >>

  %% [1] p. 85 "in æternum quia pi-"
  <<
    {
      as=2^\tag #'aix \< g4 |
      as2 as4 |
      as2^\fsempre a4 |       % [1]: just \f
      a2.
    }
    \context Voice = "bassesII" {
      f=2 e4 | f2 f4 | f2 f4 | e2.
    }
  >>

  %% [1] p. 86-87m1 "us es"
  <<
    { a=2. | a }
    \context Voice = "bassesII" { d,=2. | a' }
  >> \oneVoice
  %% G
  R2.*3

  %% [1] p. 87m2 "Requiem æ-"
  R2.\fermataMarkup
  R2.\fermataMarkup

  R1
  <<
    { \voiceOne f=4^\pp f f4. f8 }
    \context Voice = "bassesII" { d=4 d d4. d8 }
  >>

  %% [1] p. 88 "ternam dona eis domine / Et lux per-"
  << { f=2 f }
    \context Voice = "bassesII" { d=2 d } >> \oneVoice
  r2 <<
    {
      \voiceOne a'=4^\pp a
      a a a4. a8
      a2~ a4
    }
    \context Voice = "bassesII" {
      \voiceTwo c,=4 c
      c4 c c4. c8
      c2~ c4
    }
  >> \oneVoice r4 |
  %% H
  r4 <<
    {
      \voiceOne
      bes'=4^\< bes bes       % [1]: additional textual "cresc."
    }
    \context Voice = "bassesII" { \voiceTwo f=4 f f }
  >>

  %% [1] p. 89 "petua luceat / luceat / luceat"
  << { c'='4.^\f c8 c2 }
     \context Voice = "bassesII" { f,=4. f8 f2 } >>
  \oneVoice r4 <<
    {
      \voiceOne c'='4 des2^\tag #'aix \> |
      %% [1] has d instead of des in the following measure, which does
      %% not fit with the other voices.
      des4~ des8
    }
    \context Voice = "bassesII" {
      %% [1] has a instead of as, which does not fit with the other
      %% voices.
      \voiceTwo as=4 as2 | as4~ as8
    }
  >> \oneVoice r8 r4 <<
    { \voiceOne as4 | g2 g4^\tag #'aix \! }
    \context Voice = "bassesII" { \voiceTwo as4 | g2 g4 }
  >>\oneVoice r4
  r4 << { \voiceOne f=4^\pp f g }
        \context Voice = "bassesII" { \voiceTwo f4 f d } >>

  %% [1] p. 90-91 "eis"
  << { a'=1 | a2 }
     \context Voice = "bassesII" { d,=2( g) | fis!2 } >> \oneVoice r4

  R2.*5
  R2.\fermataMarkup
}


AgnusDeiText = \markup {
  \column {
    "Agnus Dei, qui tollis peccata mundi,"
    "dona eis requiem sempiternam."
    "Lux æterna luceat eis, Domine"
    "cum sanctis tuis in æternum, quia pius es."
  }
}

AgnusDeiTextDE = \markup {
  \column {
    "Lamm Gottes, du nimmst hinweg die Sünden der Welt,"
    "gib ihnen ewige Ruhe."
    "Das ewige Licht leuchte ihnen, Herr"
    "mit deinen Heiligen in Ewigkeit, denn du bist gütig."
  }
}

AgnusDeiTextCombined = \markup {
  \line {
    \AgnusDeiText
    \hspace #3
    \italic \AgnusDeiTextDE
  }
}


AgnusDeiLyricsCommonA = \lyricmode {
  Ag -- nus De -- i,
  Ag -- nus De -- i,
  qui -- tol -- lis pec -- ca -- ta mun -- di,
  do -- na,
  do -- na e -- is re -- qui -- em.
}

AgnusDeiLyricsCommonB = \lyricmode {
  Lux æ -- ter -- na lu -- ce -- at e -- is,
  lu -- ce -- at e -- is, Do -- mi -- ne
  cum sanc -- tis tu -- is in æ -- ter -- num,
  qui -- a pi -- us, pi -- us es;       % [1]: second "pius" missing
  cum sanc -- tis tu -- is in æ -- ter -- num
  qui -- a pi -- us es.
}

AgnusDeiLyricsCommonC = \lyricmode {
  Re -- qui -- em æ -- ter -- nam do -- na e -- is, Do -- mi -- ne,
  et lux per -- pe -- tu -- a lu -- ce -- at,
    lu -- ce -- at,
    lu -- ce -- at e -- is.
}


AgnusDeiLyricsSopranos = \lyricmode {
  \AgnusDeiLyricsCommonA
  \AgnusDeiLyricsCommonB
  \AgnusDeiLyricsCommonC
}

AgnusDeiLyricsAltos = \lyricmode {
  \AgnusDeiLyricsCommonA
  \AgnusDeiLyricsCommonB
  \AgnusDeiLyricsCommonC
}

AgnusDeiLyricsTenors = \lyricmode {
  Ag -- nus De -- i, qui tol -- lis pec -- ca -- ta mun -- di,
  do -- na e -- is,
  do -- na e -- is re -- qui -- em.

  \AgnusDeiLyricsCommonA

  Ag -- nus De -- i, qui tol -- lis pec -- ca -- ta mun -- di,
  do -- na,
  do -- na e -- is re -- qui -- em,
  sem -- pi -- ter -- nam re -- qui -- em.

  \AgnusDeiLyricsCommonB
  \AgnusDeiLyricsCommonC
}

AgnusDeiLyricsBasses = \lyricmode {
  \AgnusDeiLyricsCommonA
  \AgnusDeiLyricsCommonB
  \AgnusDeiLyricsCommonC
}

AgnusDei = \score {
  <<
    \new ChoirStaff = "Choir" <<
      \new Staff = "Sopranos" \with {
        vocalName = \labelSopranos
        shortVocalName = \labelSopranosShort
      } <<
        \AgnusDeiGlobal
        \AgnusDeiCommon
        \new Voice = "sopranos" \AgnusDeiSopranos
        \new Lyrics \lyricsto "sopranos" \AgnusDeiLyricsSopranos
      >>
      \new Staff = "Altos" \with {
        vocalName = \labelAltos
        shortVocalName = \labelAltosShort
      } <<
        \AgnusDeiCommon
        \new Voice = "altos" \AgnusDeiAltos
        \new Lyrics \lyricsto "altos" \AgnusDeiLyricsAltos
      >>
      \new Staff = "Tenors" \with {
        vocalName = \labelTenors
        shortVocalName = \labelTenorsShort
      } <<
        \AgnusDeiCommon
        \new Voice = "tenors" \AgnusDeiTenors
        \new Lyrics \lyricsto "tenors" \AgnusDeiLyricsTenors
      >>
      \new Staff = "Basses" \with {
        vocalName = \labelBasses
        shortVocalName = \labelBassesShort
      } <<
        \AgnusDeiCommon
        \new Voice = "basses" \AgnusDeiBasses
        \new Lyrics \lyricsto "basses" \AgnusDeiLyricsBasses
      >>
    >>
  >>
  \header {
    piece = "V. Agnus Dei"
    pieceIntroText = \AgnusDeiTextCombined
  }
  \layout { }
  \midi { }
}
