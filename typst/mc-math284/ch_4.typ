#import "../../presets.typ": *

= Vector Spaces
== Vector Spaces and Subspaces
We have worked with $n$-dimensional vector spaces $RR^n$, but the definition of a vector space allows us to classify many different systems as vector spaces as well.

#definition[
  A *vector space* is a nonempty set $V$ of elements known as _vectors_ with two defined operations: _addition_ and _scalar multiplication_. These operations are subject to to the following ten axioms:
  $
    forall bf(u), bf(v), bf(w) in V quad"and"quad forall "scalars" c,d
  $
  + $bf(u+v) in V$
  + $bf(u+v) = bf(v+u)$
  + $(bf(u+v))+ bf(w) = bf(u) + (bf(v+w))$
  + There exists a zero vector $bf(0)$ such that $bf(u+0) = u$
  + For each $bf(u) in V$, there exists a vector $-bf(u) in V$ such that $bf(u+(-u)) = bf(0)$
  + $c bf(u) in V$
  + $c (bf(u+v)) = c bf(u) + c bf(v)$
  + $(c+d) bf(u) = c bf(u) + d bf(u)$
  + $c (d bf(u)) = (c d)bf(u)$
  + $1 bf(u) = bf(u)$
]
- You might recognize many of these axioms from subchapter (1.3).
- Plenty of common vector spaces include the set of $n times n$ matrices, denoted $M_(n times n)$, and the set of polynomials up to degree $n$, denoted $PP_n$.


=== Subspaces
Many times, a vector space will be a subset of some larger vector space. In this case, we only need to check three out of the ten axioms to prove that it is a vector space because the other axioms will be _satisfied by default_.
#definition[
  A *subspace* of a vector space $V$ is a subset $H$ of $V$ with the following three properties:
  + The zero vector of $V$ is in $H$.
  + $H$ is closed under addition.
  + $H$ is closed under scalar multiplication.
]
- All subspaces are vector spaces, and like subsets, all vector spaces are subspaces of themselves.
- The smallest subspace of any vector space $V$ is the *zero subspace*, ${bf(0)}$.


=== Spanning Sets and Subspaces
Often, subspaces will be expressed using a *spanning set*. In this form, we can use previously defined axioms for vector spaces and linear combinations to prove that they are indeed subspaces of a particular vector space.
#theorem[
  If $bf(v)_1, bf(v)_2, dots, bf(v)_p$ are in a vector space $V$, then $"Span"{bf(v)_1, bf(v)_2, dots, bf(v)_p}$ is a subspace of $V$.
]



#pagebreak(weak: true)
== Special Subspaces
=== Null Space
#definition[
  The *null space* of an $m times n$ matrix, denoted $nul A$, is the set of all solutions of the homogeneous equation $A bf(x) = bf(0)$.
  $
    nul A = {bf(x) | bf(x) in RR^n, A bf(x) = bf(0)}
  $
]
- Essentially, given some $m times n$ matrix $A$, $nul A$ is the set of all vectors in $RR^n$ that are mapped to the zero vector in $RR^m$.
- Additionally, the vectors from the parametric vector form of the solution set to $A bf(x) = bf(0)$ are the vectors that make up the spanning set for $nul A$.
#theorem[
  The null space of an $m times n$ matrix $A$ is a subspace of $RR^n$.
]


=== Column Space
#definition[
  The *column space* of an $m times n$ matrix $A$, denoted $col A$, is the set of all linear combinations of the columns of $A$. If the columns of $A$ are $bf(a)_1, bf(a)_2, dots, bf(a)_n$, then
  $
    col A = "Span"{bf(a)_1, bf(a)_2, dots, bf(a)_n}
  $
]
#theorem[
  The column space of an $m times n$ matrix $A$ is a subspace of $RR^m$.
]


=== Row Space
#definition[
  The *row space* of an $m times n$ matrix $A$, denoted $row A$, or equivalently, $col A^transpose$, is the set of all linear combinations of the rows of $A$.
]
#theorem[
  The row space of an $m times n$ matrix $A$ is a subspace of $RR^n$.
]


=== Kernel and Range of a Linear Transformation
Subspaces of vectors spaces other than $RR^n$ are typically defined using a linear transformation rather than a matrix. Thus, we will generalize our linear transformation definition from subchapter (1.8).
#definition[
  #set enum(numbering: "i)")
  A *linear transformation* $T$ from a vector space $V$ into a vector space $W$ is a mapping that assigns each vector $bf(x) in V$ to a unique vector $T(bf(x)) in W$ such that

  + $T(bf(u)+bf(v)) = T(bf(u)) + T(bf(v))$ $forall bf(u), bf(v) in V$.
  + $T(c bf(u)) = c T(bf(u))$ $forall$ scalars $c$ and $forall bf(u) in V$.
]

The *kernel* of a linear transformation $T$ from a vector space $V$ to a vector space $W$, denoted $ker T$, is the set of all vectors in $V$ that map to the zero vector of $U$.
$
  ker T = {bf(u) | bf(u) in V, T(bf(u))=bf(0)}
$
- If $T$ is associated with a standard matrix $A$, then $ker T = nul A$.
- Similarly, $ker T$ is a subspace of $V$.

Meanwhile, the *range* of $T$ is the set of all vectors in $W$ of the form $T(bf(x))$.
- If $T$ is associated with a standard matrix $A$, then the range of $T$ equals $col A$.
- Similarly, the range of $T$ is a subspace of $W$.



#pagebreak(weak: true)
== Linearly Independent Sets and Bases
#definition[
  Let $V$ be a vector space and let $scr(B)$ be a subset of $V$. $scr(B)$ is a *basis* for $V$ if the following is true:
  + $scr(B)$ is a linearly independent set.
  + The subspace spanned by $scr(B)$ coincides with $V$, that is,
  $
    V="Span" scr(B)
  $
]

The *standard basis* for $RR^n$ is defined as follows:
$
  {bf(e)_1, bf(e)_2, dots, bf(e)_n}
$


=== The Spanning Set Theorem
#theorem[The Spanning Set Theorem][
  #set enum(numbering: "a)")
  Let $S = {bf(v)_1, bf(v)_2, dots, bf(v)_p}$ be subset of vector space $V$, and let $H = "Span" S$.
  + If a vector $bf(v)_k in S$ is a linear combination of the other vectors in $S$, then the set formed by removing $bf(v)_k$ still spans $H$.
  + If $H eq.not {bf(0)}$, some subset of $S$ is a basis for $H$.
]
- When solving a homogeneous system $A bf(x) = bf(0)$ for $nul A$, the spanning set found from the solution set is usually a basis for $nul A$ because the vectors will always be linearly independent unless $bf(0)$ is in the spanning set.
- Meanwhile, the columns of some matrix $A$ are not guaranteed to be linearly independent. A good way to form a basis for $col A$ is to only use the pivot columns of $A$. This works because the other columns of $A$ are some linear combination of the pivot columns.
#caution-block[
  When finding the pivot columns of $A$ using row reduction, do not use the columns of the reduced matrix.
]
- Similarly, the pivot rows of $A$, or equivalently, the pivot columns of $A^transpose$ also form a basis for $row A$. Unlike with the column space, we can use the pivot rows of the reduced $A$ or the pivot columns of the reduced $col A^transpose$ in our basis.

#note-block[
  A basis is essentially the _smallest possible spanning set_ for a vector space.
]



#pagebreak(weak: true)
== Coordinate Systems
#theorem[The Unique Representation Theorem][
  Let $scr(B)={bf(b)_1, bf(b)_2, dots, bf(b)_p}$ be a basis for  a vector space $V$. For each vector $bf(x) in V$, there exists a unique set of scalars $c_1, c_2, dots, c_p$ such that
  $
    bf(x) = c_1 bf(b)_1 + c_2 bf(b)_2 + dots.c + c_p bf(b)_p
  $
]
#proof[
  Suppose $bf(x)$ is a vector in $V$ and $scr(B)={bf(b)_1, bf(b)_2, dots, bf(b)_p}$ is a basis for $V$ such that
  $
    bf(x) = c_1 bf(b)_1 + c_2 bf(b)_2 + dots.c + c_p bf(b)_p
  $

  Now, suppose that $bf(x)$ has another representation using the vectors of $scr(B)$:
  $
    bf(x) = d_1 bf(b)_1 + d_2 bf(b)_2 + dots.c + d_p bf(b)_p
  $
  where $d_1, d_2, dots, d_p$ is another set of scalars.
  $
    bf(x) - bf(x) &= (c_1 bf(b)_1 + c_2 bf(b)_2 + dots.c + c_p bf(b)_p) - (d_1 bf(b)_1 + d_2 bf(b)_2 + dots.c + d_p bf(b)_p) \
    bf(0) &= (c_1-d_1) bf(b)_1 + (c_2-d_2) bf(b)_2 + dots.c + (c_p-d_p) bf(b)_p \
  $

  By definition, $bf(b)_1, bf(b)_2, dots, bf(b)_p$ are linearly independent. Thus, for each $j$ such that $1<= j <= p$:
  $
    c_j-d_j &= 0 \
    c_j &= d_j
  $
]

#definition[
  Suppose $scr(B) = {bf(b)_1,, bf(b)_2, dots, bf(b)_p}$ is a basis for a vector space $V$ and $bf(x) in V$. The *coordinates of $bf(x)$ relative to $scr(B)$*, also known as the *$scr(B)$-coordinates of $bf(x)$*, are the scalars $c_1, c_2, dots, c_p$ such that $bf(x) = c_1 bf(b)_1 + c_2 bf(b)_2 + dots.c + c_p bf(b)_p$.

  The following vector is the *coordinate vector of $bf(x)$ relative to $scr(B)$* or the *$scr(B)$-coordinate vector of $x$*.
  $
    vec(bf(x))_scr(B) = vec(c_1,dots.v,c_p)
  $
]



=== Graphical Interpretation
We can interpret plotting points onto _normal_ graphing paper as a coordinate mapping from a set of points to $RR^2$ _relative to the standard basis_ ${bf(e)_1, bf(e)_2} = {vec(1,0), vec(0,1)}$ because the standard axes are perpendicular to each other.
- Thus, plotting points relative to another basis would _warp the axes_.


=== The Coordinate Mapping
Often, finding bases for vector spaces different from $RR^n$ can be difficult due to their form. We can use a coordinate mapping to $RR^n$ to covert them to a more familiar form.
#theorem[
  Let $scr(B)={bf(b)_1, bf(b)_2, dots, bf(b)_p}$ be a basis for a vector space $V$. Then, the *coordinate mapping* $bf(x) mapsto vec(bf(x))_scr(B)$ is a bijective linear transformation from $V$ to $RR^n$.
]
- This mapping is an *isomorphism* from $V$ onto $RR^n$, as even with potential differences in notation, they are generally equivalent in terms of vector spaces.

#example[
  Is the set of vectors ${t^2+t+1, t^2+2t+3, t^2+3t+1} in PP_2$ linearly independent or dependent?
  #line(length: 100%)
  Let $T: PP_2->RR^3$ be a coordinate mapping defined as follows:
  $
    a t^2 + b t + c mapsto vec(a,b,c) quad "for all scalars" a,b,c
  $
  Now, let $T(t^2+t+1)$, $T(t^2+2t+3)$, and $T(t^2+3t+1)$ be the columns of $A$.

  $
    A=mat(
      1,1,1;
      1,2,3;
      1,3,1;
    )
    &stretch(arrow)_(R_2-R_1->R_2)
    mat(
      1,1,1;
      0,1,2;
      1,3,1;
    )
    stretch(arrow)_(R_3-R_1->R_3)
    mat(
      1,1,1;
      0,1,2;
      0,2,0;
    )
    stretch(arrow)_(R_2<->R_3)
    mat(
      1,1,1;
      0,2,0;
      0,1,2;
    )
    stretch(arrow)_(R_1-1/2R_2->R_1)
    mat(
      1,0,1;
      0,2,0;
      0,1,2;
    ) \
    &stretch(arrow)_(R_3-1/2R_2->R_3)
    mat(
      1,0,1;
      0,2,0;
      0,0,2;
    )
    stretch(arrow)_(R_1-1/2R_3->R_1)
    mat(
      1,0,0;
      0,2,0;
      0,0,2;
    )
    stretch(arrow)_(1/2R_2->R_2)
    mat(
      1,0,0;
      0,1,0;
      0,0,2;
    )
    stretch(arrow)_(1/2R_3->R_3)
    mat(
      1,0,0;
      0,1,0;
      0,0,1;
    )
  $

  By the Invertible Matrix Theorem, the columns of $A$, $T(t^2+t+1)$, $T(t^2+2t+3)$, and $T(t^2+3t+1)$, are linearly independent. Because $T$ is a bijective coordinate mapping, ${t^2+t+1, t^2+2t+3, t^2+3t+1}$ is a linearly independent set. 
]




#pagebreak(weak: true)
== Dimension of a Vector Space
#theorem[
  If a vector space $V$ has a basis $scr(B) = {bf(b)_1, bf(b)_2, dots, bf(b)_n}$, then any subset of $V$ with more than $n$ vectors is linearly dependent.
]

#theorem[
  If a vector space $V$ has a basis of $n$ vectors, then every basis of $V$ must contain $n$ vectors.
]

#definition[
  The *dimension* of a vector space $V$, denoted $dim V$, is the number of vectors in a basis for $V$.
]
#note-block[
  $dim {bf(0)} = 0$ because the only basis for the zero subspace is the empty set, $emptyset$.
]
- Now, it follows that the dimension of $RR^n$ is $n$, as the standard basis has $n$ basis vectors.


=== Rank and Nullity
#definition[
  The *rank* of an $m times n$ matrix $A$ is equal to $dim(col A)$.
]
- In other words, the rank of an $m times n$ matrix $A$ is the _number of pivot columns_.
- By extension, the dimension of $row A$ is equal to the rank of $A$.

#definition[
  The *nullity* of an $m times n$ matrix $A$ is equal to $dim(nul A)$.
]
- In other words, the nullity of an $m times n$ matrix $A$ is the _number of free variables_.

#theorem[The Rank Theorem][
  Given an $m times n$ matrix $A$
  $
    rank A + nullity A = "number of columns in" A
  $
]


=== Invertible Matrix Theorem Amendments
#theorem[Invertible Matrix Theorem _continued_][
  Let $A$ be an $n times n$ matrix. Then, the following statements are equivalent:
  #enum.item(13)[_The first thirteen statements of the theorem in (2.3) and (3.2)._]
  + The columns of $A$ form a basis for $RR^n$.
  + $col A = RR^n$
  + $rank A = n$
  + $nullity A = 0$
  + $nul A = {bf(0)}$
]


// #pagebreak(weak: true)
== Change of Basis
son



// #pagebreak(weak: true)
== Digital Signal Processing
A *signal* is an infinite sequence of numbers. The set of all signals, denoted $SS$, is a vector space. While infinite, it is possible to test their linear independence using just a few terms. This will be covered in the next chapter, as signals will be the general solution to difference equations.



#pagebreak(weak: true)
== Applications to Difference Equations
=== Linear Independence of Signals
Say we want to test the linear independence of three signals: ${u_k}$, ${v_k}$, and ${w_k}$. Then, the following equation should imply $c_1=c_2=c_3=0$.
$
  c_1 u_k + c_2 v_k + c_3 w_k &= 0quad forall k >= 0
$
Now, lets say they do. Then, the equation implies that they are satisfied for $k$, $k+1$, and\ $k+2$ for any $k in NN$. We can test this using a *Casorati matrix*, a  coefficient matrix containing consecutive terms of multiple signals:
$
  mat(
    u_k,v_k,w_k;
    u_(k+1),v_(k+1),w_(k+1);
    u_(k+2),v_(k+2),w_(k+2);
  )
$
If its columns are linearly independent, then the signals are linearly independent.


=== Linear Difference Equations
A *linear difference equation* or *linear recurrence relation* of order $n$ is defined as follows:
$
  a_0 y_(k+n) + a_1 y_(k+n-1) + dots.c+ a_(n-1)y_(k+1) + a_n y_k = z_k quad forall k >=0
$
where $a_0, a_1, dots, a_(n-1), a_n$ are scalars (with $a_0$ and $a_n$ nonzero) and $z_k$ is some signal. Generally, $a_0=0$.
- If ${z_k}$ is the _zero sequence_, then the difference equation is *homogeneous*.
- Otherwise, the difference equation is *nonhomogeneous*.

The general solution of a homogeneous difference equation is generally ${y_k}={r^k}$. We can solve for $r$ using the *auxiliary equation*, which can be further simplified into the *auxiliary polynomial*:
$
  a_0 r^(k+n) + a_1 r^(k+n-1) + dots.c+ a_(n-1)r^(k+1) + a_n r^k &= 0 \
  a_0 r^n + a_1 r^(n-1) + dots.c+ a_(n-1)r^(1) + a_n &= 0
$

The general solution of a nonhomogeneous difference equation requires us to solve for some constant solution (let $y_k, y_(k+1), dots, y_(k+n)$ equal some variable $c$), then add it to the corresponding general homogeneous solution.

#example[
  What is the general solution to the following recurrence relation?
  $
    y_(k+1)-2y_k=1
  $
  #line(length: 100%)
  #columns(2)[
    $ "Constant Solution" $
    $
      c-2c&=1 \
      -c &= 1 \
      c &= -1
    $
    #colbreak()
    $ "Corresponding Homogeneous Solution" $
    $
      r^(k+1)-2r^k &= 0 \
      r-2 &= 0 \
      r &= 2
    $
  ]

  $
    therefore {c_1 2^k - 1}
  $
]

#example[
  \$150,000 is borrowed at $6%$ interest compounded monthly. Monthly payments are \$1000 dollars. Solve the difference equation for an explicit formula for the balance due after $k$ months.
  #line(length: 100%)
  $
    y_(k) &= (1+(0.06)/12) y_(k-1) -1000 \
    y_(k) &= (1.005) y_(k-1) -1000\
  $

  $ "Constant Solution" $
  $
    c &= 1.005 c - 1000 \
    -0.005c &= -1000 \
    c &= 200000
  $
  
  $ "Initial Value" $
  $
      y_k &= a_0 (1.005)^k + 200000 \
      => 150000 &= a_0(1.005)^0 + 200000 \
      a_0 &= -50000
  $

  $ "Explicit Formula" $
  $
    therefore y_k &= 200000-50000(1.005)^k
  $
]

#theorem[
  The set $H$ of all solutions to the $n^"th"$ order homogeneous linear difference equation
  $
    y_(k+n) + a_1 y_(k+n-1) + dots.c + a_(n-1)y_(k+1) + a_n y_k &= 0 quad forall k >=0
  $
  is an $n$-dimensional vector space.
]