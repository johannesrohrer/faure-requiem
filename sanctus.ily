%% -*- coding:utf-8; LilyPond-master-file: "requiem_fauré.ly" -*-
%% lilypond source include file, created 2013-02
%%
%% Gabriel Fauré, Requiem (1887) - III. Sanctus
%%
%% (C) 2013 Johannes Rohrer <src@johannesrohrer.de>
%%
%% This work is licensed under the Creative Commons
%% Attribution-ShareAlike 3.0 Unported License. To view a copy of this
%% license, visit http://creativecommons.org/licenses/by-sa/3.0/ or
%% send a letter to Creative Commons, 444 Castro Street, Suite 900,
%% Mountain View, California, 94041, USA.


SanctusGlobal = {
  %% [1] p. 45
  \tempo "Andante moderato" 4 = 60
  \time 3/4
  s2.*10
  \mark\default % A, [1] p. 48
  s2.*8
  \mark\default % B, [1] p. 50
  s2.*8
  \mark\default % C, [1] p. 52
  s2.*8
  \mark\default % D, [1] p. 54
  s2.*7
  \mark\default % F (sic, [1] skips E here. We don't.), [1] p. 55
  s2.*21
  \bar "|."
}

SanctusCommon = {
  \key es \major
}

SanctusTemplate = \relative {
  \clef "treble"
  %% [1] p. 45
  s2.*2

  %% [1] p. 46
  s2.*4

  %% [1] p. 47
  s2.*4 |

  %% [1] p. 48
  %% A
  s2.*4

  %% [1] p. 49
  s2.*4 |

  %% [1] p. 50
  %% B
  s2.*4

  %% [1] p. 51
  s2.*4 |

  %% [1] p. 52
  %% C
  s2.*4

  %% [1] p. 53
  s2.*4 |

  %% [1] p. 54
  %% D
  s2.*4

  %% [1] p. 55
  s2.*3
  %% F
  s2.*1

  %% [1] p. 56
  s2.*4

  %% [1] p. 57
  s2.*4

  %% [1] p. 58
  s2.*4

  %% [1] p. 59
  s2.*4

  %% [1] p. 60
  s2.*4
}

SanctusSopranos = \relative bes' {
  \clef "treble"
  %% [1] p. 45
  R2.*2

  %% [1] p. 46 "Sanctus sanctus"
  bes2^\pp\( c4~
  c4 bes( as)
  bes4~\) bes8 r r4
  R2.

  %% [1] p. 47 "Sanctus Dominus"
  bes2^\pp\( c4~
  c4 bes as
  bes4~\) bes8 r r4
  R2. |

  %% [1] p. 48 "dominus deus"
  %% A
  bes4\( c des~
  des4 bes( as)
  bes4~\) bes8 r r4
  R2.

  %% [1] p. 49 "deus Saboth"
  bes4^\p^\<\(( c) des~\!
  des4^\> bes  as\)\!
  bes4~ bes8 r r4
  R2. |

  %% [1] p. 50 "Sanctus Dominus deus"
  %% B
  bes4^\p^\<\(( c) d\!
  f4.^\> e8 d4\)\!
  d2\(( c4)
  d2~\) d8 r

  %% [1] p. 51
  R2.*4 |

  %% [1] p. 52 "Pleni sunt coeli et terra"
  %% C
  bes4^\sempredolce\( bes es
  es4 d c
  bes2.
  bes2.\)

  %% [1] p. 53 "Gloria / Gloria tua"
  bes4.^\sempredolce\( bes8 es4
  es4 d c\)
  bes2.
  bes2. |

  %% [1] p. 54 "Hosanna in excelsis"
  %% D
  bes4\( c des
  f4.( es8) des4
  des2( c4)
  bes2.\)

  %% [1] p. 55 "Hosanna in excelsis"
  bes4^\pocoapococresc\( c d!
  es4( f) g
  es2(^\< d4)\!
  %% F
  es2^\f\) r4 |

  %% [1] p. 56
  R2.*4

  %% [1] p. 57 "Hosanna in excelsis"
  r4 r r8 es8^\ff
  es2^\accent es4
  as,4( bes) c
  es2^\> es4                  % [1]: textual "dim" here, hairpin begins
                              % at the start of the following measure

  %% [1] p. 58 "in excelsis / Sanc-"
  as,4( bes) c\!
  es2.^\p
  es2^\pp r4
  g,='2.^\pp

  %% [1] p. 59-60 "tus"
  g2.~
  g2. |
  R2.*5
  R2.\fermataMarkup
}

SanctusAltos = \relative es' {
  \clef "treble"
  %% [1] p. 45-58 "Sanc-"
  %% A, B, C, D, E, F
  R2.*53
  es2.^\pp

  %% [1] p. 59-60 "tus"
  es2.~
  es2.
  R2.*6
}

SanctusTenorsA = \relative bes {
  %% [1] p. 45
  R2.*2

  %% [1] p. 46 "Sancus / Sanc-"
  R2.*2
  bes2^\pp\( c4~
  c4 bes( as)

  %% [1] p. 47 "tus / Sanctus domi-"
  bes4~\) bes8 r r4
  R2.
  bes2\( c4~
  c4 bes as |

  %% [1] p. 48 "nus / dominus de-"
  %% A
  bes4~\) bes8 r r4
  R2.
  bes4^\p\( c d!~\)
  d4^\> bes( as)\!

  %% [1] p. 49 "us / Deus Saba-"
  bes4~ bes8 r r4
  R2.
  bes4^\pp^\<( c) d!~\!
  d4^\> bes as\! |

  %% [1] p. 50 "oth"
  %% B
  bes4~ bes8 r r4
  R2.*3

  %% [1] p. 51 "Deus / deus Sabaoth"
  a2^\pp\( b4~
  b4 a g
  a2~ a8 a
  bes2.\) |

  %% [1] p. 52
  %% C
  R2.*4

  %% [1] p. 53 "Gloria / Gloria tua"
  bes4.\( bes8 es4
  es4 d c\)
  bes2.
  bes2. |

  %% [1] p. 54-55
  %% D
  R2.*7 |
  %% F
  R2.*1

  %% [1] p. 56 "Hosanna in excelsis"
  r4 r r8 es='8^\ff
  es2\accent es4
  as,4( bes) c
  es2 es4

  %% [1] p. 57 "in excelsis"
  as,4( bes) c
  es2.
  es4~ es8 r r4
  R2.
}

SanctusTenors = \relative bes {
  \clef "treble_8"
  %% [1] p. 45-57
  \SanctusTenorsA

  %% [1] p. 58 "Sanc-"
  R2.*2
  <<
    { \voiceOne bes=2.~^\pp^\div | bes2. }
    \context Voice = "tenorsII" { \voiceTwo g=2.~ | g2. }
  >>

  %% [1] p. 59-60 "tus"
  <<
    { \voiceOne bes2.~ | bes2. }
    \context Voice = "tenorsII" { \voiceTwo g=2.~ | g2. }
  >>
  \oneVoice
  R2.*5
  R2.\fermataMarkup
}

SanctusBassesA = <<
  {
    s2.*4
    \switchToBassesI
    s2.*38
    s2 s8 \switchToBassesAll
  }
  \SanctusTenorsA
>>

SanctusBasses = \relative es {
  \clef "bass"
  %% [1] p. 45-57
  \SanctusBassesA

  %% [1] p. 58 "Sanc-"
  R2.*2
  <<
    { \voiceOne es=2.~^\pp^\div | es2. }
    \context Voice = "bassesII" { \voiceTwo bes=,2.~ | bes2. }
  >>

  %% [1] p. 59-60 "tus"
  <<
    { \voiceOne es2.~ | es2. }
    \context Voice = "bassesII" { \voiceTwo bes=,2.~ | bes2. }
  >>
  \oneVoice
  R2.*5
  R2.\fermataMarkup
}


SanctusText = \markup {
  \column {
    "Sanctus, sanctus, sanctus Dominus Deus Sabaoth."
    "Pleni sunt cœli et terra gloria tua."
    "Hosanna in excelsis."
  }
}

SanctusTextDE = \markup {
  \column {
    "Heilig, heilig, heilig Herr, Gott der Heerscharen."
    "Erfüllt sind Himmel und Erde von deiner Herrlichkeit."
    "Hosanna in der Höhe."
  }
}

SanctusTextCombined = \markup {
  \line {
    \SanctusText
    \hspace #3
    \italic \SanctusTextDE
  }
}

SanctusLyricsSopranos = \lyricmode {
  San -- ctus, san -- ctus,
  san -- ctus  Do -- mi -- nus,

  %% A
  Do -- mi -- nus De -- us,
  De -- us Sa -- ba -- oth.

  %% B
  San -- ctus Do -- mi -- nus De -- us.

  %% C
  Ple -- ni sunt cœ -- li et ter -- ra
  glo -- ri -- a, glo -- ri -- a tu -- a.

  %% D
  Ho -- san -- na in ex -- cel -- sis,
  ho -- san -- na in ex -- cel --

  %% F
  sis.
  Ho -- san -- na in ex -- cel -- sis,
  in ex -- cel -- sis.
  San -- ctus. __
}

SanctusLyricsAltos = \lyricmode {
  San -- ctus. __
}

SanctusLyricsBasses = \lyricmode {
  San -- ctus, san -- ctus,
  san -- ctus Do -- mi --

  %% A
  nus,
  Do -- mi -- nus De -- us,
  De -- us Sa -- ba --

  %% B
  oth,
  De -- us, De -- us Sa -- ba -- oth.

  %% C
  Glo -- ri -- a, glo -- ri -- a tu -- a.

  %% D - tacet
  %% F
  Ho -- san -- na in ex -- cel -- sis,
  in ex -- cel -- sis.
  San -- ctus. __
}

SanctusLyricsTenors = \SanctusLyricsBasses


SanctusPianoRedMD = \relative g {
  \clef "treble"

  %% [1] p. 45
  R2.*2

  %% [1] p. 46
  R2.*4

  %% [1] p. 47
  R2.*4 |

  %% [1] p. 48
  %% A
  R2.*4

  %% [1] p. 49
  R2.*4 |

  %% [1] p. 50
  %% B
  R2.*4

  %% [1] p. 51
  R2.*4 |

  %% [1] p. 52
  %% C
  R2.*4

  %% [1] p. 53
  R2.*4 |

  %% [1] p. 54
  %% D
  R2.*4

  %% [1] p. 55
  R2.*3
  %% F (Source skips E)
  R2.*1

  %% [1] p. 56
  R2.*4

  %% [1] p. 57
  R2.*4

  %% [1] p. 58
  R2.*4

  %% [1] p. 59
  R2.*4

  %% [1] p. 60
  R2.*4
}

SanctusPianoRedMS = \relative g {
  \clef "bass"

  %% [1] p. 45
  R2.*2

  %% [1] p. 46
  R2.*4

  %% [1] p. 47
  R2.*4 |

  %% [1] p. 48
  %% A
  R2.*4

  %% [1] p. 49
  R2.*4 |

  %% [1] p. 50
  %% B
  R2.*4

  %% [1] p. 51
  R2.*4 |

  %% [1] p. 52
  %% C
  R2.*4

  %% [1] p. 53
  R2.*4 |

  %% [1] p. 54
  %% D
  R2.*4

  %% [1] p. 55
  R2.*3
  %% F (Source skips E)
  R2.*1

  %% [1] p. 56
  R2.*4

  %% [1] p. 57
  R2.*4

  %% [1] p. 58
  R2.*4

  %% [1] p. 59
  R2.*4

  %% [1] p. 60
  R2.*4
}

SanctusVocals = <<
  \new ChoirStaff = "Choir" <<
    \new Staff = "Sopranos" \with {
      vocalName = \labelSopranos
      shortVocalName = \labelSopranosShort
    } <<
      \SanctusGlobal
      \SanctusCommon
      \new Voice = "sopranos" \SanctusSopranos
      \new Lyrics \lyricsto "sopranos" \SanctusLyricsSopranos
    >>
    \new Staff = "Altos" \with {
      vocalName = \labelContraltos
      shortVocalName = \labelContraltosShort
    } <<
      \SanctusCommon
      \new Voice = "altos" \SanctusAltos
      \new Lyrics \lyricsto "altos" \SanctusLyricsAltos
    >>
    \new Staff = "Tenors" \with {
      vocalName = \labelTenors
      shortVocalName = \labelTenorsShort
    } <<
      \SanctusCommon
      \new Voice = "tenors" \SanctusTenors
      \new Lyrics \lyricsto "tenors" \SanctusLyricsTenors
    >>
    \new Staff = "Basses" \with {
      vocalName = \labelBassesI
      shortVocalName = \labelBassesShortI
    } <<
      \SanctusCommon
      \new Voice = "basses" \SanctusBasses
      \new Lyrics \lyricsto "basses" \SanctusLyricsBasses
    >>
  >>
>>

SanctusPianoReduction =  <<
  \new PianoStaff = "Piano" \with {
    instrumentName = \labelPiano
  } <<
    \new Staff = "m.d." <<
      \SanctusCommon
      \SanctusPianoRedMD
    >>
    \new Staff = "m.s." <<
      \SanctusCommon
      \SanctusPianoRedMS
    >>
  >>
>>


SanctusVocalScore = \score {
  \SanctusVocals
  \header {
    piece = "III. Sanctus"
    pieceIntroText = \SanctusTextCombined
  }
  \layout { }
  \midi { }
}

SanctusPianoVocalScore = \score {
  <<
    \SanctusVocals
    \SanctusPianoReduction
  >>
  \header {
    piece = "III. Sanctus"
    pieceIntroText = \SanctusTextCombined
  }
  \layout { }
  \midi { }
}
