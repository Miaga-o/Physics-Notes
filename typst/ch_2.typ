#import "template.typ": *

= Motion Along a Straight Line
== Displacement, Time, Velocity, and Acceleration
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
  v &= lim_(Delta t -> 0) (Delta x) / (Delta t) = drv(x,t)
  \
  a_("av") &= (Delta v) / (Delta t)
  \
  a &= lim_(Delta t -> 0)(Delta v) / (Delta t) = drv(v,t) = ndrv(x,t,2)
$



== Motion with Constant Acceleration
#definition([Kinematic Equations], [
With constant acceleration, the following *kinematic equations* hold true:
  $
    v = v_0 + a Delta t
    \
    Delta x = v_0 Delta t + 1 /2 a Delta t^2
    \
    v ^2 = v_0^2 + 2a Delta x
  $
])

#derivation([Displacement Kinematic Equation], [
  $
    v &= v_0 + a Delta t
    \
    integral_(t_1)^(t_2) v dif t &= integral_(t_1)^(t_2) (v_0 + a Delta t) dif t
    \
    integral_(t_1)^(t_2) drv(x,t) dif t &= integral_(t_1)^(t_2) (v_0 + a Delta t) dif t
    \
    integral_(x_1)^(x_2) dif x &= integral_(t_1)^(t_2) (v_0 + a Delta t) dif t
    \
    Delta x &= v_0 Delta t + 1/2 a Delta t^2
  $
])

#pagebreak()