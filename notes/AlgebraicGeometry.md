# Algebraic Geometry

## Preliminaries

### Constructions from rings

Finitely generated: f.g.
$\newcommand{\aqty}[1]{\left\langle#1\right\rangle}$

- f.g. $A$-module: $A\aqty{\alpha_1,\cdots,\alpha_n}$, linear combinations with coefficients in $A$.

- f.g. $A$-algebra: $A[\alpha_1,\cdots,\alpha_n]$, polynomials over $A$.

- f.g. field extension $L/K$: $L = K(\alpha_1,\cdots,\alpha_n)$: fraction of poly's $P(\cdots)/Q(\cdots)$.

### Integral element

$A\subset B$ rings, $b \in B$ **integral over $A$**:

$$
  b^n + a_1 b^{n-1} + \cdots + a_n = 0
  \quad\text{in $B$,}\quad
  a_i \in A
  \label{eq:integralElement}
$$

**i.e.** $b$ is a root of some _monic_ ($a_0 = 1$) poly. over $A$.

**e.g.** $\sqrt{2}\in\mathbb{R}$ integral over $\mathbb{Z}$: $(\sqrt{2})^2 - 2 = 0$.

**Idea:** We are extending $A$ with roots of its poly's. [Wiki:](https://en.wikipedia.org/wiki/Integral_element) If $A, B$ are fields, then the notions of "integral over" and of an "integral extension" are precisely "algebraic over" and "**algebraic extensions**" in field theory (since the root of any polynomial is the root of a monic polynomial).

**Lem.** $A\subset B$ integral domain (整环), $b \in B$ integral over $A$ <br/>
$\Longleftrightarrow$ $b\cdot W \subset W$, for some fintely generated (f.g.) non-zero sub-$A$-module $W\in B$.

**Pf.**

- $\Longrightarrow$: Take $W = A[b] = A\aqty{1,b,b^2,\cdots,b^{n-1}}$, $b^n$ can be reduced using \eqref{eq:integralElement}.

- $\Longleftarrow$: $b\cdot W \subset W$ implies that:

  $$
    \sum_j \pqty{
      b\,\delta_{ij} - a_{ij}
    }\,b_j
    = 0,
  \quad
    \det \pqty{
      b\,\delta_{ij} - a_{ij}
    } = 0
  $$

  The determinant is a poly. in the form of \eqref{eq:integralElement}. Here $b_j$'s are the generators: $W = A\aqty{b_1, b_2, \cdots, b_n} \subset B$.

**Prop.** $A\subset B$ int. dom., $b,c\in B$ int. elements, then so is $(b+c)$, or $(b\cdot c)$.

**Pf.** Use **Lem.**; construct $W = A[b,c]$.

**Comment:** This is non-trivial! Consider finding the minimal poly. of $\sqrt{2} + \sqrt[3]{5} + i$ over $\mathbb{Q}$. **Prop.** in fact gives an upper limit of the poly. deg.

**Thm. (A form of Hilbert's Nullstellensatz --- zero-locus-theorem)**

If:
- $L/k$ field ext., also!
- $L$ is a f.g. $k$-alg. as well, $L = k[\alpha_1,\cdots,\alpha_n]$.

**i.e.** $
  L = k[\alpha_1,\cdots,\alpha_n]
  = k(\alpha_1,\cdots,\alpha_n)
$.

Then $L/k$ is an _algebraic & finite ext._

**Concepts:** field ext.
- algebraic: all elements are roots, e.g. $\mathbb{C}/\mathbb{R}$.
- transcendental: non-roots, e.g. $\mathbb{R}/\mathbb{Q}$.

All transcendental exts are of $\infty$ deg. Hence all finite exts are algebraic. But

**Pf.**

- It suffices to show that each $\alpha_i$ is alg. over $k$.

- Induction on $n$ (the number of generators).

- By contradiction: for $\alpha = T$ transcendental, consider $A = k[T, \tfrac{1}{f(T)}] \subset k(T)$ --- this is called _localization_: by manually adding inverses, the domain is restricted / localized around "non-zero" regions.

  - We can check that $A$ is a field;

  - However, $A$ is not a field, since there are $\infty$-ly many irreducible poly. in $k[T]$, which can be shown using Euclid's arguments, similar to the proof that there are $\infty$-ly many primes.
