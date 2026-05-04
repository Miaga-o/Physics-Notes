#import "../../presets.typ": *
#show: template.with(show_title: false, show_header: false, math_font: "XITS Math")
#set page(header: align(right)[MATH 284 \ Final Review])
#set page(numbering: none)

#let page_title = stack(
  [== MATH 284 Final Review],
  v(4pt),
  line(length: 100%),
  line(length: 100%),
  spacing: 2pt
)



#page_title

#enum.item(1)[
  Let $A = mat(1, 2, 3, 4;2, 4, 6, 8;3, 2, 1, 0)$.
  #enum.item(1)[Put $A$ in reduced echelon form by hand.]
  #v(5em)

  #enum.item(2)[If $A$ is the augmented matrix for a linear system, is the system consistent? *Explain.*]
  #v(5em)

  #enum.item(3)[Find all solutions to $A bf(x)=vec(1,2,3)$. Give your answer in vector form.]
  #v(5em)
]


#enum.item(2)[
  Let $A$ be the matrix from (1). Find the following:
  #enum.item(1)[$"Rank" A$]
  #v(1em)

  #enum.item(2)[A basis for $"Nul" A$]
  #v(2em)

  #enum.item(3)[An orthogonal basis for $"Col" A$]
  #v(3em)

  #enum.item(4)[The coordinates of $vec(align: #right, 1,2,-1)$ relative to the basis found in (c)]
  #v(5em)
]

#enum.item(3)[
  Find each of the following. Show all steps.

  #enum.item(1)[The area of a parallelogram with vertices at $(1,2)$, $(3,5)$, $(6,3)$, and $(8,6)$]
  #v(1em)

  #enum.item(2)[The matrix of the transformation of $RR^2$ which first rotates clockwise by $pi/6$ radians, and then expands horizontally by a factor of $4$.]
  #v(2em)
  #enum.item(3)[The image under the transformation from (b) of the parallelogram from (a)]
  #v(2em)
  #enum.item(4)[The exact area of the transformed image from (c)]
  #v(2em)
]

#enum.item(4)[
  People who buy a domestic car (D) are $60%$ likely to buy a domestic car the next time, too. 
  The other $40%$ will buy an imported car (I) the next time. People who buy an imported car are $75%$ likely to buy an imported car the next time, and $25%$ likely to buy a domestic car.

  
]



#enum.item(4)[
  #enum.item(1)[If $1000$ customers each initially own a domestic car, how many will buy domestic for their $3^"rd"$ car?]
  #v(3em)

  #enum.item(2)[Find the *steady state vector*, and interpret it in the context of this problem.]
  #v(4em)
]

#enum.item(5)[
  Continuing (4), again assume that all $1000$ people initially own domestic cars. 
  Find an explicit formula for the exact number who will buy each type for their $n^"th"$ car.
  #v(4em)
]

#enum.item(6)[
  Evaluate $mat(delim: "|", 1, 2, 3;0, 1, 2;2, 1, 2)$ by hand.
  #v(4em)
]

#enum.item(7)[
  Find the least squares solution to the inconsistent system $mat(delim: "{", x+2y=8;2x+y=12;x-y=12)$.
  #v(6em)
]

#enum.item(8)[
  #enum.item(1)[Find the characteristic equation of the matrix $mat(align: #right, -5, 3;-9, 7)$].
  #v(1em)

  #enum.item(2)[Solve by hand for the eigenvalues and eigenvectors of this matrix.]
  #v(4em)

  #enum.item(3)[Diagonalize the matrix.]
  #v(2em)
]

#enum.item(9)[
  #enum.item(1)[Find the general solution to the differential equation $mat(delim: "{", dv(x_1,t)=-5x_1+3x_2;dv(x_2,t)=-9x_1+7x_2)$]
  #v(5em)

  #enum.item(2)[Solve the initial value problem if $x(0)=vec(4,6)$]
  #v(3em)

  #enum.item(3)[Carefully sketch the trajectories of the typical solution curves.]
  #v(5em)
]

#enum.item(10)[
  Find the general solution to the difference equation $y_(k+2) - 5y_(k+1)+6y_k = 0$
  #v(3em)
]

#enum.item(11)[
  Let $T(bf(x))$ be the linear transformation defined by $bf(x) mapsto A bf(x)$, where $A=mat(1,2,3,4;4,3,2,1)$

  #enum.item(1)[What are the domain and codomain of $T$?]
  #v(1em)
  
  #enum.item(2)[Determine whether $T$ is one-to-one, onto, both, or neither.]
  #v(10em)

  #enum.item(3)[What is the kernel of $T$?]
  #v(3em)
]

#enum.item(12)[
  Find an orthogonal basis for the space $W$ spanned by ${vec(1,1,0,1,1), vec(3,5,1,3,1), vec(2,0,1,1,5)}$ and an orthogonal basis for $W^perp$.
  #v(5em)
]

#enum.item(13)[
  What is the distance between the point $(3,4,2,-4,1)$ and the vector space $W$ from the previous problem?
  #v(5em)
]

#enum.item(14)[
  Note that if $y=C e^(k x)$ is an exponential model for fitting data, then $ln(y)=ln(C e^(k x)) = ln(C)+k x$ gives a linear relationship between $ln(y)$ and $x$. 
  So, the least-squares line for the data $(x_0, ln(y_0))$, $(x_1, ln(y_1))$, $dots$ can be used to find a best-fitting exponential curve for the $(x,y)$ pairs. 
  Use this to find the exponential function $y=C e^(k x)$ which best fits the data points $(0,2)$, $(1,4)$, and $(2,10)$.
  #v(8em)
]

#enum.item(15)[
  Orthogonally diagonalize $mat(3,2;2,6)$
  #v(5em)
]

#enum.item(16)[
  Find the maximum value of $-3x_1^2 + 10x_1 x_2 - 3x_2^2$ subject to the constraint $x_1^2 + x_2^2 = 1$
  #v(5em)
]

#pagebreak()

#enum.item(17)[
  Prove the following is true or give a counterexample to show it may be false:
  The set of all $2$$times$$2$ non-invertible matrices forms a subspace of $M_(2 times 2)$.
  #v(25em)
]

#enum.item(18)[
  Prove the following is true or give a counterexample to show it may be false:
  The set of all $2$$times$$2$ symmetric matrices forms a subspace of $M_(2 times 2)$
]