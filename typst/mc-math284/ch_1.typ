#import "../../presets.typ": *

= Linear Equations in Linear Algebra
== Systems of Linear Equations
- A *linear equation* with the variables $x_1, x_2, dots, x_n$ and coefficients $a_1, a_2, dots, a_n$ can be written as follows:
$
  a_1x_1 + a_2x_2 + dots.c + a_n x_n=b
$

- A *system of linear equations* is a collection of numerous linear equations all using the same variables.
$
  a_1x_1 + a_2x_2 + dots.c + a_n x_n&=k_1
  \
  b_1x_1 + b_2x_2 + dots.c + b_n x_n&=k_2
$

- The solutions of a system of linear equations have three variants:
  - *No solution*. In $RR^2$, the linear equations would be parallel, non-overlapping lines.
  - *One solution*. In $RR^2$, the linear equations would be nonparallel lines.
  - *Infinitely many solutions*. In $RR^2$, the linear equations would be parallel, overlapping lines. 
If a system of linear equations has a *solution set*, it is *consistent*. Otherwise, it is *inconsistent*.


=== Matrix Notation
We can display a system of linear equations with a matrix as follows.
#columns(2)[
  $
    &&5x_1 &&+&& x_2 &&-&& 9x_3 &=& 2 \
    &&x_1 && && &&+&& 4x_3 &=& 7 \
    && && && && &&6x_3 &=& 1 \
  $
  #colbreak()
  $
    mat(
      5, 1, -9;
      1, 0, 4;
      0, 0, 6;
    )
  $
]

- The matrix above is a *coefficient matrix*.
- Each column corresponding to a different variable.
- An *augmented matrix* has an augmented column of the system's constants, usually separated by a line for clarity.
$
  mat(align: #right, augment: #3,
      5, 1, -9, 2;
      1, 0, 4, 7;
      0, 0, 6, 1;
    )
$


=== Solving a Linear System
To solve a linear system, we can replace it with an equivalent system. We can create an equivalent system by applying an *elementary row operation* to the rows (or in equation form, equations).
#definition[Elementary Row Operations][
  + *Replacement:* Replace one row by the sum of itself and a scalar multiple of another row.
  + *Interchange:* Swap two rows.
  + *Scaling:* Multiplies all entries of a row by a nonzero constant.
]

- Thus, two matrices are *row equivalent* if there exists a sequence of elementary row operations that transforms one into the other.
- All elementary row operations are reversible.



#pagebreak(weak: true)
== Row Reduction and Echelon Forms
#definition[Echelon Form][
  A matrix is in *echelon form*, also known as *row echelon form*, if it has the following properties:
  + All nonzero rows are above any rows of all zeros.
  + Each leading (first) entry of a row is in a column to the right of the leading entry of the row above it.
  + All entries (in the same column) below a leading entry are zeros.
]

#definition[Reduced Row Echelon Form][
  Furthermore, a matrix is in *reduced row echelon form (rref)* if it satisfies the previous three properties and the following properties:
  + The leading entry in each row is $1$.
  + Each leading $1$ is the only nonzero entry in its column.
]

#theorem[Uniqueness of the Reduced Echelon Form][
  Each matrix is row equivalent to one reduced echelon form matrix.
]
- Because the leading values of an echelon form matrix can be anything, they are not unique.


=== Pivot Positions
- A *pivot position* in a matrix is the location that corresponds to the location of a leading $1$ in the matrix's reduced row echelon form.
- A *pivot column* is any column containing a pivot position.


=== The Row Reduction Algorithm
#algorithm[Row Reduction Algorithm][
  + Begin with the leftmost nonzero column. This will be a pivot column with a pivot position at the top.
  + Select a nonzero entry in the pivot column as the pivot. If needed, swap rows to move it into the pivot position.
  + Use elementary row operations to turn all entries below the pivot into zeros.
  + Repeat steps (1-3) with each consecutive nonzero column with pivot positions one row below the previous one.
  + Starting with the rightmost pivot, using scaling, if necessary, to convert each pivot to a $1$.
]

- When performing an elementary row operation, we refer to each $n^"th"$ row as $R_n$.
$
  mat(0, 8;3,5)#stack[$R_1$ \ $R_2$]
  stretch(arrow)_(R_1 <-> R_2)
  mat(3, 5;0,8)
  stretch(arrow)_(R_1 - 5/8R_2 -> R_1)
  mat(3, 0;0, 8)
  stretch(arrow)_(1/3R_1 -> R_1)
  mat(1, 0;0, 8)
  stretch(arrow)_(1/8R_2 -> R_1)
  mat(1, 0;0, 1)
$


=== Solutions of Linear Systems
Applying the row reduction algorithm to an augmented matrix leads directly to a solution set for the associated linear system.
- *Basic variables* are variables whose coefficients are in a pivot column.
- *Free variables* are variables whose coefficients aren't in a pivot column.

If a system is consistent and has only one solution, then there will be no free variables.

If a system is consistent and has infinitely many solutions, then a solution set can be found by _finding the basic variables in terms of the free variables_.

If a system is inconsistent, then the solution set is empty.


=== Existence and Uniqueness
#theorem[Existence and Uniquness Theorem][
  A linear system is consistent $<=>$ the corresponding augmented matrix's rightmost column is _not_ a pivot column.

  If a linear system is consistent, then the solution set contains either (i) a unique solution, when there are no free variables, or (ii) infinitely many solutions, when there is at least one free variable.
]



#pagebreak(weak: true)
== Vector Equations
A matrix with one column is known as a *column vector*, or just a *vector*.
- Vectors are generally denoted using boldface lowercase letters:
#columns(3)[
  $
    bf(u) = vec(5,2,6)
  $
  #colbreak()
  $
    bf(v) = vec(19,-5)
  $
  #colbreak()
  $
    bf(w) = vec(-2,0,23,-9)
  $
]

- Sometimes, vectors are used to express columns of matrix.

In general, the set of all vectors across some $n$-dimensional coordinate space is $RR^n$. We will often work with vectors in $RR^2$ and $RR^3$ when geometric interpretations are needed, but going beyond the third dimension is not uncommon.


=== Geometric Vector Descriptions
For vectors in $RR^2$ and $RR^3$, we can interpret vectors $bf(u)=vec(a,b)$ and $bf(v)=vec(a,b,c)$ as directed line segments from the origin to the points $(a,b)$ and $(a,b,c)$, respectively.


=== Vectors in $RR^n$
#property[Algebraic Properties of $RR^n$][
  #set enum(numbering: "i)")
  $forall bf(u), bf(v), bf(w) in RR^n$ and all scalars $c$ and $d$:
  + $bf(u) + bf(v) = bf(v) + bf(u)$
  + $(bf(u) + bf(v)) + bf(w) = bf(u) + (bf(v) + bf(w))$
  + $bf(u) + bf(0) = bf(0) + bf(u) = bf(u)$
  + $bf(u) + (-bf(u)) = -(bf(u)) + bf(u) = bf(0)$
  + $c(bf(u) + bf(v)) = c bf(u) + c bf(v)$
  + $(c+d) bf(u) = c bf(u) + d bf(u)$
  + $c(d bf(u)) = (c d)bf(u)$
  + $1 bf(u) = bf(u)$
]


=== Linear Combinations
A *linear combination* of $RR^n$ vectors $bf(v)_1, bf(v)_2, dots, bf(v)_p$ is defined as follows:
$
  bf(y) &= c_1 bf(v)_1 + c_2bf(v)_2 + dots.c + c_p bf(v)_p
$
where scalars $c_1, c_2, dots, c_p$ are the *weights*.

- We can express infinite sets of vectors as linear combinations of finite sets of vectors.
- Infinitely large solution sets are expressed using linear combinations.

#definition[Span][
  If $bf(v)_1, bf(v)_2, dots, bf(v)_p$ are vectors in $RR^n$, then the set of all linear combinations of those vectors is denoted by $"Span"{bf(v)_1, bf(v)_2, dots, bf(v)_p}$ and is called the *subset of $RR^n$ spanned by* $bf(v)_1, bf(v)_2, dots, bf(v)_p$.
]

- The question of whether or not some vector $bf(b)$ is in $"Span"{bf(v)_1, dots, bf(v)_p}$ is equivalent to whether or not the following vector equation has a solution:
$
  x_1 bf(v)_1 + x_2 bf(v)_2 + dots.c + x_p bf(v)_p = bf(b)
$
- Relating this back to chapter 1.2, this is equivalent to this linear system:
$
  mat(bf(v)_1, bf(v)_2, dots.c, bf(v)_p)
$


=== Geometric Span Descriptions
Let $bf(u)$ and $bf(v)$ be some nonzero vectors in $RR^3$.
- $"Span"{bf(u)}$ is a line straight through $bf(0)$ and $bf(u)$.
- $"Span"{bf(u), bf(v)}$ is a plane that $bf(u)$, $bf(v)$, and $bf(0)$ lie on.
These interpretations stem from the spans containing _all linear combinations of the vectors_ in these subsets of $RR^3$.



#pagebreak(weak: true)
== The Matrix Equation $A bf(x)=bf(b)$
If $A$ is an $m times n$ matrix with columns $bf(a)_1, bf(a)_2, dots, bf(a)_n$, and if $bf(x)$ is a vector in $RR^n$, then the product $A bf(x)$ is some vector $bf(b) in RR^m$ given by
$
  A bf(x) &= mat(bf(a)_1, bf(a)_2, dots.c, bf(a)_n) vec(x_1,x_2,dots.v,x_n)
  = x_1bf(a)_1 + x_2bf(a)_2 + dots.c + x_n bf(a)_n = bf(b)
$
- The form $A bf(x) = bf(v)$ is known as the *matrix equation*, as they can be analogous to linear systems.
- Matrices are often denoted by uppercase letters and are sometimes bolded.


=== Existence of Solutions
#theorem[
  #set enum(numbering: "a)")
  Let $A$ be an $m times n$ matrix. Then, the following statements are equivalent.
  + $forall bf(b) in RR^m$, the equation $A bf(x) = bf(b)$ has a solution.
  + Each $bf(b) in RR^m$ is a linear combination of the columns of $A$.
  + The columns of $A$ span $RR^m$.
  + $A$ has a pivot position in every row.
]
#caution-block[
  The matrix $A$ of the matrix equation is a coefficient matrix, not an augmented matrix.
]


=== Properties of the Matrix-Vector Product
#theorem[
  #set enum(numbering: "a)")
  If $A$ is an $m times n$ matrix, $bf(u)$ and $bf(v)$ are vectors in $RR^n$, and $c$ is a scalar, then:
  + $A(bf(u) + bf(v)) = A bf(u) + A bf(v)$
  + $A(c bf(u)) = c (A bf(u))$
]



#pagebreak(weak: true)
== Solution Sets of Linear Systems
=== Homogenous Linear Systems
A linear system is *homogenous* if it can be written in the form $A bf(x) = bf(0)$ given some $m times n$ matrix $A$ and the $RR^m$ zero vector $bf(0)$.
- A homogenous system will always have at least one solution, specifically the *trivial solution*, $bf(x) = bf(0)$.
- Generally, we are interested in whether or not a homogenous system has a *nontrivial solution*.

#proposition[
  The homogenous equation $A bf(x) = bf(0)$ has a nontrivial solution $<=>$ the equation has at least one free variable.
]

#example[
  Solve the homogenous linear system below:
  $
    &&8x_1&& + &&4x_2&& + &&5x_3&& &=& 0 \
    &&2x_1&& + &&4x_2&&  && &&  &=& 0 \
    &&3x_1&& + &&2x_2&& + &&x_3&& &=& 0
  $
  #line(length: 100%)
  $
    mat(augment: #3,
      8,4,5,0;
      2,4,0,0;
      3,2,1,0;
    )
    &stretch(arrow)_(R_2 - 1/4R_1 -> R_2)
    mat(augment: #3, align: #right,
      8,4,5,0;
      0,3,-5/4,0;
      3,2,1,0;
    )
    stretch(arrow)_(R_3 - 3/8R_1 -> R_3)
    mat(augment: #3, align: #right,
      8,4,5,0;
      0,3,-5/4,0;
      0,-1/2,-7/8,0;
    ) \
    &stretch(arrow)_(R_1 - 4/3R_2 -> R_1)
    mat(augment: #3, align: #right,
      8,0,20/3,0;
      0,3,-5/4,0;
      0,-1/2,-7/8,0;
    )
    stretch(arrow)_(R_3 + 1/6R_2 -> R_3)
    mat(augment: #3, align: #right,
      8,0,20/3,0;
      0,3,-5/4,0;
      0,0,-13/12,0;
    ) \
    &stretch(arrow)_(-12/13R_3 -> R_3)
    mat(augment: #3, align: #right,
      8,0,20/3,0;
      0,3,-5/4,0;
      0,0,1,0;
    )
    stretch(arrow)_(R_1-20/3R_3 -> R_1)
    mat(augment: #3, align: #right,
      8,0,0,0;
      0,3,-5/4,0;
      0,0,1,0;
    ) \
    &stretch(arrow)_(R_2+5/4R_3 -> R_1)
    mat(augment: #3, align: #right,
      8,0,0,0;
      0,3,0,0;
      0,0,1,0;
    )
    stretch(arrow)_(1/8R_1-> R_1)
    mat(augment: #3, align: #right,
      1,0,0,0;
      0,3,0,0;
      0,0,1,0;
    )
    stretch(arrow)_(1/3R_2-> R_2)
    mat(augment: #3, align: #right,
      1,0,0,0;
      0,1,0,0;
      0,0,1,0;
    )
  $
  Because there exists no free variables, the only solution is the trivial solution, $bf(x) = bf(0)$.
]


=== Parametric Vector Form
An _explicit description_ of a solution set is often written in parametric vector form:
$
  bf(x) = s bf(u) + t bf(v)
$
where $s$ and $t$ are some real numbers.

#example[
  Describe the solutions of $A bf(x) = bf(0)$ in parametric vector form given $A=mat(1, 2, -2, 5;0, 1, -5, 3)$.
  $
    mat(align: #right, augment: #4,
      1, 2, -2, 5, 0;
      0, 1, -5, 3, 0;
    )
    &stretch(arrow)_(R_1 - 2R_2 -> R_1)
    mat(align: #right, augment: #4,
      1, 0, 8, -1, 0;
      0,1, -5, 3, 0;
    )
    \
    therefore x_1 + 8x_3 - x_4 &= 0 \
    x_2 -5x_3 + 3x_3 &= 0 \
    bf(x) &= x_3 vec(align: #right, -8,5,1,0) + x_4 vec(align: #right, 1, -3, 0, 1)

  $
]


=== Solutions of Nonhomogeneous Systems
When a nonhomogeneous linear system has infinitely many solutions, the general solution can be expressed in parametric vector form as _one solution to the system plus the general solution to the analogous homogeneous linear system_.
- Geometrically, solution sets between corresponding homogeneous and nonhomogeneous linear systems are _parallel_. Essentially, the solution set for any $A bf(x) = bf(b)$ is translated by $bf(b)$ from the solution set for $A bf(x) = bf(0)$.



#pagebreak(weak: true)
== Applications of Linear Systems



== Linear Independence
#definition[
  An indexed set of vectors ${bf(v)_1, bf(v)_2, dots, bf(v)_p}$ in $RR^n$ is *linearly independent* if the vector equation
  $
    c_1 bf(v)_1 + c_2 bf(v)_2 + dots.c + c_p bf(v)_p = 0
  $
  only has the trivial solution. Otherwise, the set is *linearly dependent*.
]


=== Linear Independence of Matrix Columns
Notice how the definition for the linear dependence is analogous to the matrix equation $A bf(x) = bf(0)$. Recognizing each column of $A$ as a vector, we can say that if $A bf(x)=bf(0)$ only has the trivial solution, _then its columns are linearly independent._
- If we want to test the linear dependence of a set of vectors, we can let them be the columns of a matrix, then solve the corresponding homogeneous system.
- A set of one vector is linearly independent $<=>$ the vector is not the zero vector. 


=== Sets of Two or More Vectors
#theorem[Characterization of Linearly Dependent Sets][
  An indexed set $S={bf(v)_1, bf(v)_2, dots, bf(v)_p}$ of at least two vectors is linearly dependent $<=>$ at least one of the vectors in $S$ is a linear combination of the others.

  If $S$ is linearly dependent and $bf(v)_1 eq.not bf(0)$, then there exists some $bf(v)_j$ $forall j>1$ such that $bf(v)_j$ is a linear combination of the previous vectors.
]



#pagebreak(weak: true)
== Linear Transformations
A *transformation*, *function*, or *mapping* $T$ from $RR^n$ to $RR^m$ is a rule that maps each vector $bf(x) in RR^n$ to a vector $T(bf(x)) in RR^m$.
- This mapping is generally denoted $T: RR^n -> RR^m$.
- $RR^n$ is the *domain*.
- $RR^m$ is the *codomain*.
- $T(bf(x))$ is the *image* of $bf(x)$ under $T$.
- The set of all images $T(bf(x))$ is the *range*.


=== Matrix Transformations
Many transformations are associated with matrix multiplication. A *matrix transformation* is generally denoted $bf(x) mapsto A bf(x)$ where $A$ is the *standard matrix* of the transformation. If this matrix transformation is $T: RR^n -> RR^m$, then $T(bf(x)) = A bf(x)$.
- In this case, because the domain is $RR^n$ and the codomain is $RR^m$, the standard matrix $A$ must be $m times n$.


=== Linear Transformations
#definition[Linear Transformation][
  #set enum(numbering: "i)")
  A transformation $T$ is *linear* if
  + $T(bf(u)+bf(v)) = T(bf(u)) + T(bf(v))$ $forall bf(u), bf(v)$ in the domain of $T$.
  + $T(c bf(u)) = c T(bf(u))$ $forall$ scalars $c$ and $bf(u)$ in the domain of $T$.
]
- Essentially, a linear transformation requires a standard matrix $A$, as these properties stem from the properties of mapping $bf(x) mapsto A bf(x)$:
$
  A(bf(u) +bf(v)) &= A bf(u) + A bf(v) \
  A(c bf(u)) &= c A bf(u)
$

As a result, we can also ascertain two more properties of linear transformations.
- Given a linear transformation $T$, scalars $c$ and $d$, and vectors $bf(u)$ and $bf(v)$ in the $T$'s domain:
$
  T(bf(0)) &= bf(0) \
  T(c bf(u) + d bf(v)) &= c T(bf(u)) + d T(bf(v))
$



#pagebreak(weak: true)
== The Matrix of a Linear Transformation
Earlier, we asserted that every linear transformation requires some standard matrix $A$. We can prove this using identity matrix and *standard basis vectors* $bf(e)_1, bf(e)_2, dots, bf(e)_n$ (the columns of $I$, essentially).

#theorem[
  Let $T: R^n -> R^m$ be a linear transformation. Then, there exists a unique matrix $A$ such that
  $
    T(bf(x)) = A bf(x) quad forall bf(x) in RR^n
  $

  In fact, $A$ is an $m times n$ matrix whose $j^"th"$ column is $T(bf(e)_j)$, where $bf(e)_j$ is the $j^"th"$ column of $I_n$.
  $
    A=mat(T(bf(e)_1), T(bf(e)_2), dots.c, T(bf(e)_n))
  $
]

#proof[
  $
    T(bf(x)) &= T(x_1 bf(e)_1 + x_2 bf(e)_2 + dots.c + x_n bf(e)_n) \
    T(bf(x)) &= x_1 T(bf(e)_1) + x_2 T(bf(e)_2) + dots.c + x_n T(bf(e)_n) \
    T(bf(x)) &= mat(T(bf(e)_1), T(bf(e)_2), dots.c, T(bf(e)_n)) vec(x_1, x_2, dots.v, x_n) \
    T(bf(x)) &= A bf(x)\
  $
]
- Essentially, we can define any standard matrix for a linear transformation based on what they do to standard basis vectors.


=== Geometric Linear Transformations of $RR^2$
In $RR^2$, lets imagine $bf(e)_1=vec(1,0)$ and $bf(e)_2=vec(0,1)$ as the unit square. This will make it easier to interpret the following linear transformations geometrically.

#pagebreak(weak: true)
#table(columns: (1fr, 1fr, 1fr), fill: (x,y) => if y<=1 {white.darken(10%)}, inset: 10pt,
  table.cell(colspan: 3,align(center)[*Reflections*]),
  align(center)[*Transformation*], align(center)[*Unit Square Image*], align(center)[*Standard Matrix*],
  [Reflection over the $x$-axis.], 
  cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    set-style(axes: (shared-zero: false))

    plot.plot(
      size: (4,4),
      x-tick-step: none,
      x-grid: true,
      x-min: -1.5,
      x-max: 1.5,
      y-tick-step: none,
      y-min:-1.5,
      y-max: 1.5,
      axis-style: "school-book",
      {
        plot.add(
          domain: (0, 1), 
          x => 0,
          samples: 200,
          style: (stroke: none)
        )

        plot.add-hline(1, min: 0, max: 1, style: (stroke: (dash: "dashed")))
        plot.add-vline(1, min: 0, max: 1, style: (stroke: (dash: "dashed")))

        plot.add-hline(-1, min: 0, max: 1, style: (stroke: (paint: blue)))
        plot.add-vline(1, min: -1, max: 0, style: (stroke: (paint: blue)))
    })
  }), 
  $ mat(align: #right, 1,0;0,-1) $,
  [Reflection over the $y$-axis.], 
  cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    set-style(axes: (shared-zero: false))

    plot.plot(
      size: (4,4),
      x-tick-step: none,
      x-grid: true,
      x-min: -1.5,
      x-max: 1.5,
      y-tick-step: none,
      y-min:-1.5,
      y-max: 1.5,
      axis-style: "school-book",
      {
        plot.add(
          domain: (0, 1), 
          x => 0,
          samples: 200,
          style: (stroke: none)
        )

        plot.add-hline(1, min: 0, max: 1, style: (stroke: (dash: "dashed")))
        plot.add-vline(1, min: 0, max: 1, style: (stroke: (dash: "dashed")))

        plot.add-hline(1, min: -1, max: 0, style: (stroke: (paint: blue)))
        plot.add-vline(-1, min: 0, max: 1, style: (stroke: (paint: blue)))
    })
  }), 
  $ mat(align: #right, -1,0;0,1) $,
)


#pagebreak(weak: true)
#table(columns: (1fr, 1fr, 1fr), fill: (x,y) => if y<=1 {white.darken(10%)}, inset: 10pt,
  table.cell(colspan: 3,align(center)[*Contractions and Expansions*]),
  align(center)[*Transformation*], align(center)[*Unit Square Image*], align(center)[*Standard Matrix*],
  [Horizontal contraction and expansion.], 
  cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    set-style(axes: (shared-zero: false))

    plot.plot(
      size: (4,4),
      x-tick-step: none,
      x-grid: true,
      x-min: -1.5,
      x-max: 1.5,
      y-tick-step: none,
      y-min:-1.5,
      y-max: 1.5,
      axis-style: "school-book",
      {
        plot.add(
          domain: (0, 1), 
          x => 0,
          samples: 200,
          style: (stroke: none)
        )

        plot.add-hline(1, min: 0, max: 1.5, style: (stroke: (paint: red)))
        plot.add-vline(1.5, min: 0, max: 1, style: (stroke: (paint: red)))

        plot.add-hline(1, min: 0, max: 1, style: (stroke: (dash: "dashed")))
        plot.add-vline(1, min: 0, max: 1, style: (stroke: (dash: "dashed")))

        plot.add-hline(1, min: 0, max: 0.5, style: (stroke: (paint: blue)))
        plot.add-vline(0.5, min: 1, max: 0, style: (stroke: (paint: blue)))

        
    })
  }), 
  $ mat(align: #right, k,0;0,1) $,
  [Vertical contraction and expansion.], 
  cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    set-style(axes: (shared-zero: false))

    plot.plot(
      size: (4,4),
      x-tick-step: none,
      x-grid: true,
      x-min: -1.5,
      x-max: 1.5,
      y-tick-step: none,
      y-min:-1.5,
      y-max: 1.5,
      axis-style: "school-book",
      {
        plot.add(
          domain: (0, 1), 
          x => 0,
          samples: 200,
          style: (stroke: none)
        )

        plot.add-hline(1.5, min: 0, max: 1, style: (stroke: (paint: red)))
        plot.add-vline(1, min: 0, max: 1.5, style: (stroke: (paint: red)))

        plot.add-hline(1, min: 0, max: 1, style: (stroke: (dash: "dashed")))
        plot.add-vline(1, min: 0, max: 1, style: (stroke: (dash: "dashed")))

        plot.add-hline(0.5, min: 0, max: 1, style: (stroke: (paint: blue)))
        plot.add-vline(1, min: 0, max: 0.5, style: (stroke: (paint: blue)))

        
    })
  }), 
  $ mat(align: #right, 1,0;0,k) $,
)


=== One-to-One and Onto
#definition[
  A mapping $T: RR^n -> RR^m$ is *onto* or *surjective* if each $bf(b) in RR^m$ is the image of _at least one_ $bf(x) in RR^n$.
]
- Equivalently, $T$ is onto if its codomain and range are equal.

#definition[
  A mapping $T: RR^n -> RR^m$ is *one-to-one* or *injective* if each $bf(b) in RR^m$ is the image of _at most one_ $bf(x) in RR^n$.
]
- Equivalently $T$ is one-to-one if $T(bf(x)) = bf(b)$ has either a unique solution or no solution.

When a mapping is both onto _and_ one-to-one, it is *bijective*.