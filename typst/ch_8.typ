#import "presets.typ": *

= Momentum, Impulse, and Collisions
== Momentum and Impulse
- *Momentum* is an object's _quantity of motion_, measured in $"kg" dot "m"slash"s"$ or $"N" dot "s"$
  - Denoted $p$.
#definition[Momentum][
  Given momentum $arrow(p)$, mass $m$, and velocity $arrow(v)$:
  $
    arrow(p) = m arrow(v)
  $
]

- Thus, momentum is a vector quantity.
- We can also redefine Newton's second law in terms of momentum:
$
  Sigma arrow(F) = m (dv(arrow(v), t)) = dif / (dif t) (m arrow(v)) = dv(arrow(p), t)
$
- An object's change in momentum is known as *impulse*.
  - Denoted $J$.
#theorem[Impulse-Momentum Theorem][
  Given impulse $arrow(J)$ and momentum $arrow(p)$:
  $
    arrow(J) = Delta arrow(p)
  $
]

#derivation[Relating Impulse to Force][
  Given net force $Sigma arrow(F)$, acceleration $arrow(a)$, and mass $m$:
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
    m (arrow(v)_2 - arrow(v)_1) &= integral_(t_1)^(t_2) Sigma arrow(F) dif t
    \ \
    Delta p = arrow(J) &= integral_(t_1)^(t_2) Sigma arrow(F) dif t
    \
    arrow(J) &= Sigma arrow(F)_"av" Delta t
  $
]

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

#example[Ball Rebounding][
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
    J_x &= (0.4 "kg")big(((-20 "m"slash"s") - (30 "m"slash"s")))
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
]




== Conservation of Momentum
- *Internal forces* are the forces exerted by a system's particles on each other.
- *External forces* are the forces exerted by particles outside the system on the system's particles.
- *Isolated systems* are systems with no external forces.
- The *total momentum* of a system is the sum of the momenta of the system's particles.
  - Denoted P.
$
  arrow(P) = arrow(p)_A + arrow(p)_B + dots.c = m arrow(v)_A + m arrow(v)_B + dots.c
$
#definition[Conservation of Momentum][
  We say that a system's total momentum is _conserved_ if the system's net external force is zero.
]

- Remember that momentum is a vector quantity, so apply its conservation per component in problems with more than one dimension.
- Note that by Newton's third law, a system's internal forces do not impact the system's total momentum.
#example[Gun Recoil][
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
  #continue_box
]

#example-box[Gun Recoil _continued_][
  2) Now that we have the recoil velocity of the rifle, we can simply plug our values into the momentum and kinetic energy formulas.
  #table(
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
]



== Momentum Conservation and Collisions
- Collisions are strong interactions between objects over a relatively short time interval.
  - Momentum is conserved in collisions, but kinetic energy is not always conserved.
- *Elastic collisions* occur if the forces between the colliding objects are conservative.
  - Thus, the total kinetic energy is conserved.
$
  1/2 m_A v_(1A)^2 + 1/2 m_B v_(2A)^2 = 1/2 m_A v_(2A)^2 + 1/2 m_B v_(2B)^2
$
- *Inelastic collisions* occur if there are nonconservative forces between the colliding objects.
- *Completely inelastic collisions* are when colliding objects stick together and move as one object.
  - This leads to a unique formula for conservation of momentum in completely inelastic collisions:
$
  m_A arrow(v)_A + m_B arrow(v)_B = (m_A + m_B) arrow(v)_(A B)
$
- In inelastic and completely inelastic collisions, kinetic energy is not conserved.

#example[Asteroid Deflection][
  Two asteroids of equal mass in the asteroid belt between Mars and Jupiter collide. Asteroid A initially travels with $v_(1A) = 40.0 "m"slash"s"$ with respect to an inertial frame where asteroid B is at rest. After the collision, asteroid A is deflected $30.0 degree$ from its original direction, while asteroid B is deflected $45.0 degree$ from asteroid A's original direction.
  #figure(image("/images/YF-08-36.jpg", width: 30%))
  + Find the speed of asteroid A after the collision.
  + Find the speed of asteroid B after the collision.
  #line(length: 100%) 

  1) First, we want to find the velocity of of asteroid B in terms of asteroid A. We can use the conservation of momentum in the direction perpendicular to asteroid A's initial trajectory to find it because the total momentum in this direction is zero.
  $
    0 &= m v_(2A y) + m v_(2 B y)
    \
    0 &= m v_(2A) sin(30 degree) + m v_(2 B) sin(45 degree)
    \
    -m v_(2 B) sin(45 degree) &= m v_(2A) sin(30 degree)
    \
    -v_(2B) &= v_(2A) sin(30 degree) / sin(45 degree)
    \
    abs(v_(2B)) &= v_(2A) sin(30 degree) / sin(45 degree)
  $

  Now, the only unknown for conservation of momentum in the $x$-direction is the final velocity of asteroid A in the $x$-direction, which can we express in terms of the final speed of asteroid A using trigonometry.
  $
    m v_(1A x) &= m v_(2A x) + m v_(2B x)
    \
    v_(1A x) &= v_(2A x) + v_(2B x)
    \
    v_(1A x) &= v_(2A)cos(30 degree) + v_(2B)cos(45degree)
    \
    v_(1A x) &= v_(2A)cos(30 degree) + v_(2A) sin(30degree)/sin(45degree) cos(45degree)
    \
    v_(1A x) &= (cos(30degree) + sin(30degree)/sin(45degree)cos(45degree)) v_(2A)
  $

  #continue_box
]

#example-box[Asteroid Deflection _continued_][
  $
    v_(2A) &= v_(1A x) / (cos(30degree) + sin(30degree)/sin(45degree)cos(45degree))
    \
    v_(2A) &= (40 "m"slash"s") / (sqrt(3)/2 + sqrt(2)/2 dot sqrt(2)/2)
    \
    bold(v_(2A) &= 29.3 "m"slash"s")
  $

  2) Because we just solved for the final speed of asteroid A, the final speed of asteroid B is easy to solve for using conservation of momentum.
  $
    v_(1A x) &= v_(2A x) + v_(2B x)
    \
    v_(2B x) &= v_(1A x) - v_(2A x)
    \
    v_(2B)cos(45degree) &= v_(1A x) - v_(2A) cos(30degree)
    \
    v_(2B)&= (v_(1A x) - v_(2A) cos(30degree)) / (cos(45degree))
    \
    v_(2B) &= (40 "m"slash"s" -(29.3 "m"slash"s") sqrt(3)/2) / (sqrt(2) / 2)
    \
    bold(v_(2B) &= 20.7 "m"slash"s")
  $
]

=== Completely Inelastic Collisions
#derivation[Loss of Kinetic Energy in a Completely Inelastic Collision][
  In order to establish why a system's kinetic energy decreases in completely inelastic collisions, we can first find the velocity after the inelastic collision using conservation of momentum. 
  To simplify it further, we can say that object B is initially at rest.
  $
    (m_A + m_B) arrow(v)_(A B) &= m_A arrow(v)_A + m_B arrow(v)_B
    \
    (m_A + m_B) arrow(v)_(A B) &= m_A arrow(v)_A
    \
    arrow(v)_(A B) &= (m_A arrow(v)_A) / (m_A + m_B)
  $
  Now, we can use their magnitudes to find initial and final kinetic energies of the system in terms of object A's original velocity and find the ratio between them.
  $
    K_1 &= 1/2 m_A v_A^2
    \
    K_2 &= 1/2 (m_A + m_B) v_(A B)^2 
    \
    &= 1/2 (m_A + m_B)((m_A v_A) / (m_A + m_B))^2
    \
    &= (m_A^2 v_A^2) / (2(m_A + m_B))
    \
    therefore K_2 / K_1 &= m_A / (m_A + m_B)
  $

  Now, it follows that this ratio is always less than one, showing that kinetic energy is always lost in completely inelastic collisions. This holds true even if object B is not originally at rest.
]

#caution-block[
  Remember that a collision that dissipates kinetic energy is not necessarily completely inelastic. Inelastic collisions can dissipate energy through other means such as deformations.
]

#example[Ice Collision][
  A $5.00 "kg"$ block of ice is sliding at $12.0 "m"slash"s"$ across the floor of an icy valley when it collides and sticks to another $5.00 "kg"$ block of ice that is initially at rest. After the collision, how high above the valley floor will the combined chunks go?
  #line(length: 100%)
  Because the collision is inelastic, we first need to find the velocity of the combined blocks using conservation of momentum.
  $
    p_0 &= p_f 
    \
    m v_0 &= 2m v
    \
    v &= 1/2 v_0
  $
  Now, energy is conserved after the collision, and the kinetic energy is zero when the combined blocks reach their maximum height, allowing us to solve for it.
  $
    E_1 &= E_2
    \
    1/2 2m v^2 &= 2m g h
    \
    2m g h &= m v^2
    \
    h &= v^2 / (2 g)
    \
    h &= (0.5v_0)^2 / (2 g)
    \
    h &= (0.5 dot 12 "m"slash"s")^2 / (2 dot 9.81 "m"slash"s"^2)
    \
    bold(h &= 1.83 "m")
  $
]



=== Elastic Collisions
- Commonly, elastic collision problems start with one object at rest before the collision.
- Thus, we can establish a relationship between the initial velocity of the moving object and the final velocity of the object initially at rest.
#derivation[Final Velocities in an Elastic Collision][
  To establish a relationship between the initial velocity of the moving object and the final velocity of the object initially at rest, we can apply the conservation of energy and momentum.

  #continue_box
]

#derivation-box[Final Velocities in an Elastic Collision _continued_][
  #table(
    columns: (55%, 45%),
    stroke: none,
    $
      1/2 m_A v_(1A)^2 &= 1/2 m_A v_(2A)^2 + 1/2 m_B v_B^2
      \
      1/2 m_A (v_(1A)^2 - v_(2A)^2) &= 1/2 m_B v_B^2
    $,
    $\ \
      m_A v_(1A) &= m_A v_(2A) + m_B v_B
      \ \
      m_A (v_(1A) - v_(2A)) &= m_B v_B
    $
  )

  Now, by dividing the kinetic energy equation by the momentum equation, we can derive the final velocity of object B in terms of object A's velocities.
  $
    (1/2 m_A (v_(1A)^2 - v_(2A)^2))/(m_A (v_(1A) - v_(2A))) 
    &= (1/2 m_B v_B^2) / (m_B v_B)
    \
    1/2 v_(1A) + 1/2 v_(2A) &= 1/2 v_B
    \
    v_B &= v_(1A) + v_(2A)
  $

  Using this definition, we can define the final velocity of object A in terms of object A's initial velocity using the momentum equation.
  $
    m_A v_(1A) &= m_A v_(2A) + m_B (v_(1A) + v_(2A))
    \
    m_A v_(1A) &= m_A v_(2A) + m_B v_(1A) + m_B v_(2A)
    \
    m_A v_(1A) - m_B v_(1A) &= m_A v_(2A) + m_B v_(2A)
    \
    v_(2A) &= (m_A v_(1A) - m_B v_(1A)) / (m_A + m_B)
    \
    v_(2A) &= (m_A - m_B) / (m_A + m_B)v_(1A)
  $

  Now, we can plug this value for the final velocity of the moving object back into the velocity relationship we defined earlier.
  $
    v_B &= v_(1A) + (m_A - m_B) / (m_A + m_B)v_(1A)
    \
    v_B &= (m_A + m_B)/(m_A + m_B)v_(1A) + (m_A - m_B) / (m_A + m_B)v_(1A)
    \
    v_B &= (2m_A) / (m_A + m_B)v_(1A)
  $
]

#important-block[
  We can interpret this answer in numerous ways. 
  - Say that the mass of the moving object is much less than the still object. Then, the still object's velocity after the collision is very small.
    - If a ping pong ball collides with a still cannon ball, the cannon ball shouldn't move much.
  - If the mass of the moving object is equal to the still object, then the still object's velocity after the collision will be equal to the moving object's initial velocity.
    - In a game of pool, a cue ball of roughly equal mass to the other balls is used to move them.
  - If the mass of the moving object is much greater than the still object, the still object's velocity after the collision is very high.
    - If a cannon ball collides with a still ping pong ball, the ping pong ball should move a lot.
]

- We can heavily simplify calculations for elastic collision problems using the motion of the center of mass, which we will cover in the next two subchapters.




== Center of Mass
- A system's *center of mass* is the average position of all matter in the system.
- In many center of mass problems, we use *point masses*, singular points of some mass $m$.

#definition[Center of Mass with Point Masses][
  Given point masses $m_i$ of a system, each a distance $x_i$, $y_i$, or $z_i$ from the origin, center of masses $x_"cm"$, $y_"cm"$, and $z_"cm"$ are defined as follows:
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
]

#definition[Center of Mass with Continuous Mass Distribution][
  Given distance $arrow(r)$ from the origin and total system mass $M_"tot"$, center of mass $arrow(R)_"cm"$ is defined as follows:
  $
    arrow(R)_"cm" &= 1 / M_"tot" integral arrow(r) dot dif m
  $
]

- Because point masses are not given, we integrate with respect to the mass throughout the object. 
- To apply this definition, we can find the differential in terms of densities and also integrate over different axes depending on the dimensions involved in the mass distribution.

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

#derivation[Center of Mass of a Uniform Rod][
  Intuitively, the center of mass of a uniform rod should be the middle. We can use the center of mass equation for continuous mass distributions to prove this.

  We can define the length of any rod as $L$ along the $x$-axis, and define $dif m$ using linear density $lambda$.
  $
    x_"cm" &= 1 / M_"tot" integral x dif m
    \
    x_"cm" &= 1 / M_"tot" integral x lambda dif L
    \
    x_"cm" &= lambda / M_"tot" integral_0^L x dif x
    \
    x_"cm" &= lambda / M_"tot" 1/2 x^2 eval(0, L)
    \
    x_"cm" &= lambda / M_"tot" dot L^2 /2
    \
    x_"cm" &= M_"tot" / L dot 1/ M_"tot" dot L^2 /2
    \
    x_"cm" &= 1/ L dot L^2 /2
    \
    x_"cm" &= L /2
  $
]

#derivation[Center of Mass of a Uniform Cube][
  Similar to a uniform rod, the center of mass of a uniform cube is at the very center. Again, we can use the center of mass equation for continuous mass distributions to prove this. 

  We can define the side lengths of any cube as $L$ and define $dif m$ using volume density $rho$.
  $
    arrow(R)_"cm" &= 1 / M_"tot" integral arrow(r) dot dif m
  $

  #continue_box
]

#derivation-box[Center of Mass of a Uniform Cube _continued_][
  $
    arrow(R)_"cm" &= 1 / M_"tot" integral arrow(r) dot dif m
    \
    arrow(R)_"cm" &= 1 / M_"tot" integral.triple arrow(r) dot rho dif V
    \
    arrow(R)_"cm" &= rho / M_"tot" integral.triple arrow(r) dot dif x dif y dif z
    \
    arrow(R)_"cm" &= rho / M_"tot" integral_0^L integral_0^L integral_0^L (x hat(i) + y hat(j) + z hat(k)) dot dif x dif y dif z
    \
    arrow(R)_"cm" &= rho / M_"tot" integral_0^L integral_0^L (1/2x^2 hat(i) + x y hat(j) + x z hat(k)) eval(x=0, x=L) dot dif y dif z
    \
    arrow(R)_"cm" &= rho / M_"tot" integral_0^L integral_0^L (L^2/2 hat(i) + L y hat(j) + L z hat(k)) dot dif y dif z
    \
    arrow(R)_"cm" &= rho / M_"tot" integral_0^L (L^2/2 y hat(i) + L/2 y^2 hat(j) + L y z hat(k))eval( y=0, y=L) dot dif z
    \
    arrow(R)_"cm" &= rho / M_"tot" integral_0^L (L^3/2 hat(i) + L^3/2 hat(j) + L^2 z hat(k)) dot dif z
    \
    arrow(R)_"cm" &= rho / M_"tot" (L^3/2 z hat(i) + L^3/2 z hat(j) + L^2/2 z^2 hat(k))eval(z=0, z=L)
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
]



=== Motion of the Center of Mass
- Like we've previously established, we can find the velocity and acceleration of the center of mass using derivatives.
#definition[Velocity of the Center of Mass][
  Given point masses $m_i$ of a system each moving with velocity $arrow(v)_i$, the velocity of the center of mass $arrow(v)_"cm"$ is defined as follows:
  $
    arrow(v)_"cm" = (sum_(i=1)^N m_i arrow(v)_i) / (sum_(i=1)^N m_i)
  $
]

- Now, say the total mass of the system is $sum_(i=1)^N m_i = M_"tot"$. If we multiply the velocity of the center of mass by the total mass, we arrive at a new definition for total momentum $arrow(P)$:
$
  M_"tot" arrow(v)_"cm" = sum_(i=1)^N m_i arrow(v)_i = m_1arrow(v)_1 + m_2arrow(v)_2 + dots.c + m_N arrow(v)_N = arrow(P)
$
- Thus, a system with a net external force of zero has a center of mass that moves with constant velocity.
- Furthermore, if the center of mass is already at rest, then it stays at rest when $Sigma arrow(F) = 0$.


#definition[Acceleration of the Center of Mass][
  Given point masses $m_i$ of a system each with acceleration $arrow(a)_i$, the acceleration of the center of mass $arrow(a)_"cm"$ is defined as follows:
  $
    arrow(a)_"cm" = (sum_(i=1)^N m_i arrow(a)_i) / (sum_(i=1)^N m_i)
  $
]

- Now, it follows that multiplying the acceleration of the center of mass by the system's total mass yields the rate of change of the system's total momentum: the _net force_.
$
  M_"tot" arrow(a)_"cm" = sum_(i=1)^N m_i arrow(a)_i = m_1 arrow(a)_1 + m_2 arrow(a)_2 + dots.c + m_N arrow(a)_N = Sigma arrow(F)
$
- However, due to Newton's third law, the net internal forces cancel out, leaving just the net external forces. Thus:
$
  M_"tot" arrow(a)_"cm" = Sigma arrow(F) = Sigma arrow(F)_"ext" + Sigma arrow(F)_"int" = Sigma arrow(F)_"ext"
$
- Now, imagine a scenario where a shell is shot into the air, following a parabolic trajectory. Even when it splits into multiple fragments that each follow their own trajectory, the center of mass _follows the original trajectory_ as if the masses of the system were all concentrated on that path.
- This explains the definition of net force as shown in Chapter 4.

#example[Romeo and Juliet][
  Romeo, who is sitting in the rear of their boat in still water, entertains Juliet by playing his guitar. After the serenade, Juliet, who is sitting at the front of the boat, moves to the rear to kiss Romeo. The $80"-kg"$ boat is facing the shore and the $55"-kg"$ Juliet needs to move $2.7 "m"$ to reach the $77"-kg"$ Romeo. How far does the boat move and in what direction?
  #line(length: 100%)
  Now, the center of mass of the system does not change because the net external force acting on the system is zero. Now, it follows that the boat is $L= 2.7 "m"$ long, and that its center of mass is at half that length. Now, the final positions relative to the origin all move by the distance $d$ toward the shore to compensate for Juliet moving toward the boat's rear, which is away from the shore. We will choose the front of the boat as the origin.
  $
    x_("cm-"i) &= x_("cm-"f)
    \
    (m_J x_(J i) + m_R x_(R i) + m_B x_(B i)) / (m_J + m_R + m_B) &= (m_J x_(J f) + m_R x_(R f) + m_B x_(B f)) / (m_J + m_R + m_B)
    \
    m_J x_(J i) + m_R x_(R i) + m_B x_(B i) &= m_J x_(J f) + m_R x_(R f) + m_B x_(B f)
    \
    m_R L + m_B L/2 &= m_J (L-d) + m_R (L-d) + m_B (L/2-d)
    \
    m_R L + m_B L/2 &= (m_J + m_R + m_B/2)L - (m_J + m_R +m_B)d
    \
    (m_J + m_R +m_B)d &= (m_J + m_R + m_B/2)L - m_R L - m_B L/2
    \
    d &= ((m_J + m_R + m_B/2)L - m_R L - m_B L/2)/(m_J+m_R+m_B)
    \
    d &= (m_J L)/(m_J+m_R+m_B)
    \
    d &= ((55 "kg")(2.7 "m"))/(55 "kg" + 77 "kg" + 80 "kg")
    \
    d &= 0.7 "m"
  $
  *The boat moves $0.7 "m"$ toward the shore.*
]

== Center-of-Mass Frame
- By using the center of mass as a reference frame, elastic collision problems can be heavily simplified.
  - Known as the *Center-of-Mass reference frame*, or just *CM reference frame*.
- In the CM reference frame, _the velocity of the center of mass is zero_ and _the total momentum is zero._

#definition[Center-of-Mass Frame][
  Given that superscript $*$ denotes "in the reference frame of the Center of Mass" and given any object A:
  $
    v_(i)^* &= -v_(f)^*
    \ \
    v_A^* &= v_(A,"lab") + v_("lab","cm")
    \
    v_A^* &= v_(A,"lab") - v_("cm")
  $
]


- Another use case of the CM reference frame is for defining the kinetic energy of a system.

#definition([Kinetic Energy of a System], [
  Given kinetic energy of a system $K_"sys"$ and masses of the system $m_i$ each with velocity $v_i^*$:
  $
    K_"sys" &= sum_(i=1)^N 1/2 m_i v_i^(*2) + 1/2 M_"tot" v_"cm"^2
    \
    K_"sys" &= K_"rel" + K_"cm"
  $
])

#example[][
  Initially, block 1 with mass $m_1 = 1 "kg"$ is moving horizontally to the right with velocity \ $v_1 = 1 "m"slash"s"$ and block 2 with mass $m_2 = 0.5 "kg"$ is at rest. Block 1 collides elastically with block 2, and after that, block 2 collides elastically with a wall to the right. What impulse does the wall give to block 2?
  #line(length: 100%)
  Because there are no external forces in the system before block 2 collides with the wall, we can calculate the velocity of the center of mass at the time when block 2 is at rest, as it will remain constant until the collision between block 2 and the wall.
  $
    v_"cm" &= (m_1 v_1) / (m_1 + m_2)
    \
    v_"cm" &= ((1 "kg")(1 "m"slash"s")) / (1 "kg" + 0.5 "kg")
    \
    v_"cm" &= 2/3 "m"slash"s"
  $

   Now that we know the velocity of the center of mass, we can use the CM reference frame to find the velocity of block 2 after the first collision. First, we find the initial velocity of block 2 in the CM reference frame.

   #continue_box
]

#example-box[Elastic Blocks _continued_][
  $
    v_2^* &= v_2 + v_("lab","cm")
    \
    v_2^* &= v_2 - v_("cm")
    \
    v_2^* &= 0 "m"slash"s" - 2/3 "m"slash"s"
    \
    v_2^* &= - 2/3 "m"slash"s"
  $

  Now, we use the fact that an object reverses its direction but maintains the same speed relative to the center of mass after an elastic collision.
  $
    v_(2f)^* &= -v_2^*
    \
    v_(2f)^* &= -(-2/3 "m"slash"s")
    \
    v_(2f)^* &= 2/3 "m"slash"s"
  $

  To find the velocity of block 2 after the first collision, we can apply relative velocities again.
  $
    v_(2f)&= v_(2f)^* + v_"cm"
    \
    v_(2f)&= 2/3 "m"slash"s" + 2/3 "m"slash"s"
    \
    v_(2f) &= 4/3 "m"slash"s"
  $

  Now, it follows that the second collision is also elastic. Intuitively, block 2's velocity after the second collision has the same magnitude, albeit in the opposite direction. Now that we know the velocity of block 2 just before and just after its collision with the wall, we can calculate the impulse exerted by the wall on block 2.
  $
    J &= Delta p
    \
    J &= m_2(v_(2f f) - v_(2f))
    \
    J &= (0.5 "kg")(-4/3 "m"slash"s" - 4/3 "m"slash"s")
    \
    bold(J &= -4/3 "kg" dot "m"slash"s")
  $
]