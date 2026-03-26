#import "template.typ": *

= Momentum, Impulse, and Collisions
== Momentum and Impulse
- *Momentum* is an object's _quantity of motion_, measured in $"kg" dot "m"slash"s"$ or $"N" dot "s"$
  - Denoted $p$.
#definition([Momentum], [
  Given momentum $arrow(p)$, mass $m$, and velocity $arrow(v)$
  $
    arrow(p) = m arrow(v)
  $
])

- Thus, momentum is a vector quantity.
- We can also redefine Newton's second law in terms of momentum:
$
  Sigma arrow(F) = m (drv(arrow(v), t)) = dif / (dif t) (m arrow(v)) = drv(arrow(p), t)
$
- An object's change in momentum is known as *impulse*.
  - Denoted $J$.
#definition([Impulse-Momentum Theorem], [
  Given impulse $arrow(J)$ and momentum $arrow(p)$
  $
    arrow(J) = Delta arrow(p)
  $
])


#derivation([Relating Impulse to Force], [
  Given net force $Sigma arrow(F)$, acceleration $arrow(a)$, and mass $m$
  $
    Sigma arrow(F) &= m arrow(a)
    \
    Sigma arrow(F) &= m (dif arrow(v)) / (dif t)
    \
    Sigma arrow(F) dif t &= m dif arrow(v)
    \
    m dif arrow(v) &= Sigma arrow(F) dif t 
    \
    m integral_(v_1)^(v_2) dif arrow(v) &= integral_(t_1)^(t_2) Sigma arrow(F) dif t
    \
    m integral_(v_1)^(v_2) dif arrow(v) &= integral_(t_1)^(t_2) Sigma arrow(F) dif t
    \
     m (arrow(v)_2 - arrow(v)_1) &= Sigma arrow(F) (t_2 - t_1)
    \
    m Delta arrow(v) &= Sigma arrow(F) Delta t
    \
    Delta arrow(p) &= Sigma arrow(F) Delta t
    \
    arrow(J) &= Sigma arrow(F) Delta t
  $
  If we interpret $Sigma arrow(F)$ as a varying force, then impulse simply equals the integral of the net force with respect to time.
  If the impulse $arrow(J)$ and the time interval $Delta t$ are known, then $Sigma arrow(F)$ represents the average net force over the time interval.

])

- It follows that impulse is the area under a force versus time graph.
#figure(
  cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    let func = x => x
    let domain = (0, 10)

    set-style(
      axes: (shared-zero: false),
      legend: (stroke: none, orientation: ttb, scale: 120%)
    )

    plot.plot(
      size: (5,5),
      x-label: $t$,
      y-label: $Sigma F$,
      x-tick-step: none,
      x-ticks: (
        (3, $t_1$),
        (8, $t_2$),
      ),
      y-tick-step: none,
      y-ticks: (
        (3, $Sigma F_1$),
        (8, $Sigma F_2$),
      ),
      x-equal: "y",
      axis-style: "school-book",
      legend: "north-east",
      {
        plot.add(
          domain: domain, func, 
          style: (stroke: (paint: rgb("#e63737")))
        )

        plot.add-fill-between(
          domain: (3,8), func, x => 0,
          style: (stroke: none, fill: rgb("#e0adad"))
        )

        plot.add-vline(3,
          max: 3,
          style: (stroke: (dash: "dashed"))
        )
        plot.add-hline(3,
          max: 3,
          style: (stroke: (dash: "dashed"))
        )
        plot.add-vline(8,
          max: 8,
          style: (stroke: (dash: "dashed"))
        )
        plot.add-hline(8,
          max: 8,
          style: (stroke: (dash: "dashed"))
        )
        

        plot.add-legend([$Sigma F$], preview: () => {
          line((0,0.5), (1,0.5), stroke: rgb("#e63737"))
        })

        plot.add-legend([$J$], preview: () => {
          rect((0,0), (1,1), stroke: none, fill: rgb("#e0adad"))
        })
      }
    )
  }),
)

- One real-life application of this concept is car crashes. The impulse experienced by a driver colliding with the steering wheel is the same as colliding with an air bag. However, because the air bag takes a longer time to stop the driver, the average force applied to the driver must be less.

#example([Ball Rebounding], [
  You throw a $0.40 "kg"$ ball against a brick wall with a horizontal speed of $30 "m"slash"s"$.
  After colliding with the wall, the ball rebounds with a horizontal speed of $20 "m"slash"s"$.
  + Find the impulse of the net external force on the ball during the impact.
  + If the ball is in contact with the wall for $0.01 "s"$, find the average horizontal force that the wall exerts on the ball during the impact.
  #line(length: 100%)
  1) 
  Because we are given an initial and final velocity of the ball, we can apply the impulse-momentum theorem.
  $
    J_x &= Delta p_x
    \
    J_x &= m v_(2x) - m v_(1x)
    \
    J_x &= m (v_(2x) - v_(1x))
    \
    J_x &= (0.4 "kg")((-20 "m"slash"s") - (30 "m"slash"s"))
    \
    bold(J_x &= -20 "N" dot "s")
  $

  2)
  Now that we know the impulse of the net external force, the average force can be calculated using the fact that the impulse is the area under a force versus time graph.
  $
    J_x &= Sigma F_("av-"x) Delta t
    \
    Sigma F_("av-"x) Delta t &= J_x
    \
    Sigma F_("av-"x) &= J_x / (Delta t)
    \
    Sigma F_("av-"x) &= (20 "N" dot "s") / (0.01 "s")
    \
    bold(Sigma F_("av"-x) &= 2000 "N")
  $
])




== Conservation of Momentum
- *Internal forces* are the forces exerted by a system's particles on each other.
- *External forces* are the forces exerted by particles outside the system on the system's particles.
- *Isolated systems* are systems with no external forces.
- The *total momentum* of a system is the sum of the momenta of the system's particles.
  - Denoted P.
$
  arrow(P) = arrow(p)_A + arrow(p)_B + dots.c = m arrow(v)_A + m arrow(v)_B + dots.c
$
#definition([Conservation of Momentum], [
  We say that a system's total momentum is _conserved_ if the system's net external force is zero.
]) 

- Note that by Newton's third law, a system's internal forces do not impact the system's total momentum.
#example([Gun Recoil], [
  A marksman holds a $3.00 "kg"$ rifle loosely, allowing it to recoil.
  He fires a $5.00 "g"$ bullet whose horizontal velocity relative to the ground is $300 "m"slash"s"$.
  + What is the rifle's recoil velocity?
  + What are the final momentum and kinetic energy of the bullet and rifle?
  #line(length:100%)
  1) During the shot, the external forces exerted by the marksman are negligible.
  Thus, the system's total momentum is conserved. 
  Now, it follows that the system's total momentum is initially zero, so it should be zero after the shot.
  Since we are given everything but the rifle's recoil velocity, we can simply isolate it by equating the momenta to zero.
  $
    p_R + p_B &= 0
    \
    p_R &= -p_B 
    \
    m_R v_R &= -m_B v_B
    \
    v_R &= -(m_B v_B) / m_R
    \
    v_R &= -((5 "g" dot (0.001 "kg") / (1 "g")) (300 "m"slash"s")) / (3 "kg")
    \
    bold(v_R &= -0.500 "m"slash"s")
  $

  2) Now that we have the recoil velocity of the rifle, we can simply plug our values into the momentum and kinetic energy formulas.
  #figure(
    table(
      columns: (25%, 25%, 25%, 25%),
      stroke: none,
      $\ \ 
        p_R &= m_R v_R
        \
        bold(p_R &= -1.50 "kg" dot "m"slash"s")
      $,
      $
        K_R &= 1/2 m_R v_R^2
        \
        bold(K_R &= 0.375 "J")
      $,
      $\ \
        p_B &= m_B v_B
        \
        bold(p_B &= 1.5 "kg" dot "m"slash"s")
      $,
      $
        K_B &= 1/2 m_B v_B^2
        \
        bold(K_B &= 225 "J")
      $
    )
  )
])



== Momentum Conservation and Collisions
- Collisions are strong interactions between objects over a relatively short time interval.
  - Momentum is conserved in collisions, but kinetic energy is not always conserved.
- *Elastic collisions* occur if the forces between the colliding objects are conservative.
  - Thus, the total kinetic energy is conserved.
- *Inelastic collisions* occur if there are nonconservative forces between the colliding objects.
  - *Completely inelastic collisions* are when colliding objects stick together and move as one object.
  - This leads to a unique formula for conservation of momentum in completely inelastic collisions:
$
  m_A arrow(v)_A + m_B arrow(v)_B = (m_A + m_B) arrow(v)_(A B)
$
  - Just because a collision is inelastic _does not mean_ that the colliding objects have to stick together. For instance, kinetic energy could be dissipated from deformations.



== Center of Mass
- A system's *center of mass* is the average position of all matter in the system.

#definition([Center of Mass with Point Masses], [
Given point masses $m_i$ of a system each a distance $x_i$, $y_i$, or $z_i$ from the origin, center of masses $x_"cm"$, $y_"cm"$, and $z_"cm"$ are defined as follows:
  #table(
    columns: (33%, 34%, 33%),
    stroke: none,
    $
    x_"cm" &= (sum_(i=1)^(N) m_i x_i) / (sum_(i=1)^N m_i)
    $,
    $
    y_"cm" &= (sum_(i=1)^(N) m_i y_i) / (sum_(i=1)^N m_i)
    $,
    $
    z_"cm" &= (sum_(i=1)^(N) m_i z_i) / (sum_(i=1)^N m_i)
    $
  )

Or, condensed into a single vector equation:
  $
    arrow(R)_"cm" &= (sum_(i=1)^N m_i arrow(r)) / (sum_(i=1)^N m_i)
  $
])

#definition([Center of Mass with Continuous Mass Distribution], [
  Given distance $arrow(r)$ from the origin and total system mass $M_"tot"$, center of mass $arrow(R)_"cm"$ is defined as follows:
  $
  arrow(R)_"cm" &= 1 / M_"tot" integral arrow(r) dot dif m
$
])

- Because point masses are not given, we integrate with respect to the mass throughout the object. To apply this definition, we can find the differential in terms of densities and also integrate over different axes depending on the dimensions involved in the mass distribution.

#figure(
  table(
    columns: (33%, 34%, 33%),
    stroke: none,
    [Linear density, denoted $lambda$:],
    [Surface density, denoted $sigma$:],
    [Volume density, denoted $rho$:],
    $
      lambda &= M / L = (dif m) / (dif L)
      \
      &therefore dif m = lambda dif L = lambda dif x
    $,
    $
      sigma &= M / A = M / L^2 = (dif m) / (dif A)
      \
      &therefore dif m = sigma dif A = sigma dif x dif y
    $,
    $
      rho &= M / V = M / L^3 = (dif m) / (dif V)
      \
      &therefore dif m = lambda dif V = rho dif x dif y dif z
    $
  )
)

#derivation([Center of Mass of a Uniform Rod], [
  Intuitively, the center of mass of a uniform rod should be the middle. We can use the center of mass equation for continuous mass distributions to prove this.

  #continue_box
])

#derivation([Center of Mass of a Uniform Rod _continued_], [
  We can define the length of any rod as $L$ along the $x$-axis, and define $dif m$ using linear density $lambda$.
  $
    x_"cm" &= 1 / M_"tot" integral x dif m
    \
    x_"cm" &= 1 / M_"tot" integral x lambda dif L
    \
    x_"cm" &= lambda / M_"tot" integral_0^L x dif x
    \
    x_"cm" &= lambda / M_"tot" lr((1/2 x^2)|)_0^L
    \
    x_"cm" &= lambda / M_"tot" dot L^2 /2
    \
    x_"cm" &= M_"tot" / L dot 1/ M_"tot" dot L^2 /2
    \
    x_"cm" &= 1/ L dot L^2 /2
    \
    x_"cm" &= L /2
  $
])

#derivation([Center of Mass of a Uniform Cube], [
  Similar to a uniform rod, the center of mass of a uniform cube is at the very center. Again, we can use the center of mass equation for continuous mass distributions to prove this.

  We can define the side lengths of any cube as $L$ and define $dif m$ using volume density $rho$.
  $
    arrow(R)_"cm" &= 1 / M_"tot" integral arrow(r) dot dif m
    \
    arrow(R)_"cm" &= 1 / M_"tot" integral.triple arrow(r) dot rho dif V
    \
    arrow(R)_"cm" &= rho / M_"tot" integral.triple arrow(r) dot dif x dif y dif z
    \
    arrow(R)_"cm" &= rho / M_"tot" integral_0^L integral_0^L integral_0^L (x hat(i) + y hat(j) + z hat(k)) dot dif x dif y dif z
    \
    arrow(R)_"cm" &= rho / M_"tot" integral_0^L integral_0^L eval(1/2x^2 hat(i) + x y hat(j) + x z hat(k), x=0, x=L) dot dif y dif z
    \
    arrow(R)_"cm" &= rho / M_"tot" integral_0^L integral_0^L (L^2/2 hat(i) + L y hat(j) + L z hat(k)) dot dif y dif z
    \
    arrow(R)_"cm" &= rho / M_"tot" integral_0^L eval(L^2/2 y hat(i) + L/2 y^2 hat(j) + L y z hat(k), y=0, y=L) dot dif z
  $
  #continue_box
])

#derivation([Center of Mass of a Uniform Cube _continued_], [
  $
    arrow(R)_"cm" &= rho / M_"tot" integral_0^L (L^3/2 hat(i) + L^3/2 hat(j) + L^2 z hat(k)) dot dif z
    \
    arrow(R)_"cm" &= rho / M_"tot" eval(L^3/2 z hat(i) + L^3/2 z hat(j) + L^2/2 z^2 hat(k), z=0, z=L)
    \
    arrow(R)_"cm" &= rho / M_"tot" (L^4 / 2 hat(i) + L^4 / 2 hat(j) + L^4 / 2 hat(k))
    \
    arrow(R)_"cm" &= M_"tot" / V dot 1 / M_"tot" (L^4 / 2 hat(i) + L^4 / 2 hat(j) + L^4 / 2 hat(k))
    \
    arrow(R)_"cm" &= 1/ V dot (L^4 / 2 hat(i) + L^4 / 2 hat(j) + L^4 / 2 hat(k))
    \
    arrow(R)_"cm" &= 1/ L^3 dot (L^4 / 2 hat(i) + L^4 / 2 hat(j) + L^4 / 2 hat(k))
    \
    arrow(R)_"cm" &= L / 2 hat(i) + L / 2 hat(j) + L / 2 hat(k)
  $
])



=== Motion of the Center of Mass
- Like we've previously established, we can find the velocity and acceleration of the center of mass using derivatives.
#definition([Velocity of the Center of Mass], [
  Given point masses $m_i$ of a system each moving with velocity $arrow(v)_i$, the velocity of the center of mass $arrow(v)_"cm"$ is defined as follows:
  $
    arrow(v)_"cm" = (sum_(i=1)^N m_i arrow(v)_i) / (sum_(i=1)^N m_i)
  $
])

- Now, say the total mass of the system is $sum_(i=1)^N m_i = M_"tot"$. If we multiply the velocity of the center of mass by the total mass, we arrive at a new definition for total momentum $arrow(P)$:
$
  M_"tot" arrow(v)_"cm" = sum_(i=1)^N m_i arrow(v)_i = m_1arrow(v)_1 + m_2arrow(v)_2 + dots.c + m_N arrow(v)_N = arrow(P)
$
- Thus, a system with a net external force of zero has a center of mass that moves with constant velocity.

#definition([Acceleration of the Center of Mass], [
  Given point masses $m_i$ of a system each with acceleration $arrow(a)_i$, the acceleration of the center of mass $arrow(a)_"cm"$ is defined as follows:
  $
    arrow(a)_"cm" = (sum_(i=1)^N m_i arrow(a)_i) / (sum_(i=1)^N m_i)
  $
])

- Now, it follows that multiplying the acceleration of the center of mass by the system's total mass yields the rate of change of the system's total momentum: the _net force_.
$
  M_"tot" arrow(a)_"cm" = sum_(i=1)^N m_i arrow(a)_i = m_1 arrow(a)_1 + m_2 arrow(a)_2 + dots.c + m_N arrow(a)_N = Sigma arrow(F)
$
- However, due to Newton's third law, the net internal forces cancel out, leaving just the net external forces. Thus:
$
  M_"tot" arrow(a)_"cm" = Sigma arrow(F) = Sigma arrow(F)_"ext" + Sigma arrow(F)_"int" = Sigma arrow(F)_"ext"
$
- This explains the definition of net force as shown in chapter 4.