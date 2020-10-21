# Geometric Representation

<!-- @import "/assets/mathjax.html" -->
<!-- cSpell:ignoreRegExp Hecke|Coxeter|Weyl -->


单芃 静斋206

- Hecke alg., categorization
- Springer Theory

Refs:

- Bourbaki, Groups et algebras de Lie, Chpt IV, V, VI
- Humphreys, Reflection groups and Coxeter groups, II

## Intro

### Hecke Alg.

Permutation $\mathfrak{S}_n \ni s_i$, group alg. $\mathbb{Z}\mathfrak{S}_n$, Hecke alg. $\mcal{H}(\mathfrak{S}_n)$: $\mathbb{Z}[v^{n+1}]$-alg gen by $H_{s_i}$, with similar multiplication rules as $s_i$, except:

$$
  (H_{s_i} + v)(H_{s_i} - v^{-1}) = 0
$$

We have $\mathcal{H}(\mathfrak{S}_n)_{v = 1} = \mathbb{Z}\mathfrak{S}_n$.

**Idea.** Think of it as deformation of $\mathbb{Z}\mathfrak{S}_n$!

### Coxeter system

Generalization of Weyl group $W$. $(W,S)$: specify a set of generators $S\ni s$.
Why? Finite reflection groups (symmetries of a root system, or more generally, a vector space).

**e.g.**
- $\mathfrak{S}_n$, or type $A_{n-1}$, realized as reflections in $\mathbb{R}^n$. Its Coxeter graph: a line connection $(n-1)$ generators.
- Dihedral group, graph: $m$-labeled line connecting 2 generators.
- Type $B_n, D_n, \cdots$ Weyl groups
- Universal Type: order $m\to\infty$.
