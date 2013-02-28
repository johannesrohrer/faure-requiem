%% -*- coding:utf-8; LilyPond-master-file: "requiem_fauré.ly" -*-
%% lilypond source include file, created 2013-02
%%
%% Gabriel Fauré, Requiem (1887) - II. Offertoire
%%
%% (C) 2013 Johannes Rohrer <src@johannesrohrer.de>
%%
%% This work is licensed under the Creative Commons
%% Attribution-ShareAlike 3.0 Unported License. To view a copy of this
%% license, visit http://creativecommons.org/licenses/by-sa/3.0/ or
%% send a letter to Creative Commons, 444 Castro Street, Suite 900,
%% Mountain View, California, 94041, USA.

OffertoireGlobal = {
  %% [1] p. 23
  \tempo "Adagio molto" 4 = 48
  \time 4/4
  s1*9
  \mark\default % A, [1] p. 25
  s1*6
  \mark\default % B, [1] p. 26
  s1*6
  \mark\default % C, [1] p. 28
  s1*7
  \mark\default % D, [1] p. 30
  s1*7
  \bar "||"

  %% [1] p. 31
  \tempo "Andante moderato" 4 = 63
  \time 3/4
  s2.*8
  \mark\default % E, [1] p. 33
  s2.*10
  \mark\default % F, [1] p. 36
  s2.*10
  \mark\default % G, [1] p. 38
  s2.*8
  \mark\default % H, [1] p. 39
  s2.*6
  \bar "||"

  %% [1] p. 41
  \time 4/4
  \tempo "1° Tempo adagio molto" 4 = 48
  s1*5
  \mark\default % J , [1] p. 42
  s1*6
  \mark\default % K, [1] p. 43
  s1*2
  \bar "||"

  s1*5
  \bar "|."
}

OffertoireCommon = {
  \key d \major
  s1*35 |
  s2.*42 |
  s1*13 |
  \key b \major
}

OffertoireTemplate = \relative {
  \clef "treble"

  %% [1] p. 23
  s1*4

  %% [1] p. 24
  s1*4

  %% [1] p. 25
  s1*1 |
  %% A
  s1*3

  %% [1] p. 26
  s1*3 |
  %% B
  s1*1

  %% [1] p. 27
  s1*4

  %% [1] p. 28
  s1*1 |
  %% C
  s1*3

  %% [1] p. 29
  s1*4 |

  %% [1] p. 30
  %% D
  s1*4

  %% [1] p. 31
  s1*3

  s2.*1

  %% [1] p. 32
  s2.*4

  %% [1] p. 33
  s2.*3 |
  %% E
  s2.*1

  %% [1] p. 34
  s2.*4

  %% [1] p. 35
  s2.*4

  %% [1] p. 36
  s2.*1 |
  %% F
  s2.*5

  %% [1] p. 37
  s2.*4

  %% [1] p. 38
  s2.*1 |
  %% G
  s2.*4

  %% [1] p. 39
  s2.*4 |
  %% H
  s2.*1

  %% [1] p. 40
  s2.*5


  %% [1] p. 41
  s1*4

  %% [1] p. 42
  s1*1
  %% J
  s1*3

  %% [1] p. 43
  s1*3
  %% K
  s1*1

  %% [1] p. 44
  s1*1

  s1*5
}

OffertoireBaritoneSolo =  \relative a {
  \clef "bass"

  %% [1] p. 23-31
  %% A-D
  R1*34
  r2 a4.^\p^\dolce a8

  a2.~

  %% [1] p. 32
  a8 a\( a4 a
  a2 a4
  a4. a8 a4\)
  r4 a4( d)

  %% [1] p. 33
  cis2^\< cis4\!
  cis2~ cis8^\> cis\!
  cis2 cis4^\< | % [1] has an additional "cresc." here
  %% E
  d8\!( cis) cis( b) a4~

  %% [1] p. 34
  a8 a\( c c b a
  a2 a4\)
  r4 a^\p^\dolce a
  a4. a8 a4~

  %% [1] p. 35
  a4 r a
  a4.^\< d,8 d4~^\mf
  d4^\> d a'
  a2.\!^\p~

  %% [1] p. 36
  a2. |
  %% F
  R2.*4
  r4 e4^\p( a8.) a16

  %% [1] p. 37
  gis4^\< a8. a16 d4\!
  cis8. cis16 b4. cis8
  a4^\> fis4.^\dim gis8
  gis4\!^\p gis~ gis8 r

  %% [1] p. 38
  r4 r a |
  %% G
  gis4 gis~ gis8 r
  r4 r a~^\menop
  a8 a c4 bes8. a16
  a2.~

  %% [1] p. 39
  a4 a g
  a2 a4~
  a4 r r
  r a g |
  %% H
  a2.^\dim

  %% [1] p. 40
  a2 a4
  a4.^\< d,8 d4~
  d^\mf^\> d( a')
  a2.~^\p
  a2~ a8 r


  %% [1] p. 41-44 tacet
  R1*18
}

OffertoireSopranos =  \relative d'' {
  \clef "treble"

  %% [1] p. 23-40
  %% A-H
  R1*35 |
  R2.*42 |

  %% [1] p. 41
  R1*2
  r8 d^\pp a8. g16 a4 cis8 d % pp not in [1]
  b4.( cis8) d d cis8. b16

  %% [1] p. 42
  e4 d8 cis b4. b8 |
  %% J
  b8 ais b cis d4^\cresc d8 d
  d8(^\<( cis) d e\!\breathe fis2~^\f
  fis8( e) d cis b4 b8 b

  %% [1] p. 43
  b8^\dim( a)^\< g fis g4 g8( b)
  ais4^\pp b b( ais)
  b4~ b8 r a^\dolcesempre fis4( g8) |
  %% K
  g4 g8 g a( fis4 g8)

  %% [1] p. 44
  g4~ g8 r g( a4 b8)

  b2 cis8^\pp( dis4 e8
  fis2 e4 fis
  cis8 dis) e4 cis4.( b8)
  b1~
  b4 r r2
}

OffertoireAltos =  \relative fis' {
  \clef "treble"

  %% [1] p. 23-24 "O domine Jesu christe rex"
  R1*6
  r2 r8^\pp fis\( d8. cis16
  d4 fis8 g d4 b8 cis

  %% [1] p. 25 "gloriæ"
  d8. d16 e4~\) e8\breathe d\( e fis |
  %% A "libera anima defunctorum de pœnis infer-"
  d8. d16 b4 cis8( d4) e8
  fis4 fis~\) fis r8 fis\(
  fis4 fis8 e fis4.( e8)

  %% [1] p. 26 "ni et de profunco lacu / O domine Jesu christe rex"
  dis4~\) dis8 r r fis\( fis e
  fis4. e8 fis4.( e8)
  dis4~\) dis8 r r gis\(^\ppsempre e8. dis16 |
  %% B
  e4 gis8 a e4 cis8 dis

  %% [1] p. 27 "gloriæ libera animas defunctorum de ore leo-"
  e8. e16 fis4\)~ fis8\breathe e\( fis gis
  e8. e16 cis4 dis8( e4) fis8
  gis4 gis~\) gis r8 gis8^\dolce\(
  gis4 gis8 fis gis4.( fis8)

  %% [1] p. 28 "nis ne absorbeat Tartarus / O domine Jesu christe rex"
  eis4~\) eis8 r r4 gis8 gis |
  %% C
  gis8. gis16 fis4 gis4. fis8
  eis4~ eis8 r r ais^\p fis8. eis16
  fis4 ais8 b g4 d8 e

  %% [1] p. 29 "gloriæ / O domine Jesu christe ne ca-"
  fis8. fis16 g4~ g8^\<\breathe fis e b'\!
  ais8(^\f b) g fis e4.(^\> d8)\!
  cis4~^\p cis8 r r2
  r2 r8 e^\p a( d,) |

  %% [1] p. 30-40 "dant in obscuro"
  %% D
  cis4 r 2.
  r2 r8 e a( d,)
  cis4 cis r2
  R1*4 |

  %% R2.*8 |
  %% R2.*10 | %% E
  %% R2.*10 | %% F
  %% R2.*8 |  %% G
  %% R2.*6 |  %% H
  R2.*42

  %% [1] p. 41 "O domine Jesu christe / Jesu christe rex glori-"
  R1
  r8 a'='^\pp fis8. e16 fis4 g8 a
  g4( fis8 e) fis4 fis8 a
  a4( g) fis8 b a8. gis16

  %% [1] p. 42 "æ libera animas"
  gis8( b) a g fis e fis g |
  %% J  "defunctorum de pœnis inferni / de pœnis in-"
  fis4 g a8( g) a bes
  a( ais) b cis d( cis b a)
  gis4 a a8( gis) fis e

  %% [1] p. 43 "ferni et de profundo lacu / Ne cadant in obscu-"
  d8( cis) b cis d4 d8( g)
  fis4 fis fis2
  fis4~ fis8 r fis dis4( e8) |
  %% K
  e4 e8 e fis( dis4 e8)

  %% [1] p. 44 "ro / Amen, amen amen."
  e4~ e8 r e8( fis4 e8)

  dis4.( e8) fis4( gis
  ais8 b cis dis e dis cis b
  cis8 b) ais( gis) fis2
  fis1~
  fis4 r r2
}

OffertoireTenors =  \relative d' {
  \clef "treble_8"

  %% [1] p. 23-24 " O domine Jesu"
  R1*7
  r8 d^\pp\( b8. ais16 b4 d8 e

  %% [1] p. 25 "christe rex gloriæ"
  b4 g8 a b8. b16 cis4\)~ |
  %% A "libera animas defunctorum de pœnis infer-"
  cis8\breathe b cis d b8. b16 g4
  a8( b4) cis8 d4 d8\breathe d
  d4 d8 cis d4.( cis8)

  %% [1] p. 26 "ni et de profuncdo lacu / O domine Jesu"
  bis4~ bis8 r r d d cis
  d4. cis8 d4.( cis8)
  bis4~ bis8 r r2 |
  %% B
  r8 e^\( cis8. bis16 cis4 e8 fis

  %% [1] p. 27 "christe rex gloriæ libera animas defunctorum de ore leo-"
  cis4 a8 b cis8. cis16 dis4~\)
  dis8 \breathe cis dis e cis8. cis16 a4
  b8( cis4) dis8 e4 e8\breathe e
  e4 e8 dis e4.( dis8)

  %% [1] p. 28 "nis ne absorbeat Tartarus / Jesu christe"
  cisis4~ cisis8 r r4 e8 e |
  %% C
  e8. e16 dis4 e4. dis8
  cisis4~  cisis8 r r2
  r4 r8 fis8^\p b,( cis) d cis~

  %% [1] p. 29 "_ rex gloria, O domine Jesu Christe, ne ca-"
  cis8 b d8. e16 a,8 \breathe d=' cis g'
  fis4 e8( d) cis( d) b4
  ais4~ ais8 r r2
  r2 r8 c c( b) |

  %% [1] p. 30-40 "dant in obscuro" 
  %% D
  ais4 r r2
  r2 r8 c c( b)
  a4 a r2
  R1*4

  %% R2.*8 |
  %% R2.*10 | %% E
  %% R2.*10 | %% F
  %% R2.*14 | %% G
  R2.*42


  %% [1] p. 41 "O domine Jesu chirste / O domine libe-"
  r2 r4 fis'='~^\pp
  fis4 d8. cis16 cis8( b) d  e
  a,4.( b8) cis4 r
  r8 d8^\pp b8. a16 b4 d8 e

  %% [1] p. 42 "ra animas defunctroium de pœnis inferni, de pœnis in-"
  cis4 fis8( e) d4 d |
  %% J
  cis4 d8( e) f4 f8 f
  e4 fis8 g fis( e d cis)
  b4. cis8 d4 d8 e

  %% [1] p. 43 "ferni et de profundo lacu / Ne cadant in obscu-"
  fis8( e) d cis b4 b8( d)
  cis( fis) e( d) cis2
  d4~ d8 r a fis4( g8) |
  %% K
  g4 g8 g a( fis4 g8)

  %% [1] p. 44
  g4 ~ g8 r b4( e,=) |

  fis4( gis) ais4( b
  cis8 dis e fis gis fis e dis
  e8 dis) cis( b) <<
    { \voiceOne ais4( e') | dis1~ | dis4 }
    \context Voice = "tenorsII" { \voiceTwo ais4.( b8) | b1~ | b4 }
  >> \oneVoice r4 r2
}

OffertoireBasses = \relative fis {
  \clef "bass"

  %% [1] p. 23-28 "O domine Jesu"
  R1*21 |
  %% C
  R1*2
  r8 fis^\p d8. cis16 d4 fis8 g

  %% [1] p. 29 "christe rex gloriæ / Jesu christe ne ca-"
  d4 b8 cis d8. d16 e4~
  e8\breathe d e( fis) g( e4 eis8)
  fis4~ fis8 r r2
  r2 r8 fis fis( e) |

  %% [1] p. 30-40 "dant in obscuro"
  %% D
  fis4 r r2
  r2 r8 fis fis( e)
  fis4 fis r2
  R1*4

  %% R2.*8 |
  %% R2.*10 | %% E
  %% R2.*10 | %% F
  %% R2.*14 | %% G
  R2.*42 |


  %% [1] p. 41 "O domine Jesu christe rex gloriæ / rex gloriæ"
  r2 r8 fis=^\pp d8. cis16
  d4 fis8 g d4 b8 cis
  d4. g8 fis( gis) a( fis)
  d4 e b r

  %% [1] p. 42 "libera defunctorum de pœnis infer-"
  r2 r8 g'=( e8.) d16 |
  %% J
  e4~ e8 r r bes' g8.( f16)
  g4 fis8 e d2
  e4. e8 fis4( gis)

  %% [1] p. 43 "ni et de profundo lacu / Ne cadant in obscu-"
  a4. a8 a( g) fis( e)
  e8( d) cis( b) << { \voiceOne fis'2 }
                    \context Voice = "bassesII" {
                      \voiceTwo fis,2
                    } >> \oneVoice
  b=,4~ b8 r fis' dis4( e8) |
  %% K
  e4 e8 e fis( dis4 e8)

  %% [1] p. 44 "rum. / Amen, amen, amen."
  e4~ e8 r d4( cis)

  b2 e(
  e8 fis gis ais b2
  fis4) fis8( e) fis2
  <<
    { \voiceOne fis1~ | fis4 }
    \context Voice = "bassesII" { \voiceTwo b,1~ | b4 }
  >> \oneVoice r4 r2
}

OffertoireText = \markup {
  \column {
    "O Domine Jesu Christe, Rex gloriæ,"
    "libera animas defunctorum de pœnis inferni,"
    "et de profundo lacu; de ore leonis,"
    "ne absorbeat tartarus,"
    "ne cadant in obscurum."
    "Hostias et preces tibi, Domine, laudis offerimus:"
    "tu suscipe pro animabus illis,"
    "quarum hodie memoriam facimus."
    "Fac eas, Domine, de morte transire ad vitam,"
    "quam olim Abrahæ promisisti et semini eius."
  }
}

OffertoireTextDE = \markup {
  \column {
    "O Herr Jesus Christus, König der Herrlichkeit,"
    "bewahre die Seelen der Verstorbenen vor den Qualen der Hölle"
    "und vor den Tiefen der Unterwelt; vor dem Rachen des Löwen,"
    "dass die Hölle sie nicht verschlinge,"
    "noch dass sie hinabstürzen in die Finsternis."
    "Opfer und Gebete bringen wir dir zum Lobe dar, Herr:"
    "nimm sie an für jene Seelen,"
    "derer wir heute gedenken."
    "Herr, lass sie vom Tode hinübergehen zum Leben,"
    "das du einst dem Abraham und seinen Nachkommen verheißen hast."
  }
}

OffertoireTextCombined = \markup {
  \line {
    \OffertoireText
    \hspace #3
    \italic \OffertoireTextDE
  }
}


OffertoireLyricsBaritoneSolo = \lyricmode {
  Hos -- ti -- as et pre -- ces ti -- bi, Do -- mi -- ne,
  lau -- dis of -- fe -- ri -- mus:
  tu sus -- ci -- pe pro a -- ni -- ma -- bus il -- lis,
  qua -- rum ho -- di -- e me -- mo -- ri -- am fa -- ci -- mus.
  Fac -- e -- as, fac -- e -- as, Do -- mi -- ne,
  de mor -- te tran -- si -- re ad vi -- tam,
  quam o -- lim A -- bra -- hæ pro -- mi -- sis -- ti,
  pro -- mi -- sis -- ti
  et se -- mi -- ni e -- ius. __
}

OffertoireLyricsCommonA = \lyricmode {
  O Do -- mi -- ne Je -- su Chris -- te, Rex glo -- ri -- æ,
  li -- be -- ra a -- ni -- mas de -- func -- to -- rum
  de pœ -- nis in -- fer -- ni,
  et de pro -- fun -- do la -- cu;

  o Do -- mi -- ne Je -- su Chris -- te, Rex glo -- ri -- æ,
  li -- be -- ra a -- ni -- mas de -- func -- to -- rum
  de o -- re le -- o -- nis,
  ne abs -- or -- be -- at Tar -- ta -- rus.
}

OffertoireLyricsCommonEnd =  \lyricmode {
  li -- be -- ra a -- ni -- mas de -- func -- to -- rum
  de pœ -- nis in -- fer -- ni,
  de pœ -- nis in -- fer -- ni,
  et de pro -- fun -- do la -- cu;
  ne ca -- dant in obs -- cu -- rum.
  A -- men, a -- men, a -- men. __
}

OffertoireLyricsSopranos = \lyricmode {
  O Do -- mi -- ne Je -- su Chris -- te, Rex glo -- ri -- æ,
  \OffertoireLyricsCommonEnd
}

OffertoireLyricsAltos = \lyricmode {
  \OffertoireLyricsCommonA

  O Do -- mi -- ne Je -- su Chris -- te, Rex glo -- ri -- æ,
  o Do -- mi -- ne Je -- su Chris -- te,
  ne ca -- dant in obs -- cu -- rum.

  O Do -- mi -- ne Je -- su Chris -- te,
  Je -- su Chris -- te, Rex glo -- ri -- æ,
  \OffertoireLyricsCommonEnd
}

OffertoireLyricsTenors = \lyricmode {
  \OffertoireLyricsCommonA

  Je -- su Chris -- te, Rex glo -- ri -- æ,
  O Do -- mi -- ne Je -- su Chris -- te,
  ne ca -- dant in obs -- cu -- rum.

  O Do -- mi -- ne Je -- su Chris -- te,
  o do -- mi -- ne,
  \OffertoireLyricsCommonEnd
}

OffertoireLyricsBasses = \lyricmode {
  O Do -- mi -- ne Je -- su Chris -- te, Rex glo -- ri -- æ,
  Je -- su Chris -- te,
  ne ca -- dant in obs -- cu -- rum.

  O Do -- mi -- ne Je -- su Chris -- te Rex glo -- ri -- æ,
  Rex glo -- ri -- æ,
  li -- be -- ra de -- func -- to -- rum
  de pœ -- nis in -- fer -- ni,
  et de pro -- fun -- do la -- cu,
  ne ca -- dant in obs -- cu -- rum.
  A -- men, a -- men, a -- men. __
}


Offertoire = \score {
  <<
    \new Staff = "BaritoneSolo" \with {
      vocalName = \labelBaritoneSolo
      shortVocalName = \labelBaritoneSoloShort
    } <<
      \OffertoireGlobal
      \OffertoireCommon
      \new Voice = "baritonesolo" \OffertoireBaritoneSolo
      \new Lyrics \lyricsto "baritonesolo" \OffertoireLyricsBaritoneSolo
    >>
    \new ChoirStaff = "Choir" <<
      \new Staff = "Sopranos" \with {
        vocalName = \labelSopranos
        shortVocalName = \labelSopranosShort
      } <<
        \OffertoireGlobal
        \OffertoireCommon
        \new Voice = "sopranos" \OffertoireSopranos
        \new Lyrics \lyricsto "sopranos" \OffertoireLyricsSopranos
      >>
     \new Staff = "Altos" \with {
        vocalName = \labelContraltos
        shortVocalName = \labelContraltosShort
      } <<
        \OffertoireCommon
        \new Voice = "altos" \OffertoireAltos
        \new Lyrics \lyricsto "altos" \OffertoireLyricsAltos
      >>
      \new Staff = "Tenors" \with {
        vocalName = \labelTenors
        shortVocalName = \labelTenorsShort
      } <<
        \OffertoireCommon
        \new Voice = "tenors" \OffertoireTenors
        \new Lyrics \lyricsto "tenors" \OffertoireLyricsTenors
      >>
      \new Staff = "Basses" \with {
        vocalName = \labelBasses
        shortVocalName = \labelBassesShort
      } <<
        \OffertoireCommon
        \new Voice = "basses" \OffertoireBasses
        \new Lyrics \lyricsto "basses" \OffertoireLyricsBasses
      >>
    >>
  >>
  \header {
    piece = "II. Offertoire"
    pieceIntroText = \OffertoireTextCombined
  }
  \layout { }
  \midi { }
}
