using Plasm


tetra      = HPCSIMPLEX(3)
twotetra   = STRUCT( tetra, S(1)(-1), tetra )
fourtetra  = STRUCT( twotetra, S(2)(-1), twotetra )
octahedron = BOOL(UNION( fourtetra, S(3)(-1), fourtetra ))

b=BOUNDARY(octahedron)



V,FV=BREP(b)
@show([V,FV])

vol=VOLUME([V,FV])# 8*0.16666
@show(V)
@show(FV)
@show(vol)

VIEWCOMPLEX(b, show=["V","EV","Vtext"])

