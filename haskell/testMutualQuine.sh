#!/bin/bash
ghc slimquine1.hs && ./slimquine1 > tmp_testquine.hs && ghc tmp_testquine.hs &&
./tmp_testquine > tmp_slimquine1_same.hs && diff slimquine1.hs tmp_slimquine1_same.hs

rm tmp_testquine* tmp_slimquine1_same.hs

