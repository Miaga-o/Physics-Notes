#import "../../presets.typ": *

= Matrix Algebra
== Matrix Operations



== The Inverse of a Matrix



== Characteristics of Invertible Matrices
#theorem[Invertible Matrix Theorem][
  #set enum(numbering: "a)")

  Let $A$ be an $n times n$ matrix. The following statements are equivalent:
  + $A$ is invertible.
  + A is row equivalent to $I_n$.
  + $A$ has $n$ pivot positions.
  + The equation $A bf(x) = bf(0)$ has only the trivial solution.
  + The columns of $A$ form a linearly independent set.
  + The linear transformation $bf(x) mapsto A bf(x)$ is one-to-one.
  + The equation $A bf(x) = bf(b)$ has at least one solution for each $bf(b) in RR^n$.
  + The columns of $A$ span $RR^n$.
  + The linear transformation $bf(x) mapsto A bf(x)$ maps $RR^n$ onto $RR^n$.
  + There exists some $n times n$ matrix $C$ such that $C A = I$.
  + There exists some $n times n$ matrix $D$ such that $A D = I$.
  + $A^transpose$ is invertible.
]