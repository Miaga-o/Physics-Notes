#import "../../presets.typ": *


= Eigen-everything
== Eigenvectors and Eigenvalues
#definition[Eigenvector and Eigenvalue][
  An *eigenvector* of an $n times n$ matrix $A$ is any nonzero vector $bf(x)$ such that $A bf(x) = lambda bf(x)$ for some scalar $lambda$. A scalar $lambda$ is an *eigenvalue* of $A$ if there exists a nontrivial solution $bf(x)$ to $A bf(x)=lambda bf(x)$ such that $bf(x)$ is the eigenvector corresponding to $lambda.$
]

- An *eigenspace* consists of all eigenvectors corresponding to some eigenvalue $lambda$, and forms a subspace of $RR^n$.
- Geometrically, an eigenvalue is a scaling factor in a specific direction during a linear transformation.
#note-block[
  While eigenvectors cannot be zero, _eigenvalues can be zero._
]



#pagebreak(weak: true)
== The Characteristic Equation
To solve for the eigenvectors, and by extension, the eigenvalues of a matrix, we can take advantage of the general matrix equation for eigenvectors.
$
  A bf(x) &= lambda bf(x) \
  A bf(x) - lambda bf(x) &= 0 \
  (A- lambda I_n) bf(x) &= 0
$

- Now, by definition, the homogeneous equation above must have a nontrivial solution.
- Then, by the Invertible Matrix Theorem, $(A-lambda I_n)$ is not invertible. Equivalently, its determinant is zero. This gives us the *characteristic equation*, a $n^"th"$ degree polynomial whose roots are $A$'s eigenvalues.

#definition[Characteristic Equation][
  Let $A$ be some $n times n$ matrix. The characteristic equation is defined as follows:
  $
    det(A-lambda I_n) &= 0
  $

  A scalar $lambda$ may only be an eigenvalue for $A$ if it satisfies the equation above.
]
- We can use this to prove that for any $n times n$ matrix $A$, $A^transpose$ has the same eigenvalues.
#proof[
  Suppose $A$ and $A^transpose$ are some $n times n$ matrices whose eigenvalues are given by \ $det(A-lambda I)$ and $det(A^transpose-lambda I)$, respectively.
  $
    det(A^transpose- lambda I) &= det(A^transpose- lambda I^transpose) \
    det(A^transpose- lambda I) &= det(A- lambda I)
  $
]

=== Similarity
If $A$ and $B$ are $n times n$ matrices, then $A$ is *similar to* $B$ if there exists an invertible matrix $P$ such that $A= P B P^(-1)$, or equivalently, $B = P^(-1) A P$.
- This relationship is _symmetric_.
- The mapping $A mapsto P^(-1) A P$ is known as a *similarity transformation*. 
#theorem[
  If two $n times n$ matrices $A$ and $B$ are similar, then their characteristic polynomials, and by extension, their eigenvalues, are the same.
]

#pagebreak(weak: true)
#proof[
  Let $P$ be some $n times n$ invertible matrix.
  $
    A - lambda I &= P B P^(-1) - lambda P P^(-1) \
    A - lambda I &= P(B - lambda)P^(-1) \
    det(A - lambda I) &= det(P(B - lambda)P^(-1)) \
    det(A - lambda I) &= det(P(B - lambda)P^(-1)) \
    det(A - lambda I) &= det(P)det(B-lambda)det(P^(-1)) \
    det(A - lambda I) &= det(P)det(B-lambda)(1/det(P)) \
    det(A - lambda I) &= det(B-lambda) \
  $
]





#pagebreak(weak: true)
== Diagonalization
A matrix is *diagonalizable* if it is similar to a diagonal matrix.
- This factorization is particularly helpful for calculating large $k^"th"$ powers of matrices.

#theorem[The Diagonalization Theorem][
  An $n times n$ matrix $A$ is diagonalizable $<=>$ $A$ has $n$ linearly independent eigenvectors.

  Specifically, $A = P D P^(-1)$ given diagonal matrix $D$ $<=>$ the columns of $P$ are $n$ linearly independent eigenvectors of $A$ and the diagonal entries of $D$ are the eigenvalues corresponding to each $i^"th"$ column in $P$.
]

- In other words, $A$ is diagonalizable $<=>$ there exists enough eigenvectors to form an *eigenvector basis* of $RR^n$.

#proof[
  Let $P$ be the a matrix whose columns are $A$'s eigenvectors, $bf(v)_1, bf(v)_2, dots, bf(v)_n$ and let $D$ be a diagonal matrix whose diagonal entries are $A$'s eigenvalues $lambda_1, lambda_2, dots, lambda_n$. Since the eigenvectors of $A$ are linearly independent, the columns of $P$ are linearly independent. By the Invertible Matrix Theorem, $P$ is invertible. Since $P$, $D$, and $P^(-1)$ are all well-defined, the diagonalization $P D P^(-1 )$ exists as follows:
  $
    A P &= A mat(bf(v)_1, bf(v)_2, dots.c, bf(v)_n) \
    A P &= mat(A bf(v)_1, A bf(v)_2, dots.c, A bf(v)_n) \
    A P &= mat(lambda_1 bf(v)_1, lambda_2 bf(v)_2, dots.c, lambda_n bf(v)_n) \
    A P P^(-1) &= mat(lambda_1 bf(v)_1, lambda_2 bf(v)_2, dots.c, lambda_n bf(v)_n) P^(-1) \
    A &= mat(lambda_1 bf(v)_1, lambda_2 bf(v)_2, dots.c, lambda_n bf(v)_n) P^(-1) \
    A &= P D P^(-1) \
  $

  Now, suppose $A$ is diagonalizable such that $A= P D P^(-1)$. This is equivalent to $A P = P D$. Now, let $P$'s columns be vectors $bf(v)_1, bf(v)_2, dots.c, bf(v)_n$ and let D's diagonal entries be $lambda_1, lambda_2, dots, lambda_n$.
  $
    A P &= P D \
    A mat(bf(v)_1, bf(v)_2, dots.c, bf(v)_n) &= mat(bf(v)_1, bf(v)_2, dots.c, bf(v)_n)mat(
      lambda_1, 0, dots.c, 0;
      0, lambda_2, dots, 0;
      dots.v, dots.v, dots.down, dots.v;
      0, 0, dots.c, lambda_n
    ) \
    mat(A bf(v)_1, A bf(v)_2, dots.c, A bf(v)_n) &= mat(lambda_1 bf(v)_1, lambda_2 bf(v)_2, dots.c, lambda_n bf(v)_n) \
  $
]




#pagebreak(weak: true)
== Eigenvectors and Linear Transformations



== Complex Eigenvalues
