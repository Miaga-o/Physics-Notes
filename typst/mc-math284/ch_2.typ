#import "../../presets.typ": *

= Matrix Algebra
== Matrix Operations
Scalar multiples of matrices and matrix addition is done by component. Thus, matrices may only be added together if they have the same size.
#columns(2)[
  $
    A=mat(
      a_11, dots.c, a_(1 n);
      dots.v, dots.down, dots.v;
      a_(m 1), dots.c, a_(m n)
    )
  $
  #colbreak()
  $
    B=mat(
      b_11, dots.c, b_(1 n);
      dots.v, dots.down, dots.v;
      b_(m 1), dots.c, b_(m n)
    )
  $
]
$
  A+B = mat(
      a_11+b_11, dots.c, a_(1 n)+b_(1 n);
      dots.v, dots.down, dots.v;
      a_(m 1)+b_(m 1), dots.c, a_(m n) + b_(m n)
    )
$

#theorem[
  #set enum(numbering: "a)")
  Let $A$, $B$, and $C$ be $m times n$ matrices, and let $r$ and $s$ be scalars.
  + $A+B=B+A$
  + $(A+B)+C = A+(B+C)$
  + $A+0=A$
  + $r(A+B) = r A + r B$
  + $(r+s)A = r A + s A$
  + $r(s A) = (r s)A$
]


Matrix multiplication is defined similarly to matrix-vector multiplication. This hinges on the fact that $(A B) bf(x) = A (B bf(x))$ given that $A$ is $m times n$, $B$ is $n times p$, and $bf(x) in RR^p$.
#columns(2)[
  $
    A=mat(
      a_11, dots.c, a_(1 n);
      dots.v, dots.down, dots.v;
      a_(m 1), dots.c, a_(m n)
    )
    = mat(bf(a)_1, bf(a)_2, dots.c, bf(a)_n)
  $
  #colbreak()
  $
    B=mat(
      b_11, dots.c, b_(1 p);
      dots.v, dots.down, dots.v;
      b_(n 1), dots.c, b_(n p)
    )
    = mat(bf(b)_1, bf(b)_2, dots.c, bf(b)_p)
  $
]
$
  A B &= mat(A bf(b)_1, A bf(b)_2, dots.c, A bf(b)_p)
$
- In this case, $A B$ is a valid product because the number of columns in $A$ is equal to the number of rows in $B$. The resulting matrix is $m times p$.
#caution-block[
  Matrix multiplication is not necessarily commutative.
]


=== Properties of Matrix Multiplication
#theorem[
  #set enum(numbering: "a)")
  Let $A$ be an $m times n$ matrix, and let $B$ and $C$ have valid sizes for the indicated sums and products.
  + $A (B C) = (A B) C$
  + $A(B+C)=A B + A C$
  + $(B+C)A = B A + C A$
  + $r(A B) = (r A)B = A(r B)$ for any scalar $r$
  + $I_m A = A I_n = A$
]


=== The Transpose of a Matrix
Given an $m times n$ matrix $A$, the *transpose* of $A$, denoted $A^transpose$, is an $n times m$ matrix whose columns are formed from the corresponding rows in $A$.
#columns(2)[
  $
    A=mat(
      a_11, dots.c, text(a_(1 n), fill: #red);
      dots.v, dots.down, dots.v;
      text(a_(m 1), fill: #red), dots.c, a_(m n);
    )
  $
  #colbreak()
  $
    A^transpose=mat(
      a_11, dots.c, text(a_(m 1), fill: #red);
      dots.v, dots.down, dots.v;
      text(a_(1 n), fill: #red), dots.c, a_(m n);
    )
  $
]

#theorem[
  #set enum(numbering: "a)")
  Let $A$ and $B$ be matrices with valid sizes for the following sums and products.
  + $(A^transpose)^transpose = A$
  + $(A+B)^transpose = A^transpose + B^transpose$
  + $(r A)^transpose = r A^transpose$ for any scalar $r$
  + $(A B)^transpose = B^transpose A^transpose$
]



#pagebreak(weak: true)
== The Inverse of a Matrix
An $n times n$ *(square)* matrix $A$ is *invertible* or *nonsingular* if there exists an $n times n$ matrix $C$ such that
$
  C A = A C =I
$
where $C$ is the *inverse* of A. Thus, $C$ may also be denoted as $A^(-1)$.
- Due to the nature of matrix multiplication, rectangular matrices can be *left invertible* or *right invertible*, but _not both_.

#theorem[
  Let $A = mat(a,b;c,d)$. If $a d - b c eq.not 0$, then $A$ is invertible and
  $
    A^(-1) = 1/(a d -b c)mat(d,-b;-c,a)
  $
]
- The quantity $a d- b c$ is the *determinant* of $A$, denoted $det A$. Determinants of larger matrices will be covered in chapter 3.

#theorem[
  If $A$ is an invertible $n times n$ matrix, then $forall bf(b) in RR^n$, the equation $A bf(x) = bf(b)$ has a solution.
]
#proof[
  Suppose $A$ is any invertible $n times n$ matrix and then $bf(b)$ is some vector in $RR^n$.
  $
    A bf(x) &= bf(b) \
    A^(-1)A bf(x) &= A^(-1)bf(b) \
    I bf(x) &= A^(-1)bf(b) \
    bf(x) &= A^(-1)bf(b) \
  $
]

#theorem[
  #set enum(numbering: "a)")
  Let $A$ and $B$ be invertible matrices.
  + $(A^(-1))^(-1) = A$
  + $(A B)^(-1) = B^(-1) A^(-1)$
  + $(A^transpose)^(-1) = (A^(-1))^transpose$
]
#proof[
  Suppose that $A$ and $B$ are invertible matrices.
  $
    A^(-1) (A^(-1))^(-1) &= I \
    (A^(-1))^(-1) &= A I \
    (A^(-1))^(-1) &= A \
  $

  $
    A B (A B)^(-1) &= I \
    B (A B)^(-1) &= A^(-1)I \
    (A B)^(-1) &= B^(-1)A^(-1)I \
    (A B)^(-1) &= B^(-1)A^(-1)\
  $

  #columns(2)[
    $
      (A^(-1))^transpose A^transpose &= (A A^(-1))^transpose \
      (A^(-1))^transpose A^transpose &= I^transpose \
      (A^(-1))^transpose A^transpose &= I \
    $
    #colbreak()
    $
      A^transpose (A^(-1))^transpose  &= (A^(-1) A)^transpose \
      A^transpose (A^(-1))^transpose  &= I^transpose \
      A^transpose (A^(-1))^transpose  &= I \
    $
  ]
]


=== Elementary Matrices
An *elementary matrix* is a matrix obtained from performing a single elementary row operation on an identity matrix, generally denoted $E$.
#columns(3)[
  $
    E_1 = mat(align: #right,
      1, 0, -5;
      0, 1, 0;
      0, 0, 1;
    ) \
    R_1-5R_3 -> R_1
  $
  #colbreak()
  $
    E_2 = mat(
      1, 0, 0;
      0, 0, 1;
      0, 1, 0;
    ) \
    R_2 <-> R_3
  $
  #colbreak()
  $
    E_3 = mat(
      1, 0, 0;
      0, 1, 0;
      0, 0, 9;
    ) \
    9R_3 -> R_3
  $
]
- They are particularly useful in proofs for representing elementary row operations, as left multiplying by an elementary matrix corresponds to one elementary row operation.
- Because elementary row operations are reversible, elementary matrices are invertible.

#theorem[
  An $n times n$ matrix $A$ is invertible $<=>$ A is row equivalent to $I_n$. In other words, there exists a sequence of elementary row operations that reduces $A$ to $I_n$. Additionally, that sequence also reduces $I_n$ to $A^(-1)$.
]
#proof[
  Suppose $A$ is an invertible $n times n$ matrix. Then, $forall b in RR^n$, there exists a unique solution to $bf(x)=A^(-1) bf(b)$ to $A bf(x) = bf(b)$. Because $A$ is square, the main diagonal represents its pivot positions, implying that $A$ can be reduced to $I_n$.

  Now, suppose that $A$ is row equivalent to $I_n$. Thus, there exists a sequence of elementary row operations represented by elementary matrices $E_1, E_2, dots, E_p$ that reduce $A$ to $I_n$. Because elementary matrices are invertible, $E_p dots.c E_2 E_1$ is invertible. By definition, $E_p dots.c E_2 E_1$ is an inverse for $A$. Thus, $A$ is invertible. Additionally:

  $
    E_p dots.c E_2 E_1 A &= I_n \
    E_p dots.c E_2 E_1 A A^(-1) &= I_n A^(-1)\
    E_p dots.c E_2 E_1 I_n &= A^(-1)\
  $
]

=== An Algorithm for $A^(-1)$
We can augment any $n times n$ matrix $A$ with $I$, then reduce $A$, if possible, to $I$. By the previous theorem, it follows that the augmented columns will form $A^(-1)$ once $A$ is reduced to $I$.
$
  mat(A, I) ~ mat(I, A)
$

#example[
  Find the inverse of $A=mat(align: #right, 0,1,2;1,0,3;4,-3,8)$, if it exists.
  #line(length: 100%)
  $
    mat(align: #right, augment: #3,
      0,1,2, 1,0,0;
      1,0,3, 0,1,0;
      4,-3,8, 0,0,1;
    )
    &stretch(arrow)_(R_1 <-> R_2)
    mat(align: #right, augment: #3,
      1,0,3, 0,1,0;
      0,1,2, 1,0,0;
      4,-3,8, 0,0,1;
    )
    stretch(arrow)_(R_3-4R_1->R_3)
    mat(align: #right, augment: #3,
      1,0,3, 0,1,0;
      0,1,2, 1,0,0;
      0,-3,-4, 0,-4,1;
    ) \
    &stretch(arrow)_(R_3+3R_2->R_3)
    mat(align: #right, augment: #3,
      1,0,3, 0,1,0;
      0,1,2, 1,0,0;
      0,0,2, 3,-4,1;
    )
    stretch(arrow)_(1/2R_3->R_3)
    mat(align: #right, augment: #3,
      1,0,3, 0,1,0;
      0,1,2, 1,0,0;
      0,0,1, 3/2,-2,1/2;
    ) \
    &stretch(arrow)_(R_1-3R_3->R_1)
    mat(align: #right, augment: #3,
      1,0,0, -9/2,7,-3/2;
      0,1,2, 1,0,0;
      0,0,1, 3/2,-2,1/2;
    )
    stretch(arrow)_(R_2-2R_3->R_2)
    mat(align: #right, augment: #3,
      1,0,0, -9/2,7,-3/2;
      0,1,0, -2,-4,-1;
      0,0,1, 3/2,-2,1/2;
    )
  $
  $
    A^(-1) &= mat(align: #right,
      -9/2,7,-3/2;
      -2,-4,-1;
      3/2,-2,1/2;
    )
  $
]



#pagebreak(weak: true)
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
] <thm:IVT>
#note-block[
  In later chapters, we will make multiple amendments to this theorem.
]


=== Invertible Linear Transformations
Say the mapping $T$ is defined by $bf(x) mapsto A bf(x)$. If $A$ is invertible, then we could define an *inverse function* $S=T^(-1)$ as $bf(x) mapsto A^(-1)bf(x)$. Below, we can show that these mappings are indeed inverses.
$
  S(T(bf(x))) &= A^(-1) (A bf(x)) = (A^(-1) A)bf(x) = I bf(x) = bf(x) \
  T(S(bf(x))) &= A (A^(-1) bf(x)) = (A A^(-1))bf(x) = I bf(x) = bf(x)
$

#theorem[
  Let $T: RR^n -> RR^n$ be a linear transformation and let $A$ be the standard matrix for $T$. Then, $T$ is invertible $<=>$ $A$ is invertible. In that case, the linear transformation $S$ defined by $S(bf(x)) = A^(-1)bf(x)$ is a unique mapping that satisfies the following equations:
  $
    S(T(bf(x))) &= bf(x) quad forall bf(x) in RR^n \
    T(S(bf(x))) &= bf(x) quad forall bf(x) in RR^n \
  $
]



#pagebreak(weak: true)
== Matrix Factorizations
A factorization of a matrix expresses the matrix as a product of two or more matrices. Often, specific factorizations can make specific matrix computations far less intensive.


=== $L U$ Factorization
- A *lower triangular matrix* is a square matrix with solely zero entries above the main diagonal.
  - A *unit lower triangular matrix* has only $1s$ along the main diagonal.
#proposition[
  Products and inverses of unit lower triangular matrices are also unit lower triangular matrices.
]
- An *upper triangular matrix* is a square matrix with solely zero entries below the main diagonal. The echelon form of an $n times n$ matrix is an example of this.
If $A$ can be reduced to an echelon form $U$ by a sequence of row replacements corresponding to unit lower triangular matrices $E_1, E_2, dots, E_p$, then $A=(E_p dots.c E_2 E_1)$. Thus, we can factorize $A$ as $L U$ if $L=(E_p dots.c E_2 E_1)^(-1)$. 

Using this factorization to solve $A bf(x)=bf(b)$, we get $(L U) bf(x) = L(U bf(x))=bf(b)$.
- If we let $U bf(x) = bf(y)$, then we can solve for $bf(x)$ by first solving $L bf(y) = bf(b)$, then substituting into that equation.
- For larger matrices, constructing $L$ and $U$ take far less time than reducing the original matrix to row reduced echelon form.

#algorithm[LU Factorization][
  + Reduce $A$ to an echelon form $U$ by a sequence of elementary row operations, if possible.
  + Place entries in $L$ such that the _same sequence_ of row operations reduces $L$ to $I$.
]
For each pivot column in $U$, let the pivot and the entries below the pivot be a column in $L$, then apply row replacements to $U$ such that the entries below the pivot become zeros.
- Now, by proposition (2.4.1), $L$ is a unit lower triangular matrix.
- Thus, when copying U's pivot columns onto $L$, let all entries in each column above the pivot be $0$.
- Additionally, divide each column by its pivot.
#note-block[
  While $L$ will always be a square matrix, $A$ (and by extension, $U$) do not have to be square matrices.
]

#example[
  Solve $A bf(x) = bf(b)$ using an $L U$ factorization given $A=mat(3,-5,3;-9,12,-4;9,-12,5)$ and $b=vec(-1,15,-15)$.
  #line(length: 100%)
  $
    mat(align: #right,
      text(3, fill: #red),-5,3;
      text(-9, fill: #red),12,-4;
      text(9, fill: #red),-12,5;
    )
    -> mat(align: #right,
      3,-5,3;
      0,text(-3, fill: #red),5;
      0,text(3, fill: #red),-4;
    )
    -> mat(align: #right,
      3,-5,3;
      0,-3,5;
      0,0,text(1, fill: #red);
    ) &= U \
    mat(align: #right,
      3, 0, 0;
      -9, -3, 0;
      9, 3, 1
    )
    -> mat(align: #right,
      1, 0, 0;
      -3, 1, 0;
      3, -1, 1;
    )
    &= L
  $

  $ L bf(y) &= bf(b) $
  $
    mat(align: #right, augment: #3,
      1, 0, 0, -1;
      -3, 1, 0, 15;
      3, -1, 1, -15;
    )
    &stretch(arrow)_(R_2+3R_1->R_2)
    mat(align: #right, augment: #3,
      1, 0, 0, -1;
      0, 1, 0, 12;
      3, -1, 1, -15;
    )
    stretch(arrow)_(R_3-3R_1->R_3)
    mat(align: #right, augment: #3,
      1, 0, 0, -1;
      0, 1, 0, 12;
      0, -1, 1, -12;
    ) \
    &stretch(arrow)_(R_3+R_2->R_3)
    mat(align: #right, augment: #3,
      1, 0, 0, -1;
      0, 1, 0, 12;
      0, 0, 1, 0;
    ) \
    &therefore bf(y)=vec(-1,12,0)
  $

  $ U bf(x) &= bf(y) $
  $
    mat(align: #right, augment: #3,
      3,-5,3, -1;
      0,-3,5, 12;
      0,0,1, 0;
    )
    &stretch(arrow)_(R_1-3R_3->R_1)
    mat(align: #right, augment: #3,
      3,-5,0, -1;
      0,-3,5, 12;
      0,0,1, 0;
    )
    stretch(arrow)_(R_2-5R_3->R_2)
    mat(align: #right, augment: #3,
      3,-5,0, -1;
      0,-3,0, 12;
      0,0,1, 0;
    ) \
    &stretch(arrow)_(-1/3R_2->R_2)
    mat(align: #right, augment: #3,
      3,-5,0, -1;
      0,1,0, -4;
      0,0,1, 0;
    )
    stretch(arrow)_(R_1+5R_2->R_1)
    mat(align: #right, augment: #3,
      3,0,0, -21;
      0,1,0, -4;
      0,0,1, 0;
    ) \
    &stretch(arrow)_(R_1+5R_2->R_1)
    mat(align: #right, augment: #3,
      1,0,0, -7;
      0,1,0, -4;
      0,0,1, 0;
    ) \
    &therefore bf(x) = vec(-7,-4,0)
  $
]



#pagebreak(weak: true)
== Homogeneous Coordinates
The *homogeneous coordinates* of a point $(x,y) in RR^2$ is $(x,y,1) in RR^3$.
- Recall how linear transformations must map $bf(0)$ to $bf(0)$, meaning that we were unable to express translations.
- Using homogeneous coordinates, we can translate vectors by $vec(h,k)$ on the plane $z=1$ using the following standard matrix:
$
  A=mat(
    1,0,h;
    0,1,k;
    0,0,1
  )
$
- The other geometric $RR^2$ linear transformations we covered in (1.9) are expressed with standard matrices similar to their previous ones. For example:
#columns(2)[
  $
    "Rotation" \
    A = mat(
      cos(theta), -sin(theta), 0;
      sin(theta), cos(theta), 0;
      0,0,1
    )
  $
  #colbreak()

  $
    "Reflection over vertical axis" \
    A = mat(align: #right,
      -1, 0, 0;
      0, 1, 0;
      0,0,1
    )
  $
]


=== Homogeneous 3D Coordinates
In general, the homogeneous coordinates of a point $(x,y,z) in RR^3$ is $(X/H, Y/H,Z/H, H) in RR^4$ where $h eq.not 0$ and $x=X/H$, $y=Y/H$, and $z=Z/H$.
- Thus, nonzero scalar multiples of $(x,y,z,1)$ would also be homogeneous coordinates for $(x,y,z)$.


=== Perspective Projections
Imagine the $x y$-plane as a viewing frame for a scene, and imagine that a viewer observes from some point $(0,0,d)$ on the positive $z$-axis. A *perspective projection* maps each point $(x,y,z)$ onto an _image point_ $(x^*, y^*, 0)$ such that those points and the viewing position lie on a single line.
- Drawing out these lines, we find the image's coordinates in terms of the original position and the viewing position.
$
  x^* /d = x/(d-z) &=> x^* = (d x)/(d-z) = x/(1-z slash d) \
  y^* /d = y/(d-z) &=> y^* = (d y)/(d-z) = y/(1-z slash d)
$
- Applying homogeneous coordinates, we are mapping $(x,y,z,1)$ to $(x/(1-z slash d), y/(1-z slash d), 0, 1)$, or equivalently, $(x,y,0, 1-z/d)$.

\ \ \
Now, we can create a general $4 times 4$ matrix $P$ for all $RR^3$ perspective projections.
$
  P = mat(
    1,0,0,0;
    0,1,0,0;
    0,0,0,0;
    0,0,-1/d, 1  
  )
$
$
  P vec(x,y,z,1) = P = mat(
    1,0,0,0;
    0,1,0,0;
    0,0,0,0;
    0,0,-1/d, 1;
  ) vec(x,y,z,1)
  = vec(x,y,0,1-z/d)
  equiv vec((d x)/(d-z), (d y)/(d-z), 0, 1)
$
