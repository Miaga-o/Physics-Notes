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
#table(columns: (50%, 50%), stroke: none,
  $
    5x_1 + x_2 - 9x_3 &= 2 \
    x_1 + 0x_2 + 4x_3 &= 7 \
    0x_1 + 0x_2 + 6x_3 &= 1 \
  $,
  $
    mat(
      5, 1, -9;
      1, 0, 4;
      0, 0, 6;
    )
  $
)

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

=== Solutions of Linear Systems
Applying the row reduction algorithm to an augmented matrix leads directly to a solution set for the associated linear system.
- *Basic variables* are variables whose coefficients are in a pivot column.
- *Free variables* are variables whose coefficients aren't in a pivot column.



== Vector Equations



== The Matrix Equation $A bf(x)=bf(b)$



== Solution Sets of Linear Systems



== Linear Independence



== Linear Transformations



== Matrices of Linear Transformations