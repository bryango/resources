# Renormalization

**This note is deprecated. Check Archive/Renormalization for the updated LaTeX version.**

<!-- cSpell:ignoreRegExp counterterm[s]?|renormaliz((ed)|(ability)|(able)){1} -->
<!-- @import "/assets/mathjax.html" -->

The continuum limit $\Lambda\to\infty$ is **not** well defined. Renormalization provides a way to _define_ the theory when $\Lambda\to\infty$.

**My belief:** The only way to fully understand renormalization is through Wilson's arguments; all other "interpretations" of renormalization are only _heuristic_.

**Concepts:**
- Renormalization group
- Counterterms
- Regularization and cutoff

## References

Ranked by importance:

- David Skinner's note:
  - https://www.damtp.cam.ac.uk/user/dbs26/AQFT.html
    - https://www.damtp.cam.ac.uk/user/dbs26/AQFT/Wilsonchap.pdf
    - https://www.damtp.cam.ac.uk/user/dbs26/AQFT/chap5.pdf
- Schwartz, Chapter 15
- Peskin & Schroeder, Chapter 10 & 12
- Hollowood's book:
  - https://arxiv.org/abs/0909.0859
  - https://link.springer.com/book/10.1007/978-3-642-36312-2

## Wilson's picture

Seed theory parameters (i.e. _bare parameters_): $(g_0,\Lambda_0)$, $g = (m,\lambda,\cdots)$ a collection of all possible couplings.

$$
\begin{aligned}
  \phi_{\Lambda_0}(x)
  \sim \int^{\Lambda_0} \dd p
    e^{ip\cdot x}
    \tilde{\phi}(p)
  &= \int^{\Lambda} \dd p
    e^{ip\cdot x}
    \tilde{\phi}(p)
    + \int_{\Lambda}^{\Lambda_0} \dd p
    e^{ip\cdot x}
    \tilde{\phi}(p) \\
  &=\colon \phi_{\Lambda}(x) + \chi(x)
\end{aligned}
$$

$$
\begin{aligned}
  \DD\phi_{\Lambda_0}(x)
  \sim \prod_{\norm{p} < \Lambda_0}
    \dd{\tilde{\phi}(p)}
  &= \prod_{\norm{p} < \Lambda}
    \dd{\tilde{\phi}(p)}
    \prod_{\Lambda < \norm{p} < \Lambda_0}
    \dd{\tilde{\phi}(p)} \\
  &\sim
    \DD\phi_{\Lambda}(x)\,
    \DD\chi(x)
\end{aligned}
$$

$$
\begin{aligned}
  \mcal{Z} (g_0,\Lambda_0)
  &= \int \DD \phi_{\Lambda_0}
      e^{iS[\phi_{\Lambda_0}]} \\
  &= \int \DD \phi_{\Lambda}
    \int \DD \chi\,
      e^{iS[\phi_\Lambda + \chi]} \\
  &=\colon \int \DD \phi_{\Lambda}\,
      e^{iS_{\mathrm{eff}} [\phi_\Lambda]}
  =\colon \mcal{Z}\pqty{g(\Lambda),\Lambda}
\end{aligned}
$$

Renormalized parameters: $(g,\Lambda)$.

> **Subtlety:** the notation above is only schematic; in practice we first Wick-rotate to Euclidean signature, so that the momentum cutoff is easily imposed: $\norm{p} = \sqrt{p_0^2 + \vb{p}^2} < \Lambda$. In Lorentzian signature, it's hard to define a covariant cutoff since $p_\mu p^\mu = - p_0^2 + \vb{p}^2$. This process can be made rigorous; just think of the 8-shaped contour in loop integrals.

**Effective action:**

$$
  S_{\mathrm{eff}}[\phi]
  = -i \ln \int \DD \chi
      e^{iS[\phi + \chi]} \\
$$

$\phi = \phi_\Lambda$ is treated as constant when doing $\int \DD \chi$.

$$
\begin{aligned}
  \mcal{L}[\phi + \chi]
  &= - \frac{1}{2}
      \partial_\mu (\phi + \chi)\,
      \partial^\mu (\phi + \chi)
    - \frac{1}{2} m^2
      (\phi + \chi)^2
    - \frac{1}{4!} \lambda\,
      (\phi + \chi)^4\\
  &= \cdots \\
  &= \mcal{L}[\phi]
    + \Delta\mcal{L} [\phi,\chi]
\end{aligned}
$$

$$
  S_{\mathrm{eff}}[\phi_\Lambda]
  = S[\phi_\Lambda]
    - i \ln \int \DD \chi
      e^{i\,\Delta S[\phi_\Lambda + \chi]} \\
$$

If $\Lambda \lesssim \Lambda_0$, then $S_{\mathrm{eff}}$ is almost the same as the original $S$, with minor corrections from the $\int \DD\chi$ term. Note that in our regularization scheme there will be no mixed terms of $\phi$ and $\chi$ in the effective action, since they have orthogonal Fourier modes.

**RG Equation:**

$$
  0
  = \Lambda \dv{}{\Lambda}\,
    \mcal{Z}\pqty{g(\Lambda),\Lambda}
  = \pqty{
      \Lambda \pdv{}{\Lambda}
      + \Lambda \pdv{g^{(i)}}{\Lambda}
        \pdv{}{g^{(i)}}
    }
    \mcal{Z}\pqty{g(\Lambda),\Lambda}
$$

## Perturbative Renormalization

However, in naïve perturbation theory, we wish to complete the entire path integral $\mcal{Z} (g_0,\Lambda_0)$. We can think of this as integrating out more and more high energy modes, until we reach the IR scale $\Lambda \to 0$.

When $\Lambda \ll \Lambda_0$, we have no reason to believe the renormalized couplings $g(\Lambda)$ are close to the original couplings $g_0$ at $\Lambda_0$. In fact, they may differ by a large (but finite) renormalization factor $Z$: $g_0 = Zg$.

### Counterterms

In the above analysis, the theory flows from UV to IR. However, in reality, the IR results are known from experiments, and we are trying to _extrapolates_ from IR to UV.

We achieve this by _tuning_ the bare parameters $(g_0,\Lambda_0)$ so that after RG flow, the IR results fit our experimental observations. If the IR couplings $g(\Lambda)$ are finite and small, then since $\Lambda \ll \Lambda_0$, we expect $g_0$ to be very large.

We often _split_ $g_0$ into 2 parts for convenience:

$$
  g_0 = g + \var{g}
  = g + (Z - 1)\,g
$$

$\var{g}$ is the so-called _counterterm_; intuitively, it's the (large) correction that gets integrated out when we go from $\Lambda_0$ all the way to IR.

Basically, we have the following procedure:

<img
  src="img/RG-process.png"
  class="center"
  style="width: 80%"
/>

0. Select some UV parameters $(g_0,\Lambda_0)$
1. Perform the RG flow: $(g_0,\Lambda_0)\to (g,\Lambda)$
2. Tune (redefine) $g_0$ so that $(g,\Lambda)$ matches with experiments
3. Use the tuned data to predicts phenomena at a different scale $(g',\Lambda')$

Note that the tuning of UV parameters $g_0$ is _far from unique!_ This is easy to understand: many UV theories might flow to the same IR theory. For this reason, some would say that RG is a _semi-group_.

However, for a _renormalizable_ theory, we can restrict the tuning to a _finite_ dimensional subspace formed by the _relevant_ couplings, since most other parameters $g^{(i)}$ are _irrelevant_ and get suppressed by $\Lambda/\Lambda_0$ in the IR. After such restriction to a relevant subspace, the RG flow is a group, and we can reverse the flow to _extrapolate_ towards UV.

### Perturbation

The above results are non-perturbative and should always hold. Perturbation theory is only a way to calculate the RG flow from UV to IR; it is reliable only if the IR coupling $g$ is sufficiently small. In this case we can tune $(g_0,\Lambda_0)$ with the following recursive / iterative algorithm:

1. Perturbative calculation of RG flow: $(g_0,\Lambda_0)\to (g,\Lambda)$ at $\order{g^n}$
2. Tune (redefine) $(g_0,\Lambda_0)$ by adding counterterms, so that $(g,\Lambda)$ matches with experiments
3. Increase order $n$ and go to step 1

The (non-)renormalizability of a theory is evident in the perturbative expansion, by counting the **superficial degrees of divergence** $D$ of the Feynman diagrams. Basically,

- Interaction vertices create loops, and loops create UV divergences. Higher order interaction vertices create more loops, which lead to more divergences.

- External lines suppress UV divergences by factors like $\frac{1}{\cancel{p}}$ or $\frac{1}{p^2}$.

For a renormalizable theory, there will be no divergence for diagrams with a sufficient number $E$ of external legs; for a non-renormalizable theory, however, there will always be divergences, no matter how large $E$ is.

### Renormalization Schemes

There is a subtlety in the above procedure: how do we actually relate IR parameters $(g,\Lambda)$ with actual physical quantities, e.g. amplitudes $\mcal{M}(\mu)$?

In fact, we've assumed that $(g,\Lambda)_{\Lambda\to 0}$ gives the physical couplings that we are familiar with, e.g. mass, electric charge and so on. This is not quite true, since physical quantities are actually defined with scattering amplitudes. There are different choices of relating $g$ with physical observables; this lead to various renormalization schemes:

- On-shell / pole-mass scheme
- Minimal subtraction ($\mathrm{MS}$) & modified MS ($\overline{\mathrm{MS}}$)

## Renormalizability

Most parameters $g^{(i)}$ are, in fact, _irrelevant_ --- such terms in the Lagrangian get suppressed by $\Lambda/\Lambda_0$ in IR. If the IR theory has only _relevant_ couplings, then one should be able to recover their physical values by tuning a finite amount of relevant couplings in the UV, and usually the tuning is unique. This is the defining characteristic of a **renormalizable** theory. Basically, this means that we can naturally obtain a UV theory by extrapolation.

> However, the tuning process described above might encounter some serious obstruction: the tuned $g_0$ could blow up at some finite $\Lambda_{\mathrm{UV}}$; this is the so-called _Landau pole_. This tells us that the theory only works under some $\Lambda_{\mathrm{UV}}$, i.e. it is not _UV complete_; it's only an _effective_ theory. One have to "embed" this Lagrangian into a bigger theory that works beyond $\Lambda_{\mathrm{UV}}$; this is the non-trivial _UV completion_ of an effective theory.

On the other hand, a theory is **non-renormalizable** if it contains irrelevant couplings in the IR. In this case the IR parameters $g$ depend sensitively on small perturbations of the UV parameters $g_0$, and one has to tune infinitely many bare parameters to obtain the physical IR values. Such theory is hardly _fundamental_, since it depends on infinitely many parameters; but it's a good _effective theory_ nonetheless.


---

Furthermore, after $\phi_\Lambda$ is completely integrated out, we have:

$$
  S_{\mathrm{eff}}[\phi] \to W,\quad
  Z(g_0,\Lambda_0) = e^{iW}
$$

Note that $W$ no longer has any $\phi$ dependence, but it is a function of $(g_0,\Lambda_0)$, which in turn is tuned by physical $(g,\Lambda)$. $W$ in fact contains all information about the seed theory, labeled by $(g_0,\Lambda_0)$. To extract this information, we usually perturb the original action $S[\phi]$ with a source term; then we have:

$$
  S[\phi,J]
  = S[\phi] + \int \dd{x}\,J(x)\,\phi(x),\quad
  W \to W[J]
$$

Expand $W[J]$ in terms of $J$-modes, and its coefficient gives us physical coupling constants in the IR.



<!-- vim: set ts=2 sw=2: -->
