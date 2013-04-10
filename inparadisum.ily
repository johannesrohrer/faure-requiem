%% -*- coding:utf-8; LilyPond-master-file: "requiem_fauré.ly" -*-
%% lilypond source include file, created 2013-02
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

InParadisumGlobal = {
  %% [1] p. 114
  \time 3/4
  \tempo "Andante moderato" 4 = 58
  s2.*10
  \mark\default % A, [1] p. 116
  s2.*8
  \mark\default % B, [1] p. 118
  s2.*8
  \mark\default % C, [1] p. 120
  s2.*9
  \mark\default % D, [1] p. 123
  s2.*9
  \mark\default % E, [1] p. 125
  s2.*7
  \mark\default % F, [1] p. 127
  s2.*10
  \bar "|."
}

InParadisumCommon = {
  \key d \major
}

InParadisumTemplate = \relative {
  %% [1] p. 114
  s2.*3

  %% [1] p. 115
  s2.*4

  %%  [1] p. 116
  s2.*3
  %% A
  s2.*1

  %% [1] p. 117
  s2.*4

  %% [1] p. 118
  s2.*3
  %% B
  s2.*1

  %% [1] p. 119
  s2.*4

  %% [1] p. 120
  s2.*3
  %% C
  s2.*1

  %% [1] p. 121
  s2.*4

  %% [1] p. 122
  s2.*4

  %% [1] p. 123
  %% D
  s2.*4

  %% [1] p. 124
  s2.*4

  %% [1] p. 125
  s2.*1
  %% E
  s2.*3

  %% [1] p. 126
  s2.*4

  %% [1] p. 127
  %% F
  s2.*4

  %% [1] p. 128
  s2.*6
}

InParadisumSopranos = \relative fis' {
  \clef "treble"

  %% [1] p. 114 "In para-"
  R2.*2
  fis4\(^\pdolce fis4. a8     % [1]: p and "dolce" separate

  %% [1] p. 115 "disum / Deducant"
  a2( d4)
  d2.~\)
  d4~ d8 r r4
  a4\( d e

  %%  [1] p. 116 "angeli in tuo ad-"
  d2~ d8 a
  a2.~\)
  a4 r d\(
  %% A
  b4^\semprep e=''4. e8

  %% [1] p. 117 "ventu suscipiant te martyres"
  fis4 d4.\)\breathe d8\(
  b8. b16 e4 e
  fis2~ fis8 d
  d2.~\)

  %% [1] p. 118 "et perducant te in civitatem"
  d4 r r
  r4 dis\(^\sempredolce dis8 dis
  d4 a2\)\breathe
  %% B
  dis=''4\( dis8 dis dis dis

  %% [1] p. 119 "sanctam Jerusalem / Jerusa-"
  d4 a4.\)\breathe a8\(
  b2~ b8 b
  d2\) r8 b\(^\<              % [1]: textual "cresc."
  b2~ b8 b

  %% [1] p. 120 "lem / Jerusalem / Je-"
  e2 e4
  fis^\f( d4.) a8
  a2.~\)^\>
  %% C
  a2^\ppp a4\(

  %% [1] p. 121 "rusalem / Cho-"
  a2~ a8 a
  a2.\)
  R2.
  a2.\(^\dolce

  %% [1] p. 122 "rus angelorum te suscipiat"
  a4 b d8.( e16)
  d2 a4\)
  a4.\( e8 fis8. g16
  a2.\) |

  %% [1] p. 123 "et cum Lazaro quomdam paupe-"
  %% D
  r4 b\( b
  a4. fis8 fis4\)
  b4.(\(^\< cis8)\! b4
  a2~^\> a8\! fis8

  %% [1] p. 124 "re / Et cum Lazaro quamdam"
  fis2.\)
  b2\( g8( a)
  b4. b8 b4\)\breathe
  cis2^\< \( cis8( d)         % [1]: textual "cresc."

  %% [1] p. 125 "paupere æternam habeas Re-"
  e4. e8 e4 |
  %% E
  f4^\f c a
  a4.^\> a8 a4\)
  a2.~^\pp

  %% [1] p. 126 "quiem / æ-"
  a2~ a8 a
  a2.
  R2.
  r4 r a4^\pp\( |

  %% [1] p. 127 "ternam habeas"
  %% F
  b2.
  fis2.\)
  d'2~\( d8 fis,
  fis2.~\)

  %% [1] p. 128 "_ requiem"
  fis4~ fis8 r r4
  fis2.^\tag #'aix \ppp ~
  fis2 fis4
  fis2.~
  fis2.~
  fis2.\fermata
}

InParadisumAltos = \relative f' {
  \clef "treble"

  %% [1] p. 114-120 "Jeru-"
  R2.*25
  r4 r f^\ppp\( |
  %% C
  fis!2.~

  %% [1] p. 121-125m3 "salem"
  fis4( e~) e8 d
  d2.\) |
  %% R2.*6
  %% R2.*9 % D
  %% R2.*2 % E
  R2.*17

  %% [1] p. 125m4 "Re-"
  fis2.^\pp

  %% [1] p. 126 "quiem"
  e2.
  d2.
  R2.*2 |

  %% [1] p. 127 "æternam habeas"
  %% F
  r4 r b^\pp
  d2 d4
  b2~ b8 d
  d2.~

  %% [1] p. 128 "_ requiem"
  d4~ d8 r r4
  d2.~^\ppp
  d2 d4
  d2.~
  d2.~
  d2.\fermata
}

InParadisumTenors = \relative d' {
  \clef "treble_8"
  %% [1] p. 114-119 "Jerusalem"
  R2.*20
  <<
    { s2.^\div^\pp | s2. | s2.^\< }  % [1]: textual cresc.
    { \voiceOne d2. | d2 d4 | d2. }
    \context Voice = "tenorsII" { \voiceTwo b2. | b2 b4 | b2. }
  >>

  %% [1] p. 120 "Jerusalem / Jeru-"
  <<
    { s4 s s | s2.^\f | s2.^\tag #'aix \> }  % [1]: additional hairpin
    { b4 cis d | d2. | c2. }
    \context Voice = "tenorsII" { gis4 gis gis | a2. | a2.\( }
  >> |
  %% C
  <<
    { s2.^\ppp }
    { cis2. }
    \context Voice = "tenorsII" { a2. }
  >>

  %% [1] p. 121-125m3 "salem"
  <<
    { cis2 ~ cis8( a) | a2. }
    \context Voice = "tenorsII" { a4( g2) | fis2.\) }
  >> \oneVoice
  %% R2.*6
  %% R2.*9 % D
  %% R2.*2 % E
  R2.*17

  %% [1] p. 125m4-126 "Requiem"
  <<
    { \voiceOne cis'='2.^\pp | cis | d }
    \context Voice = "tenorsII" { \voiceTwo a2. | a | a }
  >> \oneVoice
  R2.*2

  %% [1] p. 127
  %% F
  r4 r fis^\pp
  <<
    { \voiceOne a2 a4 | fis2~ fis8 fis | a2.~ }
    \context Voice = "tenorsII" {
      \voiceTwo fis2 fis4 | fis2~ fis8 fis | fis2.~
    }
  >>

  %% [1] p. 128 "requiem"
  <<
    { a4~ a8 r r4 | a2.~^\ppp | a2 a4 | a2.~ | a~ | a\fermata }
    \context Voice = "tenorsII" {
      fis4~ fis8 r r4 | fis2.~ | fis2 fis4 | fis2.~ | fis~ | fis
    }
  >>
}

InParadisumBasses = \relative g {
  \clef "bass"

  %% [1] p. 114-119 "Jerusalem"
  R2.*20
  <<
    { s2.^\div^\pp | s2. | s2.^\tag #'aix \< }
    { \voiceOne g2. | g2 a4 | gis2. }
    \context Voice = "bassesII" { \voiceTwo g2. | g2 fis4 | e2. }
  >>

  %% [1] p. 120 "Jerusalem / Jeru-"
  <<
    { s4 s s | s2.^\f | s2.^\tag #'aix \> }
    { e4 e e | d4( fis2) | f2( c4) }
    \context Voice = "bassesII" { d=4 cis b | a2. | a2. }
  >> |
  %% C
  \oneVoice a2.^\ppp

  %% [1] p. 121-125m3 "salem"
  a2.
  d2.
  %% R2.*6
  %% R2.*9 % D
  %% R2.*2 % E
  R2.*17

  %% [1] p. 125m4-126 "Requiem"
  <<
    { \voiceOne a'=2.^\pp | g | fis }
    \context Voice = "bassesII" { \voiceTwo a,2. | a | d }
  >> \oneVoice
  R2.*2

  %% [1] p. 127 "æternam habeas"
  %% F
  r4 r
  <<
    { \voiceOne d=4^\pp | d2 d4 | d2~ d8 d | d2. ~ }
    \context Voice = "bassesII" {
      \voiceTwo  b4 | a2 a4 | b2~ b8 b | a2. ~
    }
  >>

  %% [1] p. 128 "_ requiem"
  <<
    { d4~ d8 r r4 | d2.~^\ppp | d2 d4 | d2.~ | d~ | d\fermata }
    \context Voice = "bassesII" {
      a4~ a8 r r4 | a2.~ | a2 a4 | a2.~ | a~ | a
    }
  >>
}


InParadisumText = \markup {
  \column {
    "In paradisum deducant angeli;"
    "in tuo adventu suscipiant te martyres,"
    "et perducant te in civitatem sanctam Jerusalem."
    "Chorus angelorum te suscipiat,"
    "et cum Lazaro, quondam paupere,"
    "æternam habeas requiem."
  }
}

InParadisumTextDE = \markup {
  \column {
    "Ins Paradies mögen die Engel dich geleiten,"
    "bei deiner Ankunft die Märtyrer dich empfangen"
    "und dich führen in die heilige Stadt Jerusalem."
    "Der Chor der Engel möge dich empfangen,"
    "und mit Lazarus, dem einst armen,"
    "mögest du ewige Ruhe haben."
  }
}

InParadisumTextCombined = \markup {
  \line {
    \InParadisumText
    \hspace #3
    \italic \InParadisumTextDE
  }
}


InParadisumLyricsSopranos = \lyricmode {
  In pa -- ra -- di -- sum __ de -- du -- cant an -- ge -- li; __
  in tu -- o ad -- ven -- tu sus -- ci -- pi -- ant te mar -- ty -- res, __
  et per -- du -- cant te in ci -- vi -- ta -- tem sanc -- tam
  Je -- ru -- sa -- lem,
  Je -- ru -- sa -- lem,
  Je -- ru -- sa -- lem,
  Je -- ru -- sa -- lem.

  Cho -- rus an -- ge -- lo -- rum te sus -- ci -- pi -- at,
  et cum La -- za -- ro, quon -- dam pau -- pe -- re,
  et cum La -- za -- ro, quon -- dam pau -- pe -- re,
  æ -- ter -- nam ha -- be -- as re -- qui -- em,
  æ -- ter -- nam ha -- be -- as __ re -- qui -- em. __
}

InParadisumLyricsAltos = \lyricmode {
  Je -- ru -- sa -- lem.

  re -- qui -- em,
  æ -- ter -- nam ha -- be -- as __ re -- qui -- em. __
}

InParadisumLyricsTenors = \lyricmode {
  Je -- ru -- sa -- lem,
  Je -- ru -- sa -- lem,
  Je -- ru -- sa -- lem.

  re -- qui -- em,
  æ -- ter -- nam ha -- be -- as __ re -- qui -- em. __
}

InParadisumLyricsBasses = \InParadisumLyricsTenors


InParadisum = \score {
  <<
    \new ChoirStaff = "Choir" <<
      \new Staff = "Sopranos" \with {
        vocalName = \labelSopranos
        shortVocalName = \labelSopranosShort
      } <<
        \InParadisumGlobal
        \InParadisumCommon
        \new Voice = "sopranos" \InParadisumSopranos
        \new Lyrics \lyricsto "sopranos" \InParadisumLyricsSopranos
      >>
      \new Staff = "Altos" \with {
        vocalName = \labelAltos
        shortVocalName = \labelAltosShort
      } <<
        \InParadisumCommon
        \new Voice = "altos" \InParadisumAltos
        \new Lyrics \lyricsto "altos" \InParadisumLyricsAltos
      >>
      \new Staff = "Tenors" \with {
        vocalName = \labelTenors
        shortVocalName = \labelTenorsShort
      } <<
        \InParadisumCommon
        \new Voice = "tenors" \InParadisumTenors
        \new Lyrics \lyricsto "tenors" \InParadisumLyricsTenors
      >>
      \new Staff = "Basses" \with {
        vocalName = \labelBasses
        shortVocalName = \labelBassesShort
      } <<
        \InParadisumCommon
        \new Voice = "basses" \InParadisumBasses
        \new Lyrics \lyricsto "basses" \InParadisumLyricsBasses
      >>
    >>
  >>
  \header {
    piece = "VII. In paradisum"
    pieceIntroText = \InParadisumTextCombined
  }
  \layout { }
  \midi { }
}
