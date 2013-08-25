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


\include "common.ily"
\include "titling-section.ily"
\include "introitetkyrie.ily"
\include "offertoire.ily"
\include "sanctus.ily"
\include "piejesus.ily"
\include "agnusdei.ily"
\include "liberame.ily"
\include "inparadisum.ily"

\book {
  \bookOutputName "Gabriel Fauré - Requiem (vocal score)"
  \header { instrument = "Gesangspartitur · Vocal score" }
  \bookpart { \titlingBookpart }
  \bookpart {
    \tocItem \markup "I. Introït et Kyrie"
    \score { \IntroitEtKyrieVocalScore }
    \tocItem \markup "II. Offertoire"
    \score { \OffertoireVocalScore }
    \tocItem \markup "III. Sanctus"
    \score { \SanctusVocalScore }
    \tocItem \markup "IV. Pie Jesus"
    \score { \PieJesusVocalScore }
    \tocItem \markup "V. Agnus Dei"
    \score { \AgnusDeiVocalScore }
    \tocItem \markup "VI. Libera me"
    \score { \LiberaMeVocalScore }
    \tocItem \markup "VII. In paradisum"
    \score { \InParadisumVocalScore }
  }
}