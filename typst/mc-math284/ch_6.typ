#import "../../presets.typ": *

= Orthogonality and Least Squares
== Inner Product, Length, and Orthogonality
=== Inner Product
#definition[
	Given vectors $bf(u), bf(v) in RR^n$, the *inner product* or dot product of $bf(u)$ and $bf(v)$ is defined as follows:
	$
		bf(u) dot bf(v) &= bf(u)^transpose bf(v) \
		bf(u) dot bf(v) &= sum_(i=0)^n u_i v_i\
	$
]  

#theorem[
	Let $bf(u), bf(v), bf(w)$ be vectors in $RR^n$ and let $c$ be some scalar.
	+ $bf(u) dot bf(v) = bf(v) dot bf(u)$
	+ $(bf(u) + bf(v)) dot bf(w) = bf(u) dot bf(w) + bf(v) dot bf(w)$
	+ $(c bf(u)) dot bf(v) = c(bf(u) dot bf(v)) = bf(u) dot (c bf(v))$
	+ $bf(u) dot bf(u) >= 0$
	+ $bf(u) dot bf(u) = 0 <=> bf(u)=bf(0)$
]


=== Magnitude and Distance
#definition[
	The *length*, *magnitude*, or *norm* of some vector $bf(v) in RR^n$ is a nonnegative scalar given by
	$
			mag(bf(v)) &= sqrt(bf(v) dot bf(v)) = sqrt(v_1^2 + v_2^2 + dots.c + v_n^2) \
	$
]
- This also implies that $mag(bf(v))^2 = bf(v) dot bf(v)$.
- A *unit vector* is a vector with a magnitude of $1$. We can *normalize* a vector to convert it to a unit vector:
$
hat(v) = bf(v)/mag(bf(v))
$
#definition[
	Given two vectors $bf(u), bf(v) in RR^n$, the *distance between $bf(u)$ and $bf(v)$*, denoted $dist(bf(u),bf(v))$, is defined as follows:
	$
		dist(bf(u), bf(v)) = mag(bf(u)-bf(v))
	$
]
- This definition is analogous to the Euclidean distance between points in $RR^2$ and $RR^3$.


=== Orthogonality
Like with distance in the previous chapter, orthogonality in $RR^n$ is an analog for orthogonality in $RR^2$ and $RR^3$.
#proposition[
	Two vectors $bf(u), bf(v) in RR^n$ are *orthogonal* or *perpendicular* to each other if $bf(u) dot bf(v) = 0$.
]
#proof[
	Let $bf(u)$ and $bf(v)$ be two mutually orthogonal nonzero vectors in $RR^n$. By the law of cosines:
	$
		mag(bf(u)-bf(v))^2 &= mag(bf(u))^2 + mag(bf(v))^2 - 2mag(bf(u))mag(bf(v))cos(theta) \
		mag(bf(u)-bf(v))^2 - mag(bf(u))^2 - mag(bf(v))^2 &=  - 2mag(bf(u))mag(bf(v))cos(theta) \
		mag(bf(u))mag(bf(v))cos(theta) &= (mag(bf(u))^2+mag(bf(v))^2 - mag(bf(u)-bf(v))^2)/(2) \
		mag(bf(u))mag(bf(v))cos(theta) &= ((bf(u) dot bf(u)) + (bf(v) dot bf(v)) - ((bf(u) - bf(v)) dot (bf(u)-bf(v))))/(2) \
		mag(bf(u))mag(bf(v))cos(theta) &= ((bf(u) dot bf(u)) + (bf(v) dot bf(v)) - (bf(u) dot bf(u) - bf(u) dot bf(v) - bf(v) dot bf(u) + bf(v) dot bf(v)))/(2) \
		mag(bf(u))mag(bf(v))cos(theta) &= (bf(u) dot bf(v) + bf(v) dot bf(u))/2 \
		mag(bf(u))mag(bf(v))cos(theta) &= (bf(u) dot bf(v) + bf(u) dot bf(v))/2 \
		mag(bf(u))mag(bf(v))cos(theta) &= bf(u) dot bf(v) \
		mag(bf(u))mag(bf(v))cos(pi/2) &= bf(u) dot bf(v) \
		bf(u) dot bf(v) &= 0 \      
	$
]
- A vector may be orthogonal to a subspace of $RR^n$ if its orthogonal to all vectors in the subspace.

#definition[
	Given subspace $W$ of $RR^n$, the *orthogonal complement* of $W$, denoted $W^perp$, is the set of all vectors that are orthogonal to $W$.
]
Say we create a matrix $A$ such that its columns make a basis for $W$, a subspace of $RR^n$. Additionally, let $bf(x) in RR^n$ and be orthogonal to $W$.
- $W = col A$
- $W^perp = nul A^transpose$
- $(col A)^perp = nul A^transpose$
- $bf(x) in nul A^transpose$
- $bf(x) in (row A)^perp$

Thus, we can create $W^perp$ by solving $A^transpose bf(x) = bf(0).$

#example[
	If $W="Span"{vec(1,1,1), vec(1,2,3)}$, find $W^perp$.
	#line(length: 100%)
	$
		A = mat(1,1;1,2;1,3) \
		A^transpose bf(x) = bf(0) \
		mat(augment: #3,
			1,1,1,0;
			1,2,3,0;
		)
		stretch(arrow)_(R_2-R_1->R_2)
		mat(augment: #3,
			1,1,1,0;
			0,1,2,0;
		)
		stretch(arrow)_(R_1-R_2->R_1)
		mat(augment: #3, align: #right,
			1,0,-1,0;
			0,1,2,0;
		) \
		therefore W^perp = "Span"{vec(align: #right, 1,-2,1)}
	$
]



#pagebreak(weak: true)
== Orthogonal Sets
#definition[
	An *orthogonal set* is a set of vectors ${bf(v)_1, bf(v)_2, dots, bf(v)_p} in RR^n$ such that $bf(u)_i dot bf(u)_j = 0$ for $i eq.not j$.
]

#theorem[
	If $S={bf(u)_1, bf(u)_2, dots, bf(u)_p}$ is an orthogonal set of nonzero vectors in $RR^n$, then $S$ is linearly independent, and by extension, a basis for the subspace spanned by $S$.
]
#proof[
	Let $S={bf(u)_1, bf(u)_2, dots, bf(u)_p}$ be an orthogonal set of nonzero vectors. Now, suppose
	$
			c_1 bf(u)_1 + c_2 bf(u)_2 + dots.c + c_p bf(u)_p = 0
	$
	where $c_1, c_2, dots, c_p$ are any scalars. For each $i^"th"$ vector in $S$,
	$
		(c_1 bf(u)_1 + c_2 bf(u)_2 + dots.c + c_i bf(u)_i + dots.c + c_p bf(u)_p) dot bf(u)_i &= 0 \
		c_1 (bf(u)_1 dot bf(u)_i) + c_2 (bf(u)_2 dot bf(u)_i) + dots.c + c_i (bf(u)_i dot bf(u)_i) + dots.c + c_p (bf(u)_p dot bf(u)_i) &= 0 \
		c_i mag(bf(u)_i)^2 &= 0 \
		c_i &= 0
	$
]

#definition[
	An *orthogonal basis* for a subspace $W$ of $RR^n$ is an orthogonal set that forms a basis for $W$.
]

#block(breakable: false)[
	#theorem[
		Let ${bf(u)_1, bf(u)_2, dots, bf(u)_p}$ be an orthogonal basis for a subspace $W$ of $RR^n$. For each $bf(y) in W$,
		$
			bf(y) = c_1 bf(u)_1 + dots.c + c_i bf(u)_i + dots.c + c_p bf(u)_p
		$
		where
		$
			c_i = (bf(y) dot bf(u)_i)/(bf(u)_i dot bf(u)_i)
		$
	]
	#proof[
		Let $B={bf(u)_1, bf(u)_2, dots, bf(u)_p}$ be an orthogonal basis for a subspace $W$ of $RR^n$. For each $i^"th"$ vector in $B,$
		$
			bf(y) &= c_1 bf(u)_1 + dots.c + c_i bf(u)_i + dots.c + c_p bf(u)_p \
			bf(y) dot bf(u)_i &= (c_1 bf(u)_1 + dots.c + c_i bf(u)_i + dots.c + c_p bf(u)_p) dot bf(u)_i \
			bf(y) dot bf(u)_i &= c_1 (bf(u)_1 dot bf(u)_i) + c_2 (bf(u)_2 dot bf(u)_i) + dots.c + c_i (bf(u)_i dot bf(u)_i) + dots.c + c_p (bf(u)_p dot bf(u)_i) \
			bf(y) dot bf(u)_i &= c_i (bf(u)_i dot bf(u)_i) \
			c_i &= (bf(y) dot bf(u)_i)/(bf(u)_i dot bf(u)_i)
		$
	]
]

#example[
	Find an orthogonal basis for $RR^2$ that uses $vec(1,3)$. Then, find the coordinates of $vec(3,4)$ relative to the orthogonal basis.
	#line(length: 100%)
	$
		bf(u) &= vec(1,3) \
		bf(u) dot bf(v) &= 0 \
		v_1 + 3v_2 &= 0 \
		v_1 &= -3v_2 \
		bf(v) &= vec(align: #right, -3,1) \
		B &= {vec(1,3), vec(align:#right, -3,1)}
	$

	$
		c_1 = (vec(3,4)dot vec(1,3)) / (vec(1,3) dot vec(1,3)) = 15/10 = 3/2 #h(8em)
		c_2 = (vec(3,4)dot vec(align: #right, -3,1))/(vec(align: #right, -3,1) dot vec(align: #right, -3,1))=-5/10=-1/2 \
		vec(3,4)_B = vec(align: #right, 3/2,-1/2)

	$
]


=== Orthogonal Projection
Say we want to decompose the vector some vector $bf(y) in RR^n$ into the sum of two vectors: a multiple of $bf(u)$ (some vector in $RR^n$) and a vector orthogonal to $bf(u)$. Then,
$
	bf(y) = bf(hat(y)) + bf(z)
$
where $bf(hat(y)) = alpha bf(u)$ for some scalar $alpha$ and $bf(z)$ is orthogonal to $bf(u)$.
$
	bf(y) dot bf(u) &= (bf(hat(y)) + bf(z)) dot bf(u) \
	bf(y) dot bf(u) &= alpha bf(u) dot bf(u) + bf(z) dot bf(u) \
	bf(y) dot bf(u) &= alpha (bf(u) dot bf(u)) \
	alpha &= (bf(y) dot bf(u))/(bf(u) dot bf(u))
$
Thus, this decomposition only holds for $hat(bf(y)) = (bf(y) dot bf(u))/(bf(u) dot bf(u))$. This vector is known as the *orthogonal projection* of $bf(y)$ onto $bf(u)$. If the subspace $L$ is the line spanned by $bf(u)$, $bf(hat(y))$ is also the *orthogonal projection* of $bf(y)$ onto $L$, denoted $proj_L bf(y)$. Meanwhile, the vector $bf(z)$ is the component of $bf(y)$ orthogonal to $bf(u)$. 
- $mag(bf(z))$ is the *distance of $bf(y)$ from* $L$.


=== Orthonormal Sets
#definition[
	An *orthonormal set* is a set of orthogonal unit vectors ${bf(u)_1, bf(u)_2, dots, bf(u)_p} in RR^n$. By theorem (6.2.2), it is also an *orthonormal basis* for the subspace it spans.
]
- Because all the vectors in an orthonormal set are unit vectors, orthogonal projections are simplified because for any vector $bf(u)$ in the set, $bf(u) dot bf(u)=1$.

#theorem[
	An $m times n$ matrix $U$ has orthonormal columns $<=>$ $U^transpose U = I_n$.
]
#proof[
	Let $U$ be an $m times n$ orthonormal matrix with columns $bf(u)_1, dots, bf(u)_n$.
	$
		U^transpose U &= mat(bf(u)_1^transpose;bf(u)_2^transpose;dots.v;bf(u)_n^transpose) mat(bf(u)_1, bf(u)_2, dots.c, bf(u)_n) \
		U^transpose U &= mat(
			bf(u)_1^transpose bf(u)_1, bf(u)_1^transpose bf(u)_2,dots.c, bf(u)_1^transpose bf(u)_n;
			bf(u)_2^transpose bf(u)_1, bf(u)_2^transpose bf(u)_2,dots.c, bf(u)_2^transpose bf(u)_n;
			dots.v, dots.v, dots.down, dots.v;
			bf(u)_n^transpose bf(u)_1, bf(u)_n^transpose bf(u)_2, dots.c, bf(u)_n^transpose bf(u)_n
		)
		= mat(
			1,0,dots.c,0;
			0,1,dots.c,0;
			dots.v,dots.v,dots.down,dots.v;
			0,0,dots.c,1
		) = I_n
	$
]

#theorem[
	Let $U$ be an $m times n$ matrix with orthonormal columns, and let $bf(x), bf(y) in RR^n$. Then
	+ $mag(U bf(x)) = mag(bf(x))$
	+ $(U bf(x)) dot (U bf(y)) = bf(x) dot bf(y)$
	+ $(U bf(x)) dot (U bf(y)) = 0 <=> bf(x) dot bf(y) = 0$
]
- Properties (1) and (3) indicate that the linear mapping $bf(x) mapsto U bf(x)$ preserves magnitude and orthogonality. The rotational transformation from (1.9) follows those properties, and the associated standard matrix is indeed orthonormal by the Pythagorean identity.
#note-block[
	An *orthogonal matrix* refers to a matrix with _orthonormal columns_.
]



#pagebreak(weak: true)
== Orthogonal Projections
In (6.2), we covered orthogonal projections onto vectors. Now, we will generalize that definition to subspaces of $RR^n$.
#theorem[Orthogonal Decomposition Theorem][
	Let $W$ be a subspace of $RR^n$. Then, each $bf(y) in RR^n$ can be written uniquely as
	$
		bf(y) &= bf(hat(y)) + bf(z)
	$
	where $bf(hat(y)) in W$ and $bf(z) in W^perp$. Now, if ${bf(u)_1, bf(u)_2, dots, bf(u)_p}$ is an orthogonal basis for $W$: 
	$
		bf(hat(y)) = proj_W bf(y) = (bf(y) dot bf(u)_1)/(bf(u)_1 dot bf(u)_1) bf(u)_1 + dots.c + (bf(y) dot bf(u)_p)/(bf(u)_p dot bf(u)_p) bf(u)_p
	$
	and $bf(z) =bf(y)-bf(hat(y))$.
]


=== Properties of Orthogonal Projections
#theorem[The Best Approximation Theorem][
	Let $W$ be a subspace of $RR^n$, $bf(y) in RR^n$, and $bf(hat(y)) = proj_W bf(y)$. Then, $bf(hat(y))$ is the _closest point_ in $W$ to $bf(y)$, meaning
	$
		mag(bf(y)-bf(hat(y))) < mag(bf(y)-bf(v)) quad forall bf(v) eq.not bf(hat(y)) in W
	$
]
- If $bf(y) in W$, then $bf(hat(y)) = proj_W bf(y) = bf(y)$.

#example[
	Find the closest point to $vec(1,2,3)$ on the plane $W$ spanned by ${vec(1,0,1), vec(align: #right, 1,2,-1)}$.
	#line(length: 100%)
	$
		bf(hat(y)) &= (vec(1,2,3) dot vec(1,0,1))/(vec(1,0,1) dot vec(1,0,1))vec(1,0,1) + (vec(1,2,3) dot vec(align: #right, 1,2,-1))/(vec(align: #right, 1,2,-1) dot vec(align: #right, 1,2,-1))vec(align: #right, 1,2,-1) \
		bf(hat(y)) &= 4/2vec(1,0,1) + 2/6vec(align: #right, 1,2,-1) = vec(2,0,2) + vec(align: #right, 1 slash 3,2 slash 3,-1 slash 3) \
		bf(hat(y)) &= vec(7 slash 3, 2 slash 3, 5 slash 3)
	$
]



#pagebreak(weak: true)
== The Gram-Schmidt Process
The *Gram-Schmidt Process* is an algorithm for creating orthogonal bases for a subspace of $RR^n$. It hinges on orthogonal decompositions by continuously creating vectors that are orthogonal to the previous ones.
#algorithm[The Gram-Schmidt Process][
	Given a basis ${bf(x)_1, bf(x)_2, dots, bf(x)_p}$ for a nonzero subspace $W$ of $RR^n$:
	$
		bf(v)_1 &= bf(x)_1 \
		bf(v)_2 &= bf(x)_2 - (bf(x)_2 dot bf(v)_1)/(bf(v)_1 dot bf(v)_1) bf(v)_1 \
		bf(v)_3 &= bf(x)_3 - (bf(x)_3 dot bf(v)_1)/(bf(v)_1 dot bf(v)_1) bf(v)_1 - (bf(x)_3 dot bf(v)_2)/(bf(v)_2 dot bf(v)_1) bf(v)_2 \
		&dots.v \
		bf(v)_p &= bf(x)_p - (bf(x)_p dot bf(v)_1)/(bf(v)_1 dot bf(v)_1) bf(v)_1 - (bf(x)_p dot bf(v)_2)/(bf(v)_2 dot bf(v)_1) bf(v)_2 - dots.c - (bf(x)_p dot bf(v)_(p-1))/(bf(v)_(p-1) dot bf(v)_(p-1)) bf(v)_(p-1) \
	$
	The resulting set ${bf(v)_1, bf(v)_2, dots, bf(v)_p}$ is an orthogonal basis for $W$. Additionally, by definition,
	$
		"Span"{bf(x)_1, bf(x)_2, dots, bf(x)_k} = "Span"{bf(v)_1, bf(v)_2, dots, bf(v)_k} quad forall 1<=k<=p 
	$
]



#pagebreak(weak: true)
== Least-Squares Problems
In an inconsistent system, we may be interested in some solution that gets closest to the desired answer. In other words, finding some $bf(x)$ that minimizes $mag(bf(b)-A bf(x))$. This is known as a *general least-squares problem*.
#remark-block[
	The term _least-squares_ refers to $mag(bf(b)-A bf(x))$ being the square root of a sum of squares.
]

#definition[
	Given an $m times n$ matrix $A$, a *least-squares solution* to $A bf(x) = bf(b)$ is some $bf(hat(x)) in RR^n$ such that
	$
		mag(bf(b)-A bf(hat(x))) <=mag(bf(b)-A bf(x)) quad forall x in RR^n
	$
]
- So, if $bf(hat(x))$ refers to the best approximation, then the following should be true:
$
	A bf(hat(x)) = proj_(col A) bf(b)=bf(hat(b))
$
- It follows that $bf(b)-bf(hat(b))$ is orthogonal to $col A$. Therefore,
$
	bf(b)-bf(hat(b)) in (col A)^perp \
	bf(b)-bf(hat(b)) in nul A^transpose \
	A^transpose (bf(b)-bf(hat(b))) &= bf(0) \
	A^transpose bf(b)- A^transpose bf(hat(b)) &= bf(0) \
	A^transpose bf(hat(b)) &= A^transpose bf(b) \
	A^transpose A bf(hat(x)) &= A^transpose bf(b) \
$

The distance $mag(bf(b)-bf(hat(b)))$ is known as the *least-squares error*.

#example[
	Create a linear regression for the points $(0, 0), (1,1), (3,1)$.
	#line(length: 100%)
	$
		mat(
			0,1;
			1,1;
			2,1;
		)
		vec(m,k)&=vec(0,1,1) \
		mat(0,1,2;1,1,1)
		mat(
			0,1;
			1,1;
			2,1;
		)
		vec(m,k) &= mat(0,1,2;1,1,1)vec(0,1,1)
	$
	$
		mat(augment: #2, 
			5,3,3;
			3,3,2;
		)
		stretch(arrow)_("rref")
		mat(augment: #2, 
			1,0,1/2;
			0,1,1/6;
		) quad=>quad y &= 1/2 x + 1/6
	$
]