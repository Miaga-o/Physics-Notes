#import "../../presets.typ": *

= Symmetric Matrices and Quadratic Forms
== Diagonalization of Symmetric Matrices
A *symmetric matrix* is some matrix $A$ such that $A=A^transpose$.

#theorem[
  If $A$ is symmetric, then any two eigenvectors from different eigenspaces will be orthogonal.
]
#proof[
  Let $bf(v)_1$ and $bf(v)_2$ be eigenvectors that correspond to different eigenvalues $lambda_1$ and $lambda_2$ of some symmetric matrix $A$, respectively.
  $
    lambda_1 bf(v)_1 dot bf(v)_2 &= (lambda_1 bf(v)_1)^transpose bf(v)_2 \
    lambda_1 bf(v)_1 dot bf(v)_2 &= (A bf(v)_1)^transpose bf(v)_2 \
    lambda_1 bf(v)_1 dot bf(v)_2 &= bf(v)_1^transpose A^transpose bf(v)_2 \
    lambda_1 bf(v)_1 dot bf(v)_2 &= bf(v)_1^transpose (A bf(v)_2) \
    lambda_1 bf(v)_1 dot bf(v)_2 &= bf(v)_1^transpose (lambda_2 bf(v)_2) \
    lambda_1 bf(v)_1 dot bf(v)_2 &= lambda_2 bf(v)_1 dot bf(v)_2 \
    (lambda_1-lambda_2) bf(v)_1 dot bf(v)_2 &= 0 \
    bf(v)_1 dot bf(v)_2 &= 0 quad "Because" lambda_1-lambda_2 eq.not 0
  $
]

An $n times n$ matrix $A$ is *orthogonally diagonalizable* if there exists an orthogonal matrix $P$ and a diagonal matrix $D$ such that
$
  A &= P D P^(-1) = P D P^transpose
$


#theorem[
  An $n times n$ matrix $A$ is orthogonally diagonalizable $<=>$ A is symmetric.
]
#proof[
  Let $A$ be an orthogonally diagonalizable matrix.
  $
    A &= P D P^transpose \
    A^transpose &= (P D P^transpose)^transpose \
    A^transpose &= (P^transpose)^transpose D^transpose P^transpose \
    A^transpose &= P D P^transpose \
    A^transpose &= A
  $
]

#important-block[
  Recall that an orthogonal matrix has _orthonormal columns_, so eigenvectors should be normalized before forming $P$ when orthogonally diagonalizing a matrix.
]


=== The Spectral Theorem
#theorem[The Spectral Theorem for Symmetric Matrices][
  An $n times n$ symmetric matrix $A$ has the following properties:
  + $A$ has $n$ real eigenvalues, including multiplicities.
  + The dimension of each eigenvalue's eigenspace equals its multiplicity.
  + The eigenspaces are mutually orthogonal.
  + $A$ is orthogonally diagonalizable.

  Furthermore, the *spectral decomposition* of $A$ is as follows:
  $
    A = lambda_1 bf(u)_1 bf(u)_1^transpose + lambda_2 bf(u)_2 bf(u)_2^transpose + dots.c + lambda_1 bf(u)_n bf(u)_n^transpose
  $
]
#remark-block[
  The _spectrum_ of a matrix refers to the set of its eigenvalues.
]
Say the spectral decomposition of $A$ is ordered in descending order such that \ $|lambda_1| >= |lambda_2| >= dots.c >= |lambda_n|$. We can _approximate_ $A$ using $lambda_1, lambda_2, dots$, becoming more accurate (and eventually exact) as we use more eigenvalues.



#pagebreak(weak: true)
== Quadratic Forms
A *quadratic form* is a function $Q$ defined on $RR^n$ such that every term has a degree of $2$. It can be expressed in the form $Q(bf(x)) = bf(x)^transpose A bf(x)$ where $A$ is a symmetric matrix.
- For instance, the quadratic form associated with symmetric matrix $A=mat(align:#right, 1,2;2,-3)$ would be:
$
  mat(x_1, x_2) mat(align:#right, 1,2;2,-3) vec(x_1, x_2)
  =
  x_1^2 - 4 x_1 x_2 -3x_2^2
$

- When given the quadratic form, the coefficients of the squared terms represent the main diagonal. Meanwhile, the coefficients of the cross-product terms can be split into two terms, representing a pair of entries on opposite sides of the main diagonal.
- Given $Q(x) = x_1^2 + 4x_1x_2 + 3x_1x_3 - x_3^2$,
$
  Q(x) &= x_1^2 + 4x_1x_2 + 3x_1x_3 - x_3^2 \
  Q(x) &= x_1^2 + (2x_1x_2 + 2x_2x_1) + (3/2x_1x_3 + 3/2x_3x_1) - x_3^2 \
  therefore A &= mat(
    1,2, 3 slash 2;
    2, 0, 0;
    3 slash 2, 0, -1
  )
$


=== Change of Variable
If we want to eliminate cross-product terms in quadratic forms, we can implement a *change of variable* of the following form
$
  bf(x) = P bf(y) quad"or"quad bf(y) = P^(-1)bf(x)
$
where $P$ is invertible.
Substituting this into the general quadratic form, we get:
$
  bf(x)^transpose A bf(x) &= (P (bf(y)))^transpose A (P bf(y)) \
  bf(x)^transpose A bf(x) &= (bf(y)^transpose P^transpose) A (P bf(y)) \
  bf(x)^transpose A bf(x) &= bf(y)^transpose (P^transpose A P) bf(y) \
  bf(x)^transpose A bf(x) &= bf(y)^transpose D bf(y) quad "Because" A "is orthogonally diagonalizable"\
$
- The columns of $P$ are known as the *principle axes* of the quadratic form. Essentially the coordinate vector of $bf(x)$ relative to the orthonormal basis formed by the columns $P$ is $bf(y)$.


#pagebreak(weak: true)
=== Classifying Quadratic Forms
Quadratic forms have different classifications depending on the sign of their output.
#definition[
  A quadratic form $Q$ is
  + *Positive definite* if $Q(bf(x)) > 0$ for all $bf(x) eq.not bf(0)$.
  + *Positive semidefinite* if $Q(bf(x)) >= 0$ for all $bf(x) eq.not bf(0)$.
  + *Negative definite* if $Q(bf(x)) < 0$ for all $bf(x) eq.not bf(0)$.
  + *Negative semidefinite* if $Q(bf(x)) > 0$ for all $bf(x) eq.not bf(0)$.
  + *Indefinite* if $Q(bf(x))$ can be both positive and negative.
]

#theorem[
  Let $A$ be an $n times n$ symmetric matrix. Then, the associated quadratic form $bf(x)^transpose A bf(x)$ is
  + *Positive definite* $<=>$ the eigenvalues of $A$ are all positive.
  + *Positive semidefinite* $<=>$ the eigenvalues of $A$ are all nonnegative.
  + *Negative definite* $<=>$ the eigenvalues of $A$ are all negative.
  + *Negative semidefinite* $<=>$ the eigenvalues of $A$ are all less than or equal to zero.
  + *Indefinite* $<=>$ $A$ has both positive and negative eigenvalues.
]
This is why the change of variable also shows classifications of quadratic forms.



#pagebreak(weak: true)
== Constrained Optimization
In applications, finding the maximum and minimum values of a quadratic form $Q(bf(x))$ under a *constraint* can be necessary. Typically, the constraint is tha $bf(x)$ must be a unit vector. This constraint has many equivalent forms:
#columns(3)[
  $ mag(bf(x)) = 1 $
  #colbreak()
  $ mag(bf(x))^2 = 1 $
  #colbreak()
  $ bf(x)^transpose bf(x) = 1 $
]
$
  x_1^2 + x_2^2 + dots.c + x_n^2 = 1
$
Without cross product-terms, maximum and minimum values are easy to calculate, as the largest coefficient corresponds to the maximum value and the smallest coefficient corresponds to the minimum value.

If the quadratic form has cross-product terms, then we can orthogonally diagonalize it to eliminate cross-product terms. However, because the eigenvalues correspond to the coefficients of the change of variable, _we can just find the eigenvalues if we are just interested in the extrema_.
#theorem[
  Let $A$ be a symmetric matrix associated with the quadratic form $Q(bf(x)) = bf(x)^transpose A bf(x)$. Additionally, let the greatest eigenvalue be $lambda_"max"$ and the least eigenvalue be $lambda_"min"$ correspond to unit eigenvectors $bf(u)_1$ an $bf(u)_w$, respectively. Thus, the maximum value of $Q$ is $lambda_"max"$ at $bf(x)=bf(u)_1$ and the minimum value of $Q$ is $lambda_"min"$ at $bf(x) = bf(u)_1$.
]