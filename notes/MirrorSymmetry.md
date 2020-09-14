# Mirror Symmetry

<!-- cSpell:ignore Kähler -->

$\newcommand{\To}{\Rightarrow}$

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
