
points=[
  [0.0,0.0,0.0],
  [1.0,0.0,0.0],
  [1.0,1.0,0.0],
  [0.0,1.0,0.0],
   [0.0,0.0,1.0]]

pol1=MKPOL(points,[[1,2,3,  5]]);
pol2=MKPOL(points,[[1,3,4,  5]]);
s=STRUCT(pol1,pol2)

println("WITHOUT R");
println(box(pol1));
println(box(pol2));
println(box(s));

VIEW(pol1)
VIEW(pol2)
VIEW(s)

println("WITH R");
rpol1=STRUCT(R(1,2)(π/4),pol1)
rpol2=STRUCT(R(1,2)(π/4),pol2)
rs=STRUCT(rpol1, rpol2)
println(SIZE([1,2,3])(rpol1))
println(SIZE([1,2,3])(rpol2))
println(SIZE([1,2,3])(rs))
VIEW(rpol1)
VIEW(rpol2)
VIEW(STRUCT(rpol1,rpol2))

SIZE([1,2,3])(rpol1)









  