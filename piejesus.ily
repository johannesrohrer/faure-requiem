%% -*- coding:utf-8; LilyPond-master-file: "requiem_fauré.ly" -*-
%% lilypond source include file, created 2013-02
%%
%% Gabriel Fauré, Requiem (1887) - IV. Pie Jesus
%%
%% (C) 2013 Johannes Rohrer <src@johannesrohrer.de>
%%
%% This work is licensed under the Creative Commons
%% Attribution-ShareAlike 3.0 Unported License. To view a copy of this
%% license, visit http://creativecommons.org/licenses/by-sa/3.0/ or
%% send a letter to Creative Commons, 444 Castro Street, Suite 900,
%% Mountain View, California, 94041, USA.

PieJesusGlobal = {
  %% [1] p. 61
  \tempo "Adagio" 4 = 44
  \time 4/4
  s1*10
  \mark\default % A, [1] p. 63
  s1*7
  \mark\default % B, [1] p. 65
  s1*7
  \mark\default % C, [1] p. 66
  s1*4
  \mark\default % D, [1] p. 67
  s1*6
  \mark\default % E, [1] p. 69
  s1*4
  \bar "|."
}

PieJesusCommon = {
  \key bes \major
}

PieJesusTemplate = \relative {
  %% [1] p. 61
  s1*4

  %% [1] p. 62
  s1*4

  %% [1] p. 63
  s1*2
  %% A
  s1*3

  %% [1] p. 64
  s1*4

  %% [1] p. 65
  %% B
  s1*5

  %% [1] p. 66
  s1*2
  %% C
  s1*2

  %% [1] p. 67
  s1*2
  %% D
  s1*2

  %% [1] p. 68
  s1*4

  %% [1] p. 69
  %% E
  s1*4
}

PieJesusSopranoSolo = \relative bes' {
  %% [1] p. 61 Pie Jesu Domine / dona eis"
  R1
  bes4.^\tag #'aix -\tweak #'extra-offset #'(-2 . 0.45) -\solo
       ^\dolceetranquille
       _\tweak #'X-offset #-3 -\tweak #'Y-offset #-2 -\p
     bes8 es4. es8
  d4. c8 d2
  d8( f) d( c) d4 bes

  %% [1] p. 62-63 "requiem / dona eis requiem"
  c4. d8 es2
  d8( f) d( c) d4 bes
  bes4. a8 bes4~ bes8 r
  R1*3 |
  %% A "Pie Jesu domine / dona eis"
  <<
    {
      <>^\tweak #'X-offset #1
        -\tweak #'extra-spacing-width #'(0 . -3)
        -\tweak #'extra-offset #'(0 . 0.8)
        -\unpocopiu
      s4*3 s4^\< |
      s2 s2^\mf
    }
    {
      bes4. bes8 f'4. f8
      f8(e) d4 e2
      e8( f) d( c) d4 bes
    }
  >>

  %% [1] p. 64 "requiem / dona eis Requiem"
  a4. bes8 c2
  a8(^\> c) a( g) a4 f
  f4.^\p e8 f2      % [1] has es instead of e, probably a "typo"
  R1 |

  %% [1] p. 65 "dona eis domine / dona eis requiem"
  %% B
  r2 r4 c'=''^\pdolce
  c4( es) d f
  d4.^\> c8 d2^\!
  c4 es d f
  d4.^\> c8 d2\!

  %% [1] p. 66 "sempiternam requim"
  d4^\pococresc f e a,
  c=''4.^\> b8 a2\! |
  %% C "sempiternam requiem"
  a4.^\p g8 a4 a
  a4. g8 a2

  %% [1] p. 67 "sempiternam requiem"
  a4. g8 a4. g8
  a4. << { s8^\< s4. s8^\mf }
         { g8 a2 } >> |
  %% D "Pie Jesu / Jesu"
  bes4. bes8 es4. es8
  d4.( c8) d2

  %% [1] p. 68 "Pie Jesu Domine / dona eis / dona eis"
  d8( f) d( c) d4 bes
  c4. d8 es2
  \override DynamicLineSpanner #'staff-padding = #2
  d8(^\< f) d( c) d4 bes\!
  bes8(^\> d) bes( a) bes4 g\! |
  \revert DynamicLineSpanner #'staff-padding

  %% [1] p. 69 "sempiternam requiem / sempiternam requiem"
  %% E
  f4. es8 f4. es8
  f4. f8 f2
  f4 g f g
  f4 g bes2\fermata
}


PieJesuText = \markup {
  \column {
    "Pie Jesu Domine, dona eis sempiternam requiem."
  }
}

PieJesuTextDE = \markup {
  \column {
    "Gütiger Herr Jesus, gib ihnen ewige Ruhe."
  }
}

PieJesuTextCombined = \markup {
  \line {
    \PieJesuText
    \hspace #3
    \italic \PieJesuTextDE
  }
}


PieJesusLyricsSopranoSolo = \lyricmode {
  Pi -- e Je -- su Do -- mi -- ne,
  do -- na e -- is re -- qui -- em,
  do -- na e -- is re -- qui -- em.

  Pi -- e Je -- su Do -- mi -- ne,
  do -- na e -- is re -- qui -- em,
  do -- na e -- is re -- qui -- em,

  do -- na e -- is Do -- mi -- ne,
  do -- na e -- is re -- qui -- em,

  sem -- pi -- ter -- nam re -- qui -- em,
  sem -- pi -- ter -- nam re -- qui -- em,
  sem -- pi -- ter -- nam re -- qui -- em.

  Pi -- e Je -- su, Je -- su,
  pi -- e Je -- su Do -- mi -- ne,
  do -- na e -- is,
  do -- na e -- is
  sem -- pi -- ter -- nam re -- qui -- em,
  sem -- pi -- ter -- nam re -- qui -- em.
}


PieJesusPianoRedMD = \relative f' {
  \clef "treble"

  %% [1] p. 61
  R1*4

  %% [1] p. 62
  R1*4

  %% [1] p. 63
  R1*2
  %% A
  R1*3

  %% [1] p. 64
  R1*4

  %% [1] p. 65
  %% B
  R1*5

  %% [1] p. 66
  R1*2
  %% C
  R1*2

  %% [1] p. 67
  R1*2
  %% D
  R1*2

  %% [1] p. 68
  R1*4

  %% [1] p. 69
  %% E
  R1*4
}

PieJesusPianoRedMS = \relative bes' {
  \clef "bass"

  %% [1] p. 61
  R1*4

  %% [1] p. 62
  R1*4

  %% [1] p. 63
  R1*2
  %% A
  R1*3

  %% [1] p. 64
  R1*4

  %% [1] p. 65
  %% B
  R1*5

  %% [1] p. 66
  R1*2
  %% C
  R1*2

  %% [1] p. 67
  R1*2
  %% D
  R1*2

  %% [1] p. 68
  R1*4

  %% [1] p. 69
  %% E
  R1*4
}


PieJesusVocals = <<
  \new Staff = "SopranoSolo" \with {
    vocalName = \labelSopranos
    shortVocalName = \labelSopranosShort
  } <<
    \PieJesusGlobal
    \PieJesusCommon
    \new Voice = "sopranosolo" \PieJesusSopranoSolo
    \new Lyrics \lyricsto "sopranosolo" \PieJesusLyricsSopranoSolo
  >>
>>

PieJesusPianoReduction =  <<
  \new PianoStaff = "Piano" \with {
    instrumentName = \labelPiano
  } <<
    \new Staff = "m.d." <<
      \PieJesusCommon
      \PieJesusPianoRedMD
    >>
    \new Staff = "m.s." <<
      \PieJesusCommon
      \PieJesusPianoRedMS
    >>
  >>
>>


PieJesusVocalScore = \score {
  \PieJesusVocals
  \header {
    piece = "IV. Pie Jesus"
    pieceIntroText = \PieJesuTextCombined
  }
  \layout { }
  \midi { }
}

PieJesusPianoVocalScore = \score {
  <<
    \PieJesusVocals
    \PieJesusPianoReduction
  >>
  \header {
    piece = "IV. Pie Jesus"
    pieceIntroText = \PieJesuTextCombined
  }
  \layout { }
  \midi { }
}
