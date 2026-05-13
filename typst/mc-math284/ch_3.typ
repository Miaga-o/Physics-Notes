#import "../../presets.typ": *

= Determinants
In chapter (2.2), we defined determinants for $2 times 2$ matrices. In this chapter, we will cover the general definition for $n times n$ matrices.

== Introduction to Determinants
#definition[
  For $n>=2$, the *determinant* of an $n times n$ matrix $A = mat(a_(i j))$ is the sum of $n$ terms of the form $plus.minus a_(1 j)det A_(1j)$.
  $
    det A&= a_(11) det A_(11) - a_(12) det A_(12) + dots.c + (-1)^(1+n)a_(1n)det A_(1n) \
    &= sum_(j=1)^n (-1)^(1+j) a_(1j) det A_(1j)
  $
  $A_(i j)$ denotes the *$(i,j)$-minor* of $A$. That is, the matrix obtained from removing the $i^"th"$ row and $j^"th"$ column from $A$.
]
- The determinant of some $n times n$ matrix $A=mat(a_(11), dots.c, a_(1n);dots.v, dots.down, dots.v;a_(n 1), dots.c, a_(n n))$ can be expressed using vertical lines in lieu of the parentheses (or brackets).
$
  det A &= mat(delim: "|",
    a_(11), dots.c, a_(1n);
    dots.v, dots.down, dots.v;
    a_(n 1), dots.c, a_(n n);
  )
$

The *$(i,j)$-cofactor* of some matrix $A$, denoted $C_(i j)$, is denoted as follows:
$
  C_(i j) &= (-1)^(i+j) det A_(i j)
$
A *cofactor expansion* is a method of calculating a determinant using any row or column. For instance, our definition for determinant uses a _cofactor expansion across the first row_.

#theorem[
  The determinant of an $n times n$ matrix $A$ can be computed by a cofactor expansion across any row or down any column.

  The cofactor expansion across the $i^"th"$ row of $A$ is
  $
    det A &= a_(i 1)C_(i 1) + a_(i 2) C_(i 2) + dots.c + a_(i n) C_(i n) \
  $

  The cofactor expansion down the $j^"th"$ column of $A$ is
  $
    det A &= a_(1 j)C_(1 j) + a_(2 j) C_(2 j) + dots.c + a_(n j) C_(n j) \
  $
]
- Because we can choose any row or column to do a cofactor expansion along, choosing rows or columns with more zeros is preferable.

#note-block[
  The sign of $(-1)^(i+j)$ in every cofactor follows the same checkerboard pattern for every matrix.
  $
    mat(
      +, -, +, dots.c;
      -, +, -, dots.c;
      +, -, +, dots.c;
      dots.v, dots.v, dots.v, dots.down;
    )
  $
]

#theorem[
  If $A$ is triangular or diagonal matrix, then $det A$ is a product of the entries along the main diagonal of $A$.
  $
    det A = product_(i=1)^n a_(i i)
  $
]
#proof[
  Suppose $U$ is an upper triangular matrix. If $U$ is a $2 times 2$ matrix, then 
  $ det U = u_11u_22-u_12 dot 0= u_11 u_22 $
  Now, suppose that if $U$ is $n times n$, $det U =u_11 u_22 dots.c u_(n n)$. Let $U'$ be an $(n+1) times (n+1)$ upper triangular matrix such that $U'_(1 1)=U$. If we do a cofactor expansion down the first column of $U'$, we get:
  $
    det U' &= u'_(11) det U'_11 - 0 dot det U'_21 + dots.c + (-1)^(n+1)det U'_(n 1) \
    det U' &=u'_11 det U \
    det U' &=u'_11 (u_11 u_22 dots u_(n n)) \
    det U' &=u'_11 u'_22 u'_33 dots u'_((n+1),(n+1)) \
  $

  It follows that we can apply the same process to a diagonal matrix $D$, and apply a similar process to a lower triangular matrix $L$, albeit using the first column of each consecutive minor rather than the first row.
]
#important-block[
  Because the identity matrix is a diagonal matrix consisting solely of $1s$, for any $n times n$ identity matrix, $det I_n = 1$.
]



#pagebreak(weak: true)
== Properties of Determinants
=== Row Operations
#theorem[Row Operations][
  #set enum(numbering: "a)")
  Let $A$ be an $n times n$ matrix.
  + If a row replacement is applied to $A$ to produce $B$, then $det B = det A$.
  + If two rows of $A$ are swapped to produce $B$, then $det B = -det A$.
  + If one row of $A$ is scaled by some nonzero constant $k$, then $det B = k det A$.
]

#note-block[
  If an $n times n$ matrix $A$ is multiplied by some scalar $k$ to produce $B$, then $det B = k^n det A$.
]

#theorem[Invertible Matrix Theorem _continued_][
  Let $A$ be an $n times n$ matrix. Then, the following statements are equivalent:
  #enum.item(12)[_The first twelve statements of the theorem in (2.3)._]
  #enum.item(13, $det A eq.not 0$)
]


=== Column Operations
#theorem[
  If $A$ is an $n times n$ matrix, then $det A^transpose = det A$.
]
- Thus, column operations have equivalent effects on determinants as corresponding row operations.


=== Determinants and Matrix Product 
#theorem[Multiplicative Property][
  If $A$ and $B$ are $n times n$ matrices, then $det A B = (det A)(det B)$.
]
- So, if we do an $L U$ factorization for some $n times n$ matrix $A$, we can find its determinant using $det L det U$.


=== Linearity Property of the Determinant Function
For any $n times n$ matrix $A$, $det A$ is a function of the $n$ column vectors of $A$. Now, suppose that all columns of $A$ aside from the $j^"th"$ column of $A$ are held fixed such that we can define $det A$ with transformation $T: RR^n -> RR$ as follows:
$
  T(bf(x)) &= det mat(bf(a)_1, bf(a)_2, dots.c, bf(a)_(j-1), bf(x), bf(a)_(j+1), dots.c, bf(a)_(n-1), bf(a)_n)
$
This is a linear transformation.
- Because all columns (aside from the $j^"th"$ column) are held fixed, doing cofactor expansions along the $j^"th"$ row shows the linearity properties:
$
  forall bf(u), bf(v) in RR^n quad"and"quad forall k in RR
$
$
  T(bf(u+v)) &= (u_1+v_1)C_(1 j) + dots.c + (u_n+v_n)C_(n j) \
  T(bf(u+v)) &= (u_1 C_(1 j) + dots.c + u_n C_(n j)) + (v_1 C_(1 j) + dots.c + v_n C_(n j)) \
  T(bf(u+v)) &= T(bf(u)) + T(bf(v))\
$
$
  T(k bf(u)) &= k u_1 C_(1j) + dots.c + k u_n C_(n j) \
  T(k bf(u)) &= k(u_1 C_(1j) + dots.c + u_n C_(n j)) \
  T(k bf(u)) &= k T(bf(u))\
$



#pagebreak(weak: true)
== Cramer's Rule
Cramer's rule is used to solve for singular entries of a solution to $A bf(x) = bf(b)$. Because it involves determinants, its very impractical for hand calculations. Rather, it is very useful for theoretical calculations or small matrices.

#theorem[Cramer's Rule][
  Let $A$ be an $n times n$ invertible matrix. For any $b in RR^n$, the unique solution $bf(x)$ of $A bf(x)=bf(b)$ has entries given by
  $
    x_i = (det A_i (bf(b)))/(det A)
  $
  where $1 <= i <= n$ and $A_i (bf(b))$ denotes the matrix obtained from replacing the $i^"th"$ column of $A$ with $bf(b)$.
]
#proof[
  Let $A$ be an invertible $n times n$ matrix with columns $bf(a)_1, bf(a)_2, dots, bf(a)_n$.
  $
    A(I_i (bf(x))) &= A mat(bf(e)_1, dots.c, bf(e)_(i-1), bf(x), bf(e)_(i+1), dots.c, bf(e)_n) \
    A(I_i (bf(x))) &= mat(A bf(e)_1, dots.c, A bf(e)_(i-1), A bf(x), A bf(e)_(i+1), dots.c, A bf(e)_n) \
    A(I_i (bf(x))) &= mat(bf(a)_1, dots.c, bf(a)_(i-1), bf(b), bf(a)_(i+1), dots.c, bf(a)_n) \
    A(I_i (bf(x))) &= A_i (bf(b))\
  $
  $
    therefore det A(I_i (bf(x))) &= det A_i (bf(b)) \
    det A det I_i (bf(x)) &= det A_i (bf(b)) \
    det I_i (bf(x)) &= (det A_i (bf(b)))/(det A) \
    x_i &= (det A_i (bf(b)))/(det A) \
  $
]


=== A Formula for $A^(-1)$
Because the product of a matrix and its inverse equals $I$, the product of a matrix and and the $j^"th"$ column vector of its inverse equals the $j^"th"$ unit basis vector. By Cramer's rule,
$
  a_(i j)^(-1) &= (det A_(i) (bf(e)_j))/(det A)
$
Now, we can simplify $det A_(i) (bf(e)_j)$ by cofactor expansion down the $i^"th"$ column, because all entries in the column will be $0$ aside from the $j^"th"$ entry.
$
  a_(i j)^(-1) &= (C_(j i))/(det A)
$

Thus, if we do this for every entry of $A^(-1)$, we can create $A^(-1)$. Factoring out $1/(det A)$ from each entry, each $(i,j)$ entry corresponds to cofactor $C_(j i)$ of $A$. This matrix is known as the *adjugate* of $A$.
$
  adj A = mat(
    C_11, C_21, dots.c, C_(n 1);
    C_12, C_22, dots.c, C_(n 2);
    dots.v, dots.v, dots.down, dots.v;
    C_(1n), C_(2n), dots, C_(n n);
  )
$


#theorem[An Inverse Formula][
  Let $A$ be an invertible $n times n$ matrix.
  $
    A^(-1) &= 1/(det A) adj A
  $
]


=== Determinants as Area or Volume
#theorem[
  If $A$ is a $2 times 2$ matrix, then the area of the parallelogram defined by the columns of $A$ equals $|det A|$.

  If $A$ is a $3 times 3$ matrix, then the volume of the parallelepiped defined by the columns of $A$ equals $|det A|$.
]
#note-block[
  When using determinants to find area or volume, recall that column vectors should be from the origin. For example, a side between points $(1,1)$ and $(5,1)$ would correspond to the vector $vec(4,0)$.
]
- We can interpret the determinant of a matrix as how much vectors are scaled under a corresponding transformation.