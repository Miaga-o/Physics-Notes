#import "../../presets.typ": *
#show: template.with(show_title: false, show_header: false, math_font: "XITS Math")
#set page(header: align(right)[STAT 400 \ Joshua Villar])
#set page(numbering: none)

#let lines = stack(
  line(length: 100%),
  line(length: 100%),
  spacing: 2pt
)


== STAT 400 Homework 1: Calculus Review
#lines

#enum.item(1)[
  Consider the following:
  $
    scr(S) = {L, A, S, E, R}
  $

  #enum.item(1)[
    List out all possible subsets of $scr(S)$. \
    $ emptyset $

    #columns(5)[
      $ {L} $
      #colbreak()
      $ {A} $
      #colbreak()
      $ {S} $
      #colbreak()
      $ {E} $
      #colbreak()
      $ {R} $
    ]

    #columns(10)[
      $ {L, A} $
      #colbreak()
      $ {L, S} $
      #colbreak()
      $ {L, E} $
      #colbreak()
      $ {L, R} $
      #colbreak()
      $ {A, S} $
      #colbreak()
      $ {A, E} $
      #colbreak()
      $ {A, R} $
      #colbreak()
      $ {S, E} $
      #colbreak()
      $ {S, R} $
      #colbreak()
      $ {E, R} $
      #colbreak()
    ]

    #columns(5)[
      $ {L, A, S} $
      #colbreak()
      $ {L, A, E} $
      #colbreak()
      $ {L, A, R} $
      #colbreak()
      $ {L, E, S} $
      #colbreak()
      $ {L, R, S} $
      #colbreak()
    ]

    #columns(5)[
      $ {E, A, S} $
      #colbreak()
      $ {R, A, S} $
      #colbreak()
      $ {R, E, S} $
      #colbreak()
      $ {R, E, L} $
      #colbreak()
      $ {R, E, A} $
      #colbreak()
    ]

    #columns(5)[
      $ {L, A, S, E} $
      #colbreak()
      $ {L, A, S, R} $
      #colbreak()
      $ {L, A, R, E} $
      #colbreak()
      $ {L, R, S, E} $
      #colbreak()
      $ {R, A, S, E} $
      #colbreak()
    ]

    $ {L,A,S,E,R} $
  ]


  #enum.item(2)[
    For $n=0,1,2,3,4,5$, count the number of subsets of size $n$. \
    - There is $bold(1)$ subset of size $0$.
    - There are $bold(5)$ subsets of size $1$.
    - There are $bold(10)$ subsets of size $2$.
    - There are $bold(10)$ subsets of size $3$.
    - There are $bold(5)$ subsets of size $4$.
    - There is $bold(1)$ subset of size $5$.
  ]
]



#enum.item(2)[
  Recall that the function $f(x) = 1/(1-x)$ has the power series expansion
  $
    sum_(n=0)^infinity x^n
  $

  For any $p in (0,1)$, calculate:
  #enum.item(1)[
    $
      sum_(n=1)^infinity p(1-p)^(n-1)
    $

    $
      a &= p(1-p)^0 = p \
      r &= 1-p
    $

    $
      sum_(n=1)^infinity p(1-p)^(n-1) &= a/(1-r) \
      &= p/(1-(1-p)) \
      &= p/(p) \
      &= bold(1)
    $
  ]

  #lines

  #enum.item(2)[
    $
      sum_(n=1)^infinity n p(1-p)^(n-1)
    $

    $
      a&=p(1-p)^0 = p \
      r &= 1-p
    $

    $
      sum_(n=1)^infinity n p(1-p)^(n-1) &= dif/(dif r) (sum_(n=1)^infinity p r^n)\
      &= dif / (dif r) (a/(1-r)) \
      &= a/(1-r)^2 \
      &= p/((1-(1-p))^2) \
      &= bold(1/p)
    $
  ]


  #enum.item(3)[
    Use the above information to calculate
    $
      sum_(n=1)^infinity n(1/2)^n
    $

    $
      a&=(1/2)^1 = 1/2 \
      r &= 1/2
    $

    $
      sum_(n=1)^infinity n(1/2)^n &= dif/(dif r) (sum_(n=1)^infinity r^(n+1)) \
      &= dif/(dif r) (sum_(n=1)^infinity r dot r^n) \
      &= dif/(dif r) (a r/(1-r)) \
      &= a(((1-r)+r)/(1-r)^2)\
      &= a(1/(1-r)^2)\
      &= a/(1-r)^2 \
      &= (1 slash 2) / (1-1 slash 2)^2 = bold(2) \

    $
  ]
  #v(11em)
]



#lines



#enum.item(3)[
  Let $f(x) = e^(-3x)$, calculate the following:
  #enum.item(1)[
    $
      integral_0^infinity f(x) dif x 
      &= lim_(b->infinity) integral_0^b e^(-3x) dif x \
      &= lim_(b->infinity) lr((-1/3 e^(-3x))|)_0^b \
      &= lim_(b->infinity) (-1/3 e^(-3b) + 1/3e^0) \
      &= lim_(b->infinity) (-1/3 e^(-3b) + 1/3) \
      &= bold(1/3)
    $
  ]


  #enum.item(2)[
    $
      integral_0^infinity x f(x) dif x
      &= lim_(b -> infinity) integral_0^b x e^(-3x) dif x
    $

    $
      u=x &quad dif v=e^(-3x) dif x \
      dif u = dif x &quad v = -1/3e^(-3x) \
    $

    $
      lim_(b -> infinity) integral_0^b x e^(-3x) dif x 
      &= lim_(b->infinity)(lr((-1/3x e^(-3x))|)_0^b - integral_0^b -1/3e^(-3x) dif x) \
      &= lim_(b->infinity)(-1/3b e^(-3b) - integral_0^b -1/3e^(-3x) dif x) \
      &= lim_(b->infinity)(-1/3b e^(-3b) - lr((1/9e^(-3x))|)_0^b) \
      &= lim_(b->infinity)(-1/3b e^(-3b) - (1/9e^(-3b) - 1/9)) \
      &= lim_(b->infinity)(-1/3b e^(-3b) -1/9e^(-3b) + 1/9) \
      &= bold(1/9)
    $
  ]

  #colbreak()
  #lines

  #enum.item(3)[
    $
      integral_0^infinity x^2 f(x) dif x &= lim_(b->infinity) integral_0^b x^2 e^(-3x) dif x
    $

    #align(center)[
      #table(columns: 2, inset: 1em, fill: (x,y) => if y == 0 {gray.lighten(70%)},
        $u$, $dif v$,
        $x^2$, $e^(-3x)$,
        $2x$, $-1/3e^(-3x)$,
        $2$, $1/9e^(-3x)$,
        $0$, $-1/27e^(-3x)$,
      )
    ]

    $
      lim_(b->infinity) integral_0^b x^2 e^(-3x) dif x 
      &= lim_(b->infinity)lr((-1/3 x^2 e^(-3x) - 2/9 x e^(-3x) - 2/27 e^(-3x))|)_0^b \
      &= lim_(b->infinity) (-1/3 b^2 e^(-3b) - 2/9 b e^(-3b) - 2/27 e^(-3b) - (-2/27e^0)) \
       &= bold(2/27)
    $
  ]
]



#enum.item(4)[
  Consider the function $f(x,y) = e^(-(2x+5y))$. Calculate
  $
    integral.double f(x,y) dif y dif x
  $
  where the region of integration is:
  #enum.item(1)[
    The rectangle $[0,3] times [1,3]$.
    $
      integral_0^3 integral_1^3 e^(-(2x+5y)) dif y dif x
      &= integral_0^3 lr((-1/5e^(-2x-5y))|)_1^3 dif x \
      &= integral_0^3 (-1/5e^(-2x-15) + 1/5e^(-2x-5)) dif x \
      &= lr((1/10e^(-2x-15) - 1/10e^(-2x-5))|)_0^3 \
      &= 1/10e^(-21) - 1/10e^(-11) -(1/10e^(-15) - 1/10e^(-5)) \
      &= bold(1/10e^(-21) - 1/10e^(-15) - 1/10e^(-11) + 1/10e^(-5))
    $
  ]


  #colbreak()
  #lines

  #enum.item(2)[
    The rectangle $[0,3] times [0,3]$.
    $
      integral_0^3 integral_0^3 e^(-(2x+5y)) dif y dif x
      &= integral_0^3 lr((-1/5e^(-2x-5y))|)_0^3 dif x \
      &= integral_0^3 (-1/5e^(-2x-15) + 1/5e^(-2x)) dif x \
      &= lr((1/10e^(-2x-15) - 1/10e^(-2x))|)_0^3 \
      &= 1/10e^(-21) - 1/10e^(-6) -(1/10e^(-15) - 1/10e^(0)) \
      &= bold(1/10e^(-21) - 1/10e^(-15) - 1/10e^(-6) + 1/10)
    $
  ]


  #enum.item(3)[
    The region bounded by the line $y=2x$ and the $x$-axis, for $x in [0,3]$.
    $
      integral_0^3 integral_0^(2x) e^(-(2x+5y)) dif y dif x
      &= integral_0^3 lr((-1/5e^(-2x-5y))|)_0^(2x) dif x \
      &= integral_0^3 (-1/5e^(-12x) +1/5 e^(-2x)) dif x \
      &= lr((1/60e^(-12x) - 1/10e^(-2x))|)_0^3 \
      &= 1/60e^(-36) - 1/10e^(-6) - (1/60 - 1/10) \
      &= bold(1/60e^(-36) - 1/10e^(-6) + 1/12) \
    $
  ]


  #enum.item(4)[
    The region bounded by the line $y=2x$ and the $x$-axis, for $x in [0,infinity]$.

    $
      integral_0^infinity integral_0^(2x) e^(-(2x+5y)) dif y dif x
      &= integral_0^infinity lr((-1/5e^(-2x-5y))|)_0^(2x) dif x \
      &= integral_0^infinity (-1/5e^(-12x) +1/5 e^(-2x)) dif x \
      &= lim_(b->infinity) integral_0^b (-1/5e^(-12x) +1/5 e^(-2x)) dif x \
      &= lim_(b->infinity) lr((1/60e^(-12x) - 1/10e^(-2x))|)_0^b \
      &= lim_(b->infinity) (1/60e^(-12b) - 1/10e^(-2b) - (1/60 - 1/10)) \
      &= bold(1/12) \
    $
  ]
]
