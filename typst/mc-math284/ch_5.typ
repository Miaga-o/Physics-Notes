#import "../../presets.typ": *


= Eigen-everything
== Eigenvectors and Eigenvalues
#definition[Eigenvector and Eigenvalue][
  An *eigenvector* of an $n times n$ matrix $A$ is any nonzero vector $bf(x)$ such that $A bf(x) = lambda bf(x)$ for some scalar $lambda$. A scalar $lambda$ is an *eigenvalue* of $A$ if there exists a nontrivial solution $bf(x)$ to $A bf(x)=lambda bf(x)$ such that $bf(x)$ is the eigenvector corresponding to $lambda.$
]

- An *eigenspace* consists of all eigenvectors corresponding to some eigenvalue $lambda$, and forms a subspace of $RR^n$.
- Geometrically, an eigenvalue is a scaling factor in a specific direction during a linear transformation.
#note-block[
  While eigenvectors cannot be zero, _eigenvalues can be zero._ However, if that is the case, then $A bf(x) &= 0 bf(x)$, or equivalently, $A bf(x) = bf(0)$, has a nontrivial solution, meaning $A$ _is not invertible_.
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
#proposition[
  If $A$ is an $n times n$ matrix, then $A^transpose$ has the same eigenvalues.
]
#proof[
  Suppose $A$ and $A^transpose$ are some $n times n$ matrices whose eigenvalues are given by \ $det(A-lambda I)$ and $det(A^transpose-lambda I)$, respectively.
  $
    det(A^transpose- lambda I) &= det(A^transpose- lambda I^transpose) \
    det(A^transpose- lambda I) &= det(A- lambda I)
  $
]

#example[
  Solve for the eigenspace(s) of $A=mat(-1,1,2;-2,2,2;-2,1,3)$.
  #line(length: 100%)
  $
    det (A-lambda I) = 0 => lambda=1,1,2
  $
  #columns(2)[
    $ lambda_1=1 $
    $
      A-lambda_1 I = A - I \ 
      mat(
        -2,1,2;
        -2,1,2;
        -2,1,2;
      )
      stretch(arrow)_"rref"
      mat(
        1,-1/2,-1;
        0,0,0;
        0,0,0
      ) \

      therefore
      Lambda_1 = {vec(1/2,1,0), vec(1,0,1)}
    $
    #colbreak()
    $ lambda_2=2 $
    $
      A-lambda_2 I = A - 2I \ 
      mat(align: #right,
        -3,1,2;
        -2,-1,2;
        -2,1,0;
      )
      stretch(arrow)_"rref"
      mat(
        1,0,-1;
        0,1,-1;
        0,0,0
      ) \

      therefore
      Lambda_2 = {vec(1,1,1)}
    $
  ]
]


=== Similarity
If $A$ and $B$ are $n times n$ matrices, then $A$ is *similar to* $B$ if there exists an invertible matrix $P$ such that $A= P B P^(-1)$, or equivalently, $B = P^(-1) A P$.
- This relationship is _symmetric_.
- The mapping $A mapsto P^(-1) A P$ is known as a *similarity transformation*. 
#theorem[
  If two $n times n$ matrices $A$ and $B$ are similar, then their characteristic polynomials, and by extension, their eigenvalues, are the same.
]


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

#theorem[The Diagonalization Theorem][
  An $n times n$ matrix $A$ is diagonalizable $<=>$ $A$ has $n$ linearly independent eigenvectors.

  Specifically, $A = P D P^(-1)$ given diagonal matrix $D$ $<=>$ the columns of $P$ are $n$ linearly independent eigenvectors of $A$ such that each $i^"th"$ column of $P$ corresponds to each $i^"th"$ eigenvalue along $D$'s main diagonal.
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

- This factorization is particularly helpful for calculating large $k^"th"$ powers of matrices because raising a diagonal matrix to the $k^"th"$ power is the same as raising their diagonal entries to the $k^"th"$ power. In fact:
$
  A^k = (P D P^(-1))^k = (P D P^(-1)) (P D P^(-1)) dots.c = P D^k P^(-1)
$


=== Multiplicity
As shown prior, its possible to get a characteristic equation with *multiplicity*. That is, more than one root with the same value. But, diagonalization does not require $n$ _distinct_ eigenvalues.
#theorem[
  Let $A$ be an $n times n$ matrix with distinct eigenvalues $lambda_1, lambda_2, dots, lambda_p$ and corresponding eigenspaces $Lambda_1, Lambda_2, dots, Lambda_p$.
  + $dim Lambda_k <= "multiplicity of" lambda_k$ for each $k^"th"$ eigenspace and eigenvalue.
  + $A$ is diagonalizable $<=>$ $dim Lambda_1 + dim Lambda_2 + dots.c + dim Lambda_p = n$.
    + Essentially, $dim Lambda_k = "multiplicity of" lambda_k$.
  + If $A$ is diagonalizable and $scr(B)_k$ is the basis associated with each $k^"th"$ eigenspace $Lambda_k$, then $Lambda_1 union Lambda_2 union dots.c union Lambda_k$ forms an *eigenvector basis* for $RR^n$.

]



#pagebreak(weak: true)
== Complex Eigenvalues
Complex roots of the characteristic equation have real-life applications, generally representing rotations or periodic motion. In fact, the rotational matrices we covered in (1.9) have complex eigenvalues for almost all values of $theta$.

A *complex eigenvalue* $lambda$ corresponding to a *complex eigenvector* $bf(x)$ still must satisfy both $det(A-lambda I)=0$ and $A bf(x) = lambda bf(x)$.
- Complex eigenvalues always come in conjugate pairs: $alpha plus.minus beta i$.
- Often, we split complex eigenvectors into their _real_ and _imaginary_ parts. This will be important when studying their relation to rotations.
$
  bf(x) = re bf(x) + im bf(x)
$

#example[
  Find the eigenvalues and eigenvectors of $A = mat(1,2;-1,3)$.
  #line(length: 100%)
  $
    det(A-lambda I) = (1-lambda)(3-lambda)-(2)(-1) &= 0 \
    lambda^2 - 4lambda + 3+2 &= 0 \
    lambda^2 - 4lambda + 5 &= 0 \
  $
  $
    lambda &= (4 plus.minus sqrt((-4)^2-4(5)))/(2) \
    lambda &= (4 plus.minus 2i)/(2) \
    lambda &= 2 plus.minus i \
  $

  #columns(2)[
    $ lambda_1 &= 2 + i $
    $
      big( (1-(2+i)) )x_1 + 2x_2 &= 0 \
      -x_1 + big( (3-(2+i)) )x_1 &= 0 \ \

      (-1-i)x_1 + 2x_2 &= 0 \
      -x_1 + (1-i)x_1 &= 0 \ \

      therefore bf(v)_1 &= vec(1-i, 1)
    $

    #colbreak()

    $ lambda_2 &= 2-i $
    $
      big( (1-(2-i)) )x_1 + 2x_2 &= 0 \
      -x_1 + big( (3-(2-i)) )x_1 &= 0 \ \

      (-1+i)x_1 + 2x_2 &= 0 \
      -x_1 + (1+i)x_1 &= 0 \ \

      therefore bf(v)_1 &= vec(1+i, 1)
    $
  ]
]


#pagebreak(weak: true)
=== Rotational Factorization
While we cannot diagonalize matrices with complex eigenvalues, we can still factorize them. In fact, they are similar to a rotational matrix, as covered in the following theorem.
#theorem[
  Let $A$ be a real $2 times 2$ matrix with complex eigenvalue $lambda = alpha-beta i$ for $beta eq.not 0$ and an associated eigenvector $bf(v) in CC^2$.
  $
    A &= P C P^(-1)
  $
  where
  $
    P = mat(re bf(v), im bf(v)) quad"and"quad C=mat(alpha, -beta;beta, alpha)
  $
]




#pagebreak(weak: true)
== Discrete Dynamical Systems
An application of eigenvalues and eigenvectors is using them to understand dynamical systems given by the equation $bf(x)_(k+1) = A bf(x)_k$. We used this model in (1.10) and will apply it further in (5.9).
- Now, we can generalize this equation for some $k^"th"$ vector as follows:
$
  bf(x)_k &= A bf(x)_(k-1) \
  bf(x)_k &= A Big( (dots.c (A bf(x)_0)) )  \
  bf(x)_k &=  A^k bf(x)_0\
  bf(x)_k &=  c_1 A^k bf(v)_1 + dots.c + c_n A^k bf(v)_n \
  bf(x)_k &=  c_1 lambda_1^k bf(v)_1 + dots.c + c_n lambda_n^k bf(v)_n \
$
The equation above is the *eigenvector decomposition* for $bf(x)_k.$
- This decomposition can tell us a lot about the system in the long run, as for any $i^"th"$ eigenvalue, if $|lambda_i| < 1$, then $c_i lambda_i^k bf(v)_i = 0$ as $k -> infinity$.
- This works even for complex eigenvalues. For any complex eigenvalue $lambda = alpha plus.minus beta$, we simply check if its *modulus* is less than $1$. That is, $mag(lambda) = sqrt(alpha^2 + beta^2) < 1$


=== Predator-Prey Systems
A common discrete system involves a vector of two populations. Both populations grow based on their current population. However, the *prey* population grows slower or even decays the greater the other population is. Meanwhile, the *predator* population grows faster (or decays slower) the greater the other population is.

In general:
#columns(2)[
  $
    x_(k+1) &= c_1 x_k - c_2 y_k \
    y_(k+1) &= d_1 x_k + d_2 y_k \
  $
  #colbreak()
  $
    vec(x_(k+1),y_(k+1)) = A^k vec(x_0,y_0)
  $
]
where $x$ represents the prey population, $y$ represents the predator population, and $c_1, c_2, d_1, d_2$ are some positive real numbers.

#example[
  In the following predator-prey system, the prey population $x$ and predator population $y$ are defined as follows:
  $
    x_(k+1) &= 1.175x_k - 0.375y_k \
    y_(k+1) &= 0.125x_k + 0.675y_k
  $
  What can be said about the populations in the long run? What would be an explicit equation for $vec(x_k,y_k)$?
  #line(length: 100%)
  $
    A = mat(1.175,-0.375;0.125,0.675)\
    det(A-lambda I) = 0 => lambda = 0.8, 1.05
  $

  #columns(2)[
    $ lambda_1=0.8 $
    $
      (1.175-0.8)x_0 -0.375y_0 &= 0 \
      0.125x_0 + (0.675-0.8)y_0 &= 0 \ \

      (0.375)x_0 -0.375y_0 &= 0 \
      0.125x_0 + (-0.125)y_0 &= 0 \ \

      therefore bf(v)_1 &= vec(1,1)
    $
    #colbreak()
    $ lambda_2=1.05 $
    $
      (1.175-1.05)x_0 -0.375y_0 &= 0 \
      0.125x_0 + (0.675-1.05)y_0 &= 0 \ \

      (0.125)x_0 -0.375y_0 &= 0 \
      0.125x_0 + (-0.375)y_0 &= 0 \ \

      therefore bf(v)_1 &= vec(3,1)
    $
  ]
  In almost all scenarios, the prey population will be roughly three times the predator population and the total population will grow by approximately $5 %$ per year. However, any initial states with equal prey and predator populations will decay by $20%$ per year.
  $
    P=mat(3,1;1,1) quad quad D=mat(1.05,0;0,0.8)
  $
  $
    A^k &= P D^k P^(-1) \
    A^k &= mat(3,1;1,1) mat(1.05,0;0,0.8)^k mat(3,1;1,1)^(-1) \
    A^k &= mat(3,1;1,1) mat(1.05^k,0;0,0.8^k) mat(1/2,-1/2;-1/2,3/2) \
    A^k &= mat(
      1.5(1.05)^k - 0.5(0.8)^k, 1.5(0.8)^k - 1.5(1.05)^k;
      0.5(1.05)^k-0.5(0.8)^k, 1.5(0.8)^k - 0.5(1.05)^k;
    ) \
    vec(x_k,y_k) &= (1.05)^k vec(1.5x_0-1.5y_0, 0.5x_0-0.5y_0) + (0.8)^k vec(-0.5x_0 + 1.5y_0, -0.5x_0 + 1.5y_0)
  $
]



#pagebreak(weak: true)
== Applications to Differential Equations
*Differential equations* relate functions to their derivatives. Because differentiation of functions is linear, systems of differential equations _are linear systems_. Unlike difference equations which model sequential steps, differential equations model _continuous change_.
- Below, $x_1, x_2, dots, x_n$ are functions of time $t$.
#columns(2)[
  $
    x'_1 &= a_11 x_1 + dots.c + a_(1n)x_n \
    x'_2 &= a_21 x_1 + dots.c + a_(2n)x_n \
    &dots.v \
    x'_n &= a_(n 1) x_1 + dots.c + a_(n n)x_n \
  $
  #colbreak()
  $
    bf(x)'(t) &= A bf(x)(t) \
    vec(x_1(t), dots.v, x_n (t))' &= mat(a_11, dots.c, a_(1n);dots.v,dots.down,dots.v;a_(n 1), dots.c, a_(n n)) vec(x_1(t), dots.v, x_n (t))
  $
]
A system is *decoupled* when the derivative of each function only depends on itself. If $A$ is a diagonal matrix, then the system is decoupled.
$
  vec(x'_1 (t), x'_2 (t)) = mat(c, 0;0, d)vec(x_1 (t), x_2 (t))
  =>
  #stack(
    $x'_1(t) =c x_1(t) \ x'_2(t) = c x_2(t)$
  )
$
- Now, by calculus, the solutions, called *eigenfunctions* in linear algebra, are $k_1 e^(c t)$ and $k_2e^(d t)$ for any constant numbers $k_1, k_2$. Hence,
$
  vec(x_1 (t), x_2 (t)) &= vec(k_1 e^(c t), k_2 e^(d t)) = k_1 e^(c t)vec(1,0) + k_2 e^(d t)vec(0,1)
$

This implies that the general eigenfunction solution to $bf(x)' = A bf(x)$ is 
$
  bf(x)(t) = c_1e^(lambda_1 t)bf(v)_1 + dots.c + c_n e^(lambda_n t)bf(v)_n
$
given that $bf(v)_1, dots, bf(v)_n$ are nonzero. Now, $bf(v)$ and $lambda$ _must be an eigenvector-eigenvalue pair_ for the solution to be true.
$
  bf(x)'(t) = A bf(x)(t) = A bf(v) e^(lambda t) &= (bf(v)e^(lambda t))' \
  => A bf(v)e^(lambda t) &= lambda bf(v) e^(lambda t) \
  => A bf(v) &= lambda bf(v)
$
#note-block[
  To solve for $c_1, dots, c_n$, we need an *initial condition*. That is, some vector $bf(x)_0$ such that $bf(x)(0) = bf(x)_0$.
]

#example[
  What is the general solution to the following system of differential equations?
  $
    dv(x,t) &= -x+2y \
    dv(y,t) &= 2x+2y
  $
  #line(length: 100%)
  $
    vec(x,y)' = mat(align: #right, -1, 2;2,2) vec(x,y)
  $
  $
    mat(delim: "|", -1-lambda, 2;2,2-lambda) &= 0 \
    (-1-lambda)(2-lambda)-(2)(2) &= 0 \
    lambda^2-lambda-2-4 &= 0 \
    lambda^2 -lambda-6 &= 0 \
    (lambda+2)(lambda-3) &= 9
  $

  #columns(2)[
    $ lambda_1=-2 $
    $
      big( (-1-(-2)) )x+2y &= 0 \
      2x + big( (2-(-2)) )y &= 0 \ \

      x+2y &= 0 \
      2x+4y &= 0 \ \

      therefore bf(v)_1 &= vec(align:#right,-2,1)
    $
    #colbreak()
    $ lambda_2=3 $
    $
      (-1-3)x+2y &= 0 \
      2x + (2-3) y &= 0 \ \

      -4x+2y &= 0 \
      2x-y &= 0 \ \

      therefore bf(v)_2 &= vec(1,2)
    $
  ]

  $
    vec(x,y) &= c_1 e^(-2t)vec(align: #right, -2,1) + c_2 e^(3t)vec(1,2)
  $
]


=== Phase Planes
We use phase planes to study all the trajectories of solutions to systems of differential equations in $RR^2$ for $t>=0$.
- The trajectories of the eigenfunctions lie in the eigenspaces of $A$. Other trajectories will approach the dominant eigenspace asymptotically.
- An eigenfunction will decay to the origin as $t->infinity$ *if its associated eigenvalue is negative*.
- An eigenfunction will grow away from the origin as $t->infinity$ *if its associated eigenvalue is positive*.
- Other trajectories will decay or grow depending on the eigenfunction they approach.

The origin has different names depending on whether the eigenfunctions approach it.
- The origin is a *saddle point* when $A$ has positive and negative eigenvalues.
- The origin is a *sink* or *attractor* when $A$ has negative eigenvalues.
  - Other trajectories will approach the eigenfunction associated with the greater eigenvalue.
- The origin is a *source* or *repeller* when $A$ has positive eigenvalues.
  - Other trajectories will approach the eigenfunction associated with the least eigenvalue.


=== Complex Solutions
As established in previous chapters, complex eigenvalues have actual interpretations. In this case, complex solutions lead to _spiraling eigenfunctions and trajectories_. Using *Euler's formula*, we can graph these complex trajectories.

#definition[Euler's Formula][
  $
    e^(i x) &= cos(x) + i sin(x)
  $
]
- While this formula doesn't eliminate the $i$, we can eventually cancel them out due to the following:
  - Eigenspaces are closed under addition and scalar multiplication.
  - $i$ is a scalar.



#pagebreak(weak: true)
== Applications to Markov Chains
#definition[
  A *probability vector* has nonnegative entries that sum to $1$. A *stochastic matrix* is a square matrix whose columns are probability vectors.
]
- The transition matrices we covered in (1.10) _were_ stochastic matrices.

#theorem[
  A stochastic matrix must have an eigenvalue equal to $1$.
]
#proof[
  Let $P$ be an $n times n$ stochastic matrix. Thus, each row of $P^transpose$ has entries that sum to $1$. Furthermore, each row of $P^transpose-1I$ has entries that sum to $0$, or equivalently, the sum of every column of $P^transpose-1I$ is $bf(0)$. Because the columns of $P^transpose-1I$ are linearly dependent, $det(P-1I) = 0$ by the Invertible Matrix Theorem. By definition, $1$ is an eigenvalue for $P^transpose$, and by extension, and eigenvalue for $P$.
]
- This makes sense, as we studied steady-state vectors in (1.10), which were essentially eigenvectors associated with an eigenvalue of $1.$