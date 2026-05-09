#import "../../presets.typ": *
#import cosmos.clouds: *
#show: template.with(show_title: true, show_contents: false, doc_title: "Linear Algebra Proofs", math_font: "XITS Math", numbering_depth: 0)


= Proof 
#exercise[
  Prove: If $A$ and $B$ are $n times n$ matrices with the same $n$ distinct eigenvalues, then $A$ is similar to $B$.
]
#proof[
  Let $A$ and $B$ be $n times n$ matrices with the same $n$ distinct eigenvalues $lambda_1, lambda_2, dots, lambda_n$ such that $A=P D P^(-1)$ and $B=Q D Q^(-1)$ where $D=mat(lambda_1, 0, dots.c, 0;
  0, lambda_2, dots, 0;
  dots.v, dots.v, dots.down, dots.v;
  0, 0, dots.c, lambda_n)$.
  $
    A &= P D P^(-1)
    \
    => D &= P^(-1) A P
    \ \ \
    B &= Q D Q^(-1)
    \
    B &= Q (P^(-1) A P) Q^(-1)
    \
    B &= (Q P^(-1)) A (P Q^(-1))
    \
    B &= (Q P^(-1)) A (Q P^(-1))^(-1)
  $
]

#exercise[
  Prove the following. If $A$ is a $2times 2$ matrix with a repeated eigenvalue $lambda$, then $A$ is diagonalizable $<=>$ $A= mat(lambda, 0;0, lambda)$.
]
#proof[
  Let $A$ be a $2 times 2$ matrix with a repeated eigenvalue $lambda$.

  Prove: $A$ is diagonalizable $=>$ $A= mat(lambda, 0;0, lambda)$.
  - If $A$ is diagonalizable, then the eigenspace associated with $lambda$ must have a dimension of $2$.
  - Thus, the reduced row echelon form of matrix $A-lambda I_2$ needs two free variables.
  - Thus:
  $
    A- lambda I_2 &= mat(0,0;0,0)
    \
    A - mat(0,0;0,0) &= lambda I_2
    \
    A &= lambda I_2
    \
    A&= lambda mat(1,0;0,1)
    \
    A &= mat(lambda,0;0,lambda)
  $ 


  Prove: $A= mat(lambda, 0;0, lambda)$ $=>$ $A$ is diagonalizable.
  - By definition, this is a diagonal matrix. Thus, it may be diagonalized as follows:
  $
    A=mat(1, 0;0, 1) mat(lambda, 0;0, lambda) mat(1, 0;0, 1)
  $

  By definition of biconditional, the original statement has been proved.
]