import Data.Bits
d="[0x4000000fd9b1a7ecd8d0c666c863f1c431f8e218ccd90c66ee0633634000000,"++
   "0x4000000f8001c66001b31000898aee40cdcdb87cc4503063681830e40000000,"++
   "0x40000003c30003ed8003060ff1836ffcf9b7fe3edb33036d999fb6ccc000000]"
f="22-METsaysTHANKS!";s=0;a w h dw dh=zipWith(t w h dw dh)[(x,y)|y<-[0..h-1],x<-[0..w]]$cycle f;
t w h dw dh(x,y)c|x==w='\n'|testBit((read d::[Integer])!!mod s 3)(dw*dh-1-x*dw`div`(w+1)-y*dh`div`h*dw)=c
 |otherwise=' ';c1="import Data.Bits\n";c2=";a w h dw dh=zipWith(t w h dw dh)[(x,y)|y<-[0..h-1],x<-"++
 "[0..w]]$cycle f;\nt w h dw dh(x,y)c|x==w='\\n'|testBit((read d::[Integer])!!mod s 3)(dw*dh-1-x*dw"++
 "`div`(w+1)-y*dh`div`h*dw)=c\n |otherwise=' ';c1=";main=putStrLn$((\x->"{-"++x++x++a 100 40 25 10++x++
 " Run Me ;) "++x++"-}\n"++c1++"d="++show d++"\nf="++show f++";s="++show(s+1)++c2++show c1++";c2="++show
 c2++c3++show c3)$replicate 45'-');c3=";main=putStrLn$((\\x->\"{-\"++x++x++a 100 40 25 10++x++\" Run "++
 "Me ;) \"++x++\"-}\\n\"++c1++\"d=\"++show d++\"\\nf=\"++show f++\";s=\"++show(s+1)++c2++show c1++\";"++
 "c2=\"++show c2++c3++show c3)$replicate 45'-');c3="
