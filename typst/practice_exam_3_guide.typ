#import "template.typ": *
#show: formatting

#let doc_title = [
  #pagebreak(weak: true)
  == PHYS 161 Practice Exam 3 stuff
  #stack(line(length:100%, stroke: 2pt), line(length:100%, stroke: 2pt), spacing: 4pt)
]

#doc_title
#enum.item(1)[
  The answer is *D*. Lets say that a corner cut on the plate shifts the center of mass by some distance $d$ in the opposite $x$-direction.

  #enum.item(1)[
    The first plate has one corner cut on the left side, so $overline(x)_1 = d$.
  ]
  #enum.item(2)[
    The second plate has two corner cuts on the left side, so $overline(x)_2 = d+d= 2 d$.
  ]
  #enum.item(3)[
    The third plate has two corner cuts on the left side and one corner cut on the right side, so $overline(x)_3=d+d-d = d$.
  ]

  Thus, $overline(x)_1 = overline(x)_3 < overline(x)_2$.
]

\

#enum.item(2)[
  The answer is *C*. There the net external force in the problem is zero, so momentum is conserved. Because momentum is conserved, there is no change in velocity.
]

\

#enum.item(3)[
  The answer is *B*. The ball experiences the weight force in the vertical direction, so $P_y$ will be changing. The ball will experience no forces in the horizontal direction, so $P_x$ will be constant.
]

\

#enum.item(4)[
  The answer is *E*. The collision described is totally inelastic, so kinetic energy is lost after the collision, so $K_f < K_i$. There are no mentioned external forces acting on the system, so $P_f = P_i$.
]

\

#enum.item(5)[
  The answer is *A*. 
  $
    P_i &= (4 "kg")(1.8 "m"slash"s") + (6 "kg")(-0.2 "m"slash"s")= 6 "kg"dot"m"slash"s"
    \
    P_f &= (4 "kg")(-0.6 "m"slash"s") + (6 "kg")(1.4 "m"slash"s") = 6 "kg"dot"m"slash"s"
  $
  Momentum is conserved, and the blocks do not stick together. Thus, the only option left that makes sense is that the collision is elastic.
]

\

#enum.item(6)[
  The answer is *D*.
  $
    J &= integral_0^10 F dif t
    \
    J &= (-10 "N")(5 "s") + 1/2(-10 "N")(10 "s" - 5 "s")
    \
    J &= -50 "N"dot"s" - 25 "N"dot"s" = -75 "N"dot"s"
  $
]

\

#enum.item(7)[
  The answer is *C*. Converting the frequency to angular velocity and recalling that clockwise is the negative direction (generally), we get $omega_0 = -1 "rev"slash"s" dot (2pi "rad")/(1 "rev") = -2pi "rad"slash"s"$. Now, we can use angular kinematics.
  $
    omega &= omega_0 + alpha Delta t
    \
    alpha &= (omega-omega_0) / (Delta t)
    \
    alpha &= (0 - (-2pi "rad"slash"s")) / (1 "s") = 2pi "rad"slash"s"^2
  $
]

#doc_title

#enum.item(8)[
  The answer is *D*. We can use the parallel axis theorem and the given moment of inertia of a solid disk/cylinder.
  $
    I_P &= I_"cm" + M d^2
    \
    I_P &= 1/2M R^2 + M R^2
    \
    I_P &= 3/2M R^2
  $
]

\

#enum.item(9)[
  The answer is *A*. Because the solid sphere rolls without slipping, it has both rotational kinetic energy and translation kinetic energy. We can express rotational kinetic energy with translational velocity and mass, allowing it to be added to the translational kinetic energy.
  $
    K_"tot" &= 1/2 M v^2 + 1/2 I omega^2
    \
    K_"tot" &= 1/2 M v^2 + 1/2 (2/5 M R^2) (v / R)^2
    \
    K_"tot" &= 1/2 M v^2 + (1/5 M R^2) (v^2 / R^2)
    \
    K_"tot" &= 1/2 M v^2 + 1/5 M v^2 = 5/10 M v^2 + 2/5 M v^2 = 7/10 M v^2
  $
]

#enum.item(10)[
  The answer is *A*. Recall that both the solid ball and the solid cylinder start from rest at the same height, so their energies will be equal. Now, applying the same process as the previous question:
  #table(columns: (50%, 50%), stroke: none,
    $
      K_"sphere-tot" &= 1/2 M v^2 + 1/2 I omega^2
      \
      K_"sphere-tot" &= 1/2 M v^2 + 1/2 (2/5 M R^2) (v / R)^2
      \
      K_"sphere-tot" &= 1/2 M v^2 + (1/5 M R^2) (v^2 / R^2)
      \
      K_"sphere-tot" &= 1/2 M v^2 + 1/5 M v^2
      \
      K_"sphere-tot"&= 7/10 M v^2
    $,
    $
      K_"cylinder-tot" &= 1/2 M v^2 + 1/2 I omega^2
      \
      K_"cylinder-tot" &= 1/2 M v^2 + 1/2 (1/2 M R^2) (v / R)^2
      \
      K_"cylinder-tot" &= 1/2 M v^2 + (1/4 M R^2) (v^2 / R^2)
      \
      K_"cylinder-tot" &= 1/2 M v^2 + 1/4 M v^2
      \
      K_"cylinder-tot"&= 3/4 M v^2
    $
  )
  Now, $K_"sphere-tot" = K_"cylinder-tot"$ because energy is conserved and the starting energy is the same in both scenarios. However, for these two kinetic energies to be equal, the velocity of the sphere has to be slightly larger because $7/10 < 3/4$. Thus, the sphere descended at a faster velocity than the cylinder, as this will hold true at all elevations after they are released from rest.
]

#doc_title

#enum.item(11)[
  The answer is *B*. We can first use the definition for torque to find the torques' magnitudes relative to each other, then use the rotational analog for Newton's second law to relate their angular accelerations.
  #table(columns: (50%, 50%), stroke: none, $ tau_1 &= F_perp R = F R $,$ tau_2 &= F_perp (2R) = 2 F R $)
  $
    tau_2 = 2(F R) = 2 tau_1
  $

  #table(columns: (50%, 50%), stroke: none,
    $
      tau_1 &= I_1 alpha_1
      \
      alpha_1 &= tau_1 / I_1
      \
      alpha_1 &= tau_1 / (0.5 M R^2)
      \
      alpha_1 &= (2tau_1) / (M R^2)
    $,
    $
      tau_2 &= I_2 alpha_2
      \
      alpha_2 &= tau_2 / I_2
      \
      alpha_2 &= tau_2 / (0.5 M (2R)^2)
      \
      alpha_2 &= (2tau_1) / (2 M R^2)
      \
      alpha_2 &= 1/2 alpha_1
    $
  )

  $
    alpha_1 / alpha_2 = alpha_1 / (1/2 alpha_1) = 2 
  $
]

#doc_title

#enum.item(1)[
  _Short problem_

  Ball 1 of mass $m$ moves at speed $v_0$ along the $+x$-axis toward ball 2.
  Ball 2 is initially at rest and it has five times the mass of ball 1.
  After the balls collide, ball 1 moves at a speed $v_1$ along the $+y$-axis and ball 2 moves at a speed $v_2 = 1/4 v_1$ at an angle of $36.9 degree$ below the $+x$-axis.

  \

  #enum.item(1)[Find the speed $v_1$ of ball 1 after the collision in terms of $v_0$.]
  We can use conservation of momentum in the $x$-direction to solve for $v_1$ in terms of $v_0$.
  $
    m v_0 &= 5 m v_2 cos(36.9 degree)
    \
    5 v_2 cos(36.9 degree) &= v_0
    \
    5/4 v_1 cos(36.9 degree) &= v_0
    \
    v_1 &= (4v_0) / (5cos(36.9 degree))
    \
    bold(v_1 &= v_0)
  $

  #enum.item(2)[
    Draw all of the momentum vectors for both balls before and after the collision.
    Based upon your graphs of momentum vectors, is momentum conserved?
    Use your graphed vectors to demonstrate your conclusion.

    #figure(
      cetz.canvas({
        import cetz.draw: *

        circle((0,0), fill: red, radius: 0.5cm)
        line((0,0), (2,0), mark: (end: "straight"))
        content((2.3,0.2), $arrow(p)_0$)

        circle((5,0), fill: blue, radius: 0.5cm)
        line((5,0), (7.2,-1.50164247608), stroke: none) //align
      }), supplement: none, caption: [Momentum vectors before the collision.]
    )
    \ \
    #figure(
      cetz.canvas({
        import cetz.draw: *

        circle((0,0), fill: red, radius: 0.5cm)
        line((0,0), (0,2), mark: (end: "straight"))
        content((0,2.3), $arrow(p)_1$)

        circle((5,0), fill: blue, radius: 0.5cm)
        line((5,0), (6.25,0), stroke: (dash: "dashed"))
        line((5,0), (7,-1.50164247608), mark: (end: "straight"))
        content((7.2,-1.50164247608), $arrow(p)_2$)
      }), supplement: none, caption: [Momentum vectors after the collision.]
    )

    The vector that results from $arrow(p)_1 + arrow(p_2)$ is not equal to $arrow(p)_0$ as the the $y$-component of the sum vector will clearly not be zero. Thus, momentum is not conserved.
  ]
]

#doc_title

#enum.item(2)[
  _Short problem_
  
  A solid cylinder with mass $m= 3.0 "kg"$ and radius $R=1.2 "m"$ starts from rest and is free to rotate about its center of mass. Four massless rocket engines, each providing a constant force of $F=3.5 "N"$, are connected to the circumference of the cylinder in the orientations shown in the diagram.

  \

  #enum.item(1)[
    Assume that the cylinder starts rotating from rest powered only by the two rockets mounted tangentially.
    How many revolutions does the cylinder make in the first 3 seconds?
  ]

  To find the angular acceleration, we need to find the net torque on the system first.
  $
    tau_1 = tau_2 &= F R sin(90 degree)
    \
    &= (3.5 "N") (1.2 "m")
    \
    &= 4.2 "N"dot"m"
  $

  Note that the sum of the tangential torques will be positive because the massless rockets all induce counterclockwise rotation.
  $
    Sigma tau_perp &= I alpha
    \
    alpha &= (Sigma tau_perp) / I
    \
    alpha &= (tau_1 + tau_2) / (1/2 M R^2)
    \
    alpha &= (4.2 "N"dot"m" + 4.2 "N"dot"m") / (1/2 (3.0 "kg")(1.2 "m")^2)
    \
    alpha &= 39 "rad"slash"s"
  $

  Now that we have angular acceleration, we can use angular kinematics to find the answer.
  $
    omega &= omega_0 + alpha Delta t
    \
    omega &= 0 "rad"slash"s" + (39 "rad"slash"s"^2)(3 "s")
    \
    omega &= 120 "rad"slash"s"
  $
  $
    omega^2 &= omega_0^2 + 2 alpha Delta theta
    \
    Delta theta &= (omega^2 - omega_0^2) / (2 alpha)
    \
    Delta theta &= ((120 "rad"slash"s")^2 - 0) / (2 (39 "rad"slash"s"))
    \
    Delta theta &= 175 "rad"
    \
    n_"revs" &= 175 "rad" dot (1 "rev") / (2 pi "rad") = bold(28 "revs")
  $

  #enum.item(2)[
    Calculate the torque on the cylinder when all four rock engines are operational.
  ]

  $
    Sigma tau &= tau_1 + tau_2 + tau_3 + tau_4
    \
    Sigma tau &= F R sin (90 degree) + F R sin (90 degree) + F R sin (150 degree) + F R sin (150 degree)
    \
    bold(Sigma tau &= 12.6 "N"dot"m")
  $
]

#doc_title

#enum.item(1)[
  _Long problem_

  Block 1 with mass $m_1 = 3 "kg"$ is initially traveling at $v_1=4 "m"slash"s"$ before colliding with block 2.
  Block 2 with mass $m_2 = 2 "kg"$ is at rest on a frictionless surface and is in contact with an unstretched spring of spring constant $k= 200 "N"slash"m"$. The other end of the spring is fixed to a wall.

  \

  #enum.item(1)[
    Find the maximum compression in the spring if the collision is totally inelastic.
  ]

  We can use conservation of momentum to find the velocity of the combined blocks, then use conservation of energy to find the spring's maximum compression.
  $
    m_1 v_1 &= (m_1 + m_2) v_f
    \
    v_f &= (m_1 v_1) / (m_1 + m_2)
    \
    v_f &= ((3 "kg")(4 "m"slash"s")) / (3 "kg" + 2 "kg") = 2.4 "m"slash"s"
  $

  $
    1/2 m_1 v_f ^2 &= 1/2 k x^2
    \
    k x^2 &= m_1 v_f^2
    \
    x &= sqrt((m_1 v_f^2) / k) = sqrt(((3 "kg")(2.4 "m"slash"s")^2) / (200 "N"slash"m")) = bold(0.29 "m")
  $

  #enum.item(2)[
    Find the maximum compression in the spring if the collision is perfectly elastic.
  ]

  We can use a CM frame to find the velocities just after the collision, then use conservation of energy to find the spring's maximum compression.
  $
    v_"cm" &= (m_1 v_1)/(m_1 + m_2) = ((3 "kg")(4 "m"slash"s")) / (3 "kg" + 2 "kg") = 2.4 "m"slash"s"
  $


  $
    v_2^* &= v_2 + v_("lab,cm")
    \
    v_2^* &= v_2 - v_"cm" = 0 "m"slash"s" - 2.4 "m"slash"s" = -2.4 "m"slash"s"
    \ \ \
    v_(2f)^* &= -v_2^* = 2.4 "m"slash"s"
    \
    v_(2f) &= v_(2f)^* + v_"cm" = 2.4 "m"slash"s" + 2.4 "m"slash"s" = 4.8 "m"slash"s"
  $

  $
    1/2 m_2 v_(2f) ^2 &= 1/2 k x^2
    \
    k x^2 &= m_2 v_(2f)^2
    \
    x &= sqrt((m_2 v_(2f)^2) / k) = sqrt(((2 "kg")(4.8 "m"slash"s")^2) / (200 "N"slash"m")) = bold(0.48 "m")
  $
]