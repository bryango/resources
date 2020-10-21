# Mirror Symmetry

<!-- @import "/assets/mathjax.html" -->
<!-- cSpell:ignore Kähler -->

Prof. 周杰 近春园西楼245 jzhou2018@mail.tsinghua.edu.cn

- Focus: Hodge-theoretic aspects
- Zhumu: 180 131 6084
- Prerequisites: Complex Geometry, Algebraic Geometry (Griffiths et al, Chap. 0 & 1)

## Plan

1. Quick intro to MS
2. Mixed Hodge structures (MHS)
3. Variation of Hodge structs
4. Application of H's to MS

## What is MS?

**Def. Calabi--Yau mfds (CY)**

- **Stronger version:** $X$ compact, $n$-dim, Kähler, satisfying **_one_** of the following

  - $K_X \simeq \mathcal{O}_X$, canonical bundle is trivial
  - $\exists\ \Omega \in \mathrm{H}^0(X,K_X)$ s.t. $\Omega$ vanishes nowhere
  - Structure group $T_X$ can be reduced from $\mathrm{U}(n)$ to $\mathrm{SU}(n)$
  - $X$ has a Kähler metric w/ holonomy contained in $\mathrm{SU}(n)$ (using Chern / Levi-Civita connection)

  **Rmk.** any of above $\Rightarrow$ First Chern class $c_1(X) = c_1(T_X) = 0$.

  **e.g.** $n = 1$, genus 1 Riemann surface

- **Weaker:** the following are equivalent but weaker than the stronger ones:

  - $c_1(X) = 0$
  - $X$ has a Kähler metric w/ vanishing Ricci curvature
  - $\exists\ m > 0$, s.t. $K_X^{\otimes m} \simeq \mathcal{O}_X$
  - $X$ has a finite cover $\tilde{X}$, s.t.
    - $K_{\tilde{X}} = \mathcal{O}_{\tilde{X}}$, **or**
    - $\tilde{X} \simeq T_{\mathrm{torus}} \times Y$, $Y$ simply-connected, $K_Y \simeq \mathcal{O}_Y$

  This is _uniformization_ (单值化).

  **Rmk.**
  - If $\pi_1(X) = 0$ then weak = strong
  - $c_1 = 0\ \Rightarrow$ Ricci flat metric is difficult, due to C&Y.
  - There are other defs, e.g. holonomy exactly $\mathrm{SU}(n)$ rather than a subgroup of it $\Rightarrow\ h^{k,0}(X) = 0,\ \forall\ 0 < k < \dim X$

**Fact.** CY $\To$ Complex (Kähler) $\To$ Symplectic

**MS conjecture for CY n-folds:** $\mathrm{CY}^n$'s $X$ & $X^\vee$ (mirror), one's symplectic geometry (A-model) maps to another's complex geometry (B-model).

- Terminology: Physics origin (Witten)
    - "Cotangent": A-model
    - "Tangent": B-model

**Fact.** For smooth, compact, Kähler $X$,

- Deformations of symplectic structs compatible w/ a fixed $\mathbb{C}$ struct $\leftrightarrow\ \mathrm{H}^{1,1}(X)$.

- Deformations of $\mathbb{C}$ structs $\leftrightarrow\ \mathrm{H}^1(X,T_X)$, if $X$ is $\mathrm{CY}^n$, $\Omega\in\mathrm{H}^0(X,\Omega_X)$, then this is $\mathrm{H}^1(X,\Omega_X^{n-1}) \simeq \mathrm{H}^{n-1,1}(X)$ (Dolbeault).

**Cor.** MS $\To$

$$
  h^{1,1}(X) = h^{n-1,1}(X^\vee),\quad
  h^{n-1,1}(X) = h^{1,1}(X^\vee)
$$

_Mirror_ Sym: mirror reflection in the Hodge diamond.

**A-model:** $(X,\omega)$ $\to$ extract $\to (H^{\mathrm{even}},\cdot_Q)$, we have a _quantum product_ labeled by $Q$, with structure consts $C_{ijk}^X(Q)$. $Q$ is interpreted as a deformation parameter for the symplectic structure of $X$; $\omega\xrightarrow{Q} \tilde{\omega}$. Computation of $C_{ijk}^X(Q)$ is very difficult, and it's related to Gromov--Witten invariants.

**B-model:** $Q$ is interpreted as a deformation parameter for the complex structure.

## Basics

**Symplectic structure:**

$$
  \omega
  \in \mathcal{A}^2_X(X)
  = \Gamma\pqty{
      X,\mathcal{A}^2_X(X)
    }
  = \Gamma\pqty{
      X,
      \bigwedge\nolimits^{\!\!2}
      \mathrm{T}^*\! X
    }
$$

Symplectic structs $\mathcal{M}_{\mathrm{sp}}$ on $X$: all possible $\omega$'s modulo $\mop{Diff}(X)$. To find $\dim \mcal{M}_{\mathrm{sp}}$, consider tangent space: $\omega_0\to\omega_t$, $t$: deformation parameter,

$$
  \mop{T}_{[\omega_0]}
    \mathcal{M}_{\mathrm{sp}}
  = \frac{
      \ker \mathrm{d}
      \cap
      \mathcal{A}^2_X(X)
    }{
      \mop{im} \mathrm{d}
      \cap
      \mathcal{A}^2_X(X)
    }
  = \mathrm{H}^2(X)
$$

**Complex struct:** $V\colon\ \mathbb{R}$-vec. sp., $\mathbb{C}$-struct: $I^2 = -\idty$. Complexify:

$$
  V_{\mathbb{C}}
  = V\otimes_{\mathbb{R}} \mathbb{C}
  = V^{1,0}\oplus V^{0,1}
$$

$(\pm i)$ eigenspace of $\tilde{I} = I\otimes 1$.

Flat space $\leadsto$ manifold: $I\leadsto I_x$, integrable condition (Newlander–Nirenberg theorem): $\dd{}$ is well defined when we restricts to holomorphic functions; almost complex $\leadsto$ complex manifold. (Frobenius) Integrability:

$$
  [T^{0,1}, T^{0,1}] \subset T^{0,1}
$$

Deformation of complex struct with parameter $t$, we have:

$$
  \gamma^*_t T_t^{0,1}
  \simeq
    \big(
      \idty + \mu(t)
    \big)\, T_0^{0,1},\quad
  \mu(t) \in \mathcal{A}^{0,1} (T^{1,0})
$$

**Maurer--Cartan eqn:** $\pdbar\mu + \frac{1}{2} [\mu,\mu] = 0$. We've seen this in YM theory; in fact,

**Rmk.** Any deformation problem $\leftrightarrow$ differential graded Lie algebra w/ "integrable condition" given by Maurer--Cartan eqn w/ "equivalence condition" given by gauge group action.

Again, check the tangent space, and we get:

$$
  \mop{T}_{[I_0]}
    \mathcal{M}_{\mathrm{cpx}}
  = \frac{
      \ker \pdbar
      \cap
      \mathcal{A}^{0,1}(T_X^{1,0})
    }{
      \mop{im} \pdbar
      \cap
      \mathcal{A}^{0,1}(T_X^{1,0})
    }
  = \mathrm{H}^{0,1}_\pdbar \pqty{
      T_X^{1,0}
    }
  =\colon \mathrm{H}^1_\pdbar \pqty{
      T_X
    }
$$

Note: elements in $\mathrm{H}^1_\pdbar(T_X)$ might or might _not_ be realized as a tangent vector $v$ along some curve $\mu(t)$. This is due to the non-linearity of Maurer--Cartan eqn. To see this, we can expand $\mu(t) = \sum_k t^k \mu_k,\ \mu_1 = v$, and the Maurer--Cartan eqn. can be solved order by order; we find that $v$ is integrable only if the obstruction class:

$$
  \mop{ob}(v)
  \mathbin{:=}
  [v,v] = 0 \in \mathrm{H}^2(T_X)
$$

**Cor.** If $H^2(T_X) = 0$, then $v$ always integrable. However, even if $H^2(T_X) \ne 0$, as long as $\mop{ob}_k(v) = 0$, then $v$ is integrable.

**Thm. [Bogomolov-Tian-Todorov]** For $X$: CY, then we always have a _formal_ $\mu(t) = \sum_k t^k \mu_k$ such that $\mu_1 = v$.

**Q.** Is $\mu(t)$ analytic / algebraic then? In algebraic cat., we can also define cohomology, but we no long have $\pdbar$; we have to formally define some $\delta$ to serve as a differential.

Lift of some $\xi \in T_0 S$ to $\mathrm{H}^0$ is captured by the _Kodaira--Spencer map_ $\rho$, with $v = \rho(\xi) = \delta(\tilde{\xi}) \in \mathrm{H}^1$. This is explicitly realized as Čech cohomology.

**Kähler manifold:** fundamental form:

$$
  \omega(a,b)
  = - \aqty{a, Ib}
  = \aqty{Ia, b}
$$

Symplectic struct + Complex struct + Riemannian metric. Kähler: $g = \aqty{,}$ is "real": $
    g(Ia,Ib) = g(a,b)
  $ and furthermore $I$ is parallel w.r.t. the Levi-Civita connection $\nabla$.

$$
  \mop{T}_{[\omega_0]}
    \mathcal{M}_{\mathrm{Kähler}}
  = \Bqty{
      v \in \mathcal{A}^{1,1}_X (X)
      \,\Big|\,
      \dd{v} = 0
    } \Big/ \mathnormal{\sim}
  = \mathrm{H}^{1,1}(X)
    \cap \mathrm{H}^2(X,\mathbb{R})
$$

What about global struct (bdy & group action fixed pts)? Use periods / _Hodge struct_.
