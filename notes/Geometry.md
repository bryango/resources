# Geometry

Mostly boring basics for exams.

<!-- @import "/assets/mathjax.html" -->

## Smooth manifold

$(M,\mcal{A})$
- Top. manifold $M$
  - $T_2$ separable (Hausdorff)
  - $C_2$ countable
  - Locally Euclidean (homeo. to $\mathbb{R}^n$ open set)
- Smooth struct $\mcal{A}$: max smooth atlas, largest collection of smoothly compat. charts
  - chart: $\psi_i\colon U_i \to \mathbb{R}^n$
  - smoothly compat.: transition map diffeo.
  - transition: $\psi_j\circ\psi^{-1}_i\colon\psi_i(U_i\cap U_j)\to \psi_i(U_i\cap U_j)$, between subsets in $\mathbb{R}^n$

$1 = \sum_\alpha \psi_\alpha$
- $\psi\in[0,1]$
- compactly supported
- locally finite

Exhaustion $f = \sum_j j\psi_j$: compact "sub-level" sets
- $f$ smooth by prop's of partition of unity
- sub-level sets are then closed subsets of $\bigcup_j^N \overline{V}_j$, hence compact

## Smooth maps

Diffeo: smooth bijection with smooth inverse.

$F\colon M\to N$, $\mop{rank}F = \mop{rank}\dd{F}$,
constant rank:
- $\dim N$, surj. submersion
- $\dim M$, inj. immersion
- full: $\min \Bqty{\dim M, \dim N}$
- embedding = imersion + (subspace) top. homeo

Sub-fold $S\hookrightarrow M$:
- embedded: $S$ a manifold by subspace top.
- immersed: not by subspace top.

Regular:
- rank = target
- regular preimage = regular value
- regular everywhere = submersion
- regular pts preimage = properly embedded sub-fold
  - proper: preimage preserves compactness

Lie group homo.
- constant rank: by translation
- kernel is properly embedded sub-fold, also subgroup, hence Lie subgroup.
- codim = rank, rank calculated by curve $\idty + tV$

Group action:
- transitive: there is a group action connecting any 2 pts; only orbit is all of $M$
- free: no non-trivial stabilizer

## Derivatives

Pullback:
- $(G\circ F)^* = F^* \circ G^*$, contravariant functor
- nice (trivial for physicists):
  - $F^* \dd{\omega} = d(F^*\omega)$
  - $F^* (\omega\wedge\eta) = (F^* \omega) \wedge (F^* \eta)$

$i_V$: just like $\dd{}$-derivative:
- $i_V^2 = 0$
- $i_V(\omega\wedge\eta) = (i_V\omega) \wedge \eta + (-1)^k \omega\wedge (i_V\eta)$

Lie $\mcal{L}_V$:
- commutes with $\dd{}$
- distributes across $A\otimes B$, no $(-1)^k$ factor!
- $\mcal{L}_{[V,W]} = [\mcal{L}_V,\mcal{L}_W]$ for all tensor
- magic: $\mcal{L}_V = i_V \dd{} + \dd{} i_V$ for forms

Killing:

$$
\begin{aligned}
  0 = \mcal{L}_V g_{ij}
  &= V^k\pd_k g_{ij}
    + g_{ij}\,\mcal{L}_V (\dd{x^i} \dd{x^j}) \\
  &= V^k\pd_k g_{ij}
    + g_{ik}\, \pd_j V^k
    + g_{jk}\, \pd_i V^k
\end{aligned}
$$

Riemann:
- $\Gamma_{\mu\nu}^\lambda\sim A_\mu$ matrix: $\Gamma^\lambda{}_\nu = \Gamma _{\mu\nu}^\lambda \dd{x^\mu}$
- $R = \dd{\Gamma} + \Gamma\wedge\Gamma$,

  $$
  \begin{aligned}
    R^\lambda{}_{\sigma\mu\nu}
    := \dd{x^\lambda}
      R(\pd_\mu,\pd_\nu)\,\pd_\sigma
    &= \pd_{\mu} \Gamma_{\nu\sigma}^\lambda
      + \Gamma_{\mu\rho}^\lambda
        \Gamma_{\nu\sigma}^\rho
      - (\mu\leftrightarrow\nu)
  \end{aligned}
  $$

## Integral & orientation

Induced volume form by contraction:
$\mathrm{Vol}_S = i^* \pqty{\iota_n \mathrm{Vol}_M}$
- $S$: immersed hypersurface
- $n$: smooth unit normal
- e.g. boundary volume form when $n$: boundary normal

Orientation:
- novanishing top form
- consistently oriented atlas
- novanishing normal for hypersurface in $\mathbb{R}^{n+1}$


## Local Frobenius

- Distribution $D$: rank $k$ subbundle of $TM$
  - (local) integral manifold: $D_p = T_p N,\ \forall\ p\in N \subset M$ immersed sub-fold; i.e. $D_{p\in N}$ realized as $TN$; e.g. integral curve.
- completely integral $\To$ integrable $\To$ involutive
  - integrable: each pt. in some integral manifold; i.e. (local) integrable manifold covers $M$.
  - completely integrable: flat chart in some neighborhood of each pt.
  - involutive: $D$ sections closed under Lie brackets
  - integrable $\To$ involutive: Lie brackets of vectors tangent to sub-fold still tangent; this is due to Lie bracket invariant under pushforward.
- Frobenius: involutive $\To$ integrable
  - given $X,Y$ closed, find a complementary direction, e.g. $\pd_z$
  - $V = \pd_i + v^z \pd_z$, when $\pd_z$ is projected out becomes trivially flat
  - pointwise $(V,W) = (X,Y)\cdot A$, solve for $(V,W)$
  - integral curve gives $(x,y,z) = \Phi(u,v,w)$, where $w$ labels the starting point $(0,0,w)$
  - $(u,v,w) = \Phi^{-1}(x,y,z)$ new coordinates; integrated manifolds given by level sets $w = w_0$.

