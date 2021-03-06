
\chapter{INTEGRATION STUFF FOR LATER.}
\makedefinition{Hypervolume elements.}{dfn:reciprocal:1060}{
Wedge products of the differentials that lie along each of the tangent basis directions
\begin{equation*}
d\Bx_\mu = \Bx_\mu du^\mu, \qquad \mbox{(no sum)},
\end{equation*}
can be used to form line, surface, volume, and hypervolume elements
\begin{equation*}
\begin{aligned}
d^1\Bx &= d\Bx_0 = \Bx_0 du^0 \\
d^2\Bx &= d\Bx_0 \wedge d\Bx_1 = \lr{\Bx_0 \wedge \Bx_1} du^0 du^1 \\
d^3\Bx &= d\Bx_0 \wedge d\Bx_1 \wedge d\Bx_2 = \lr{\Bx_0 \wedge \Bx_1 \wedge \Bx_2 } du^0 du^1 du^2 \\
d^4\Bx &= d\Bx_0 \wedge d\Bx_1 \wedge d\Bx_2 \wedge d\Bx_3 = \lr{\Bx_0 \wedge \Bx_1 \wedge \Bx_2 \wedge \Bx_3 } du^0 du^1 du^2 du^3.
\end{aligned}
\end{equation*}
%will be of interest when formulating the fundamental theorem of geometric algebra.
} % definition
For such hypervolume elements to be meaningful, we must impose a non-degeneracy constraint, and require that the
%In particular, the space must be non-degenerate, which means that the
volume elements above are non-zero (the Jacobian's of the partials are not zero.)  This non-zero constraint is required to ensure that the orientation of the volume elements do not change sign (as in differential forms, we do not take the absolute value of any Jacobians.)
We must also require that these volume elements are invertible, since non-invertible null vectors, bivectors, and trivectors,
are possible in our non-Euclidean space.
The parameterized hypersurfaces that we integrate over, when augmented with these additional constraints, are referred to as manifolds.

