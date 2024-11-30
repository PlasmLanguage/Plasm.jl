
using Plasm
cube = CUBE(1)::Hpc
hpc = UNION(
DIFFERENCE( cube, T(1,2,3)(.5,.5,.5), cube),
T([1,2])([0.75,.25]),
DIFFERENCE( cube, T(1,2,3)(.5,.5,.5), cube))::Hpc
result = BOOL(hpc)::Lar
VIEWCOMPLEX(result, show=["FV"], explode=[1.2,1.2,1.2])
VIEWCOMPLEX(result, show=["CV"], explode=[5,5,5])