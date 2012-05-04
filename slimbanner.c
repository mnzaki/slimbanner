/*
 * di = (i*dh)/h;
 * dj = (j*dw)/(w+1);
 * p = (di*dw+dj);
 */

/*printf("%i %i %i, ", di, dj, p);
  long t1 = d[p/32] , t2 = (sizeof(int)*8 - (p%32) - 1);
  printf("shift: %i, ",  t2);
  printf("%lx & %lx = %lx\n", t1, (1L << t2), t1 & (1L<<t2));
  exit(0);*/

#define w 100
#define h 40
void main() {
    int dw = 25, dh = 10, l=0, i, j, p, v=0, zc=500,
        d[] = {0xf,0xc000fb6,0xc183f,0xc60dbff3,0xe6dff8fb,0x6ccc0db6,0x667edb33,0x0};
    char f[] = "22-METsaysTHANKS!", z[500+(w+1)*h], *b=z+500;
    while(zc--)z[zc]='\n';
    for(;;write(1,z,(w+1)*h),v=!v,sleep(2))
        for(i=0;i<h;i++)
            for(j=0;j<w;j++,b[i*(w+1)+j] = '\n'){
                p = i*dh/h*dw+j*dw/(w+1);
                b[i*(w+1)+j] =
                (((d[p/32] & ( 1L << (sizeof(int)*8 - (p%32) - 1))) > 0) ^ v)?
                    ' ': f[l++]; l%=sizeof(f)-1;
            }
}
