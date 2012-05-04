import Data.Bits
d=[1809251421040881223578526132356212744386171840748677712684849289234581815296,
   1809251420450559521827699622364399252817399751885605202647537205873328783360,
   1809251400671549502771212599041018465181633543326290321054940158599106658304]
   ::[Integer];f="22-METsaysTHANKS!";o n x="\nc"++show n++"="++show x;a w h dw
   dh=zipWith(t w h dw dh)[(x,y)|y<-[0..h-1],x<-[0..w]]$cycle f;t w h dw dh(x,y)c
   |x==w='\n'|testBit(d!!0)(dw*dh-1-x*dw`div`(w+1)-y*dh`div`h*dw)=c|otherwise=' ';
   main=putStrLn$((\x->"{-"++x++x++a 100 40 25 10++x++" Run Me ;) "++x++"-}\n"++c1
   ++"d=["++show(d!!1)++",\n   "++show(d!!2)++",\n   "++show (d!!0)++
   "]\n   ::[Integer];f="++show f++c2++c3++c4++c5++c6++c7++c8++(concat.zipWith o[1
   ..8]$[c1,c2,c3,c4,c5,c6,c7,c8]))$replicate 42'-')
c1="import Data.Bits\n"
c2=";o n x=\"\\nc\"++show n++\"=\"++show x;a w h dw\n   dh=zipWith(t w h dw dh)[("
c3="x,y)|y<-[0..h-1],x<-[0..w]]$cycle f;t w h dw dh(x,y)c\n   |x==w='\\n'|testBit"
c4="(d!!0)(dw*dh-1-x*dw`div`(w+1)-y*dh`div`h*dw)=c|otherwise=' ';\n   main=putStr"
c5="Ln$((\\x->\"{-\"++x++x++a 100 40 25 10++x++\" Run Me ;) \"++x++\"-}\\n\"++c1"
c6="\n   ++\"d=[\"++show(d!!1)++\",\\n   \"++show(d!!2)++\",\\n   \"++show (d!!0)"
c7="++\n   \"]\\n   ::[Integer];f=\"++show f++c2++c3++c4++c5++c6++c7++c8++(concat"
c8=".zipWith o[1\n   ..8]$[c1,c2,c3,c4,c5,c6,c7,c8]))$replicate 42'-')"
