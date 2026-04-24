#import "presets.typ": *

= Motion Along a Straight Line
== Displacement, Velocity, and Acceleration
- *Time* is measured in seconds, and usually refers to the time passed between two particular points in time.
  - Denoted $t$.
- *Displacement* and *distance* is measured in meters.
  - Denoted $ Delta x$ and $x$, respectively, along the $x$-axis.
- *Velocity* is measured in meters per second.
  - Denoted $v$.
- *Acceleration* is measured in meters per second squared.
  - Denoted $a$.

  $
  Delta x &= x_2 - x_1
  \
  v_("av") &= (Delta x) / (Delta t)
  \
  v &= lim_(Delta t -> 0) (Delta x) / (Delta t) = dv(x,t)
  \
  a_("av") &= (Delta v) / (Delta t)
  \
  a &= lim_(Delta t -> 0)(Delta v) / (Delta t) = dv(v,t) = ndv(x,t,2)
$



== Motion with Constant Acceleration
#definition[Kinematic Equations][
With constant acceleration, the following *kinematic equations* hold:
  $
    v = v_0 + a Delta t
    \
    Delta x = v_0 Delta t + 1 /2 a Delta t^2
    \
    v ^2 = v_0^2 + 2a Delta x
  $
]
#remark-block[
  When these equations are used, the $Delta$ is sometimes omitted for aesthetics. However, the $t$ and $x$ are still deltas in practice.
]

#derivation[Displacement Kinematic Equation][
  $
    v &= v_0 + a Delta t
    \
    integral_(t_1)^(t_2) v dif t &= integral_(t_1)^(t_2) (v_0 + a Delta t) dif t
    \
    integral_(t_1)^(t_2) dv(x,t) dif t &= integral_(t_1)^(t_2) (v_0 + a Delta t) dif t
    \
    integral_(x_1)^(x_2) dif x &= integral_(t_1)^(t_2) (v_0 + a Delta t) dif t
    \
    Delta x &= v_0 Delta t + 1/2 a Delta t^2
  $
]

#derivation[Timeless Kinematic Equation][
  $
    v &= v_0 + a Delta t
    \
    Delta t &= (Delta v) / a
    \ \
    Delta x &= v_0 Delta t + 1 /2 a Delta t^2
    \
    Delta x &= v_0 ((Delta v) / a) + 1 /2 a ((Delta v) / a)^2
    \
    Delta x &= (v v_0 - v_0^2)/a + (v^2 - 2v v_0 + v_0^2 )/(2a)
    \
    Delta x &= (v^2 - v_0^2)/(2a)
    \
    v^2 - v_0^2 &= 2 a Delta x
    \
    v^2 &= v_0^2 + 2 a Delta x
  $
]