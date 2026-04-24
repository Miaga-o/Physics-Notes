#import "presets.typ": *

= Dynamics of Rotational Motion
- We established in earlier chapters that forces induce acceleration in objects.
- It follows that forces also induce angular acceleration in objects, but they specifically have to cause twisting or turning.

== Torque
- *Torque* is the tendency of a force to cause or change's an object's rotational motion, measured in newton-meters $("N" dot "m")$.
  - Denoted $tau$.
  - Torque is a vector quantity in the same direction as the $arrow(alpha)$.
  - While this is technically the same unit used by energy, the context is different.
- Torque is caused by a force acting along its *line of action* on an object some perpendicular distance from the reference point known as the *lever arm* or *moment arm*.

#definition[Torque][
  Given torque $arrow(tau)$, force $arrow(F)$, and lever arm $r$:
  $
    arrow(tau) &= arrow(r) times arrow(F) = r F sin(theta) hat(n)_perp
    \
    tau &= r F sin(theta)
  $
]

- Generally, torque that causes counterclockwise rotation is positive while torque that causes clockwise rotation is negative.
- Similar to other angular quantities, we often refer to torque as its component along the rotational axis, usually the $z$-axis.

#example[Rotating a Square Plate][
  A square metal plate with $0.180 "m"$ side lengths is pivoted about an axis through point $O$ at its center and perpendicular to the plate. Calculate the net torque about this axis due to the three forces shown in the figure given $F_1 = 28.0 "N"$, $F_2 = 14.9 "N"$, and $F_3=16.1 "N"$.
  #figure(image("../images/yf_Figure_10_40.jpg", width: 28%))
  #continue_box
]

#example-box[Rotating a Square Plate _continued_][
  Because the lever arm is a perpendicular distance from the rotational axis, we need to calculate the diagonal distance from point $O$ to the square's corners.
  $
    (0.09 "m")^2 + (0.09 "m")^2 &= r^2
    \
    r &= sqrt((0.09 "m")^2 + (0.09 "m")^2)
    \
    r &=0.127 "m"
  $

  Now, we can calculate each of the torques and add them together to find the net torque. Make sure to calculate the angle between $arrow(F)$ and $arrow(r)$ while their tails are coincident.
  #table(columns: (33.33%, 33.34%, 33.33%), stroke: none,
    $
      tau_1 &= (28 "N")r sin(135 degree)
      \
      tau_1 &= 2.52 "N"dot"m" arrow.cw
    $,
    $
      tau_2 &= (14.9 "N")r sin(135 degree)
      \
      tau_2 &= 1.34 "N"dot"m" arrow.ccw
    $,
    $
      tau_3 &= (16.1 "N")r sin(90 degree)
      \
      tau_3 &= 2.05 "N"dot"m"
    $
  )
  Let counterclockwise rotation be the positive direction.
  $
    Sigma tau &= -tau_1 + tau_2 + tau_3
    \
    Sigma tau &= -(2.52 "N"dot"m") + (1.34 "N"dot"m") + (2.05 "N"dot"m")
    \
    bold(Sigma tau &= 0.870 "N"dot"m")
  $
]



== Torque and Angular Acceleration
- Because force and linear acceleration are related to torque and angular acceleration, respectively, by a perpendicular distance from the origin, we can use Newton's second law to establish a relationship between torque and angular acceleration.

#definition[Rotational Analog of Newton's Second Law][
  Let all values reference some rigid body which rotates about a rotational axis $z$. Given net torque $Sigma tau_z$, moment of inertia $I$, and angular acceleration $alpha_z$:
  $
    Sigma tau_z &= I alpha_z
  $
]

#example[Rotating Machinery][
  A machine part has the form of a solid uniform sphere with mass $220 "g"$ and diameter $4.50 "cm"$. The part spins about a frictionless axle through its center, but at one point on its equator, it scrapes against metal, resulting in a friction force of $0.0200 "N"$ at that point.
  + Find its angular acceleration. Let the direction of the sphere's rotation be the positive direction.
  + How long will it take to decrease its rotational speed by $19.0 "rad"slash"s"$?
  #line(length:100%)

  1) We can rearrange the formula for torque in terms of $I$ and $alpha_z$. We can say that the torque is negative because it results from friction.
  $
    -tau_z &= I alpha_z
    \
    alpha_z &= (-tau_z) / I
    \
    alpha_z &= (-f R) / (2/5 M R^2)

    \
    alpha_z &= (-5 (0.02 "N")) / (2 (0.220 "kg")(0.0225 "m"))
    \
    bold(alpha_z &= -10.1 "rad"slash"s")
  $

  2) Because we just solved for the angular acceleration, we can use an angular kinematic equation to find the time when $Delta omega_z &= -19.0 "rad"slash"s"$.
  $
    omega_z &= omega_(0z) + alpha_z t
    \
    Delta omega_z &= alpha_z t
    \
    t &= (Delta omega_z) / alpha_z
    \
    t &= (-19 "rad"slash"s") / (-10.1 "rad"slash"s"^2)
    \
    bold(t &= 1.88 "s")
  $
]

#example[Flywheel on an Incline][
  A block with mass $m = 5.00 "kg"$ slides down a surface inclined $36.9 degree$ to the horizontal. 
  The coefficient of kinetic friction is $0.27$. A string attached to the block is wrapped around a flywheel on a fixed axis through $O$. 
  The flywheel has a mass $m_f = 16.0 "kg"$ and a moment of inertia \ $I_f = 0.500 "kg"dot"m"^2$ with respect to the axis of rotation. 
  The string pulls without slipping a distance of $0.250 "m"$ from that axis.
  #figure(image("../images/YF-10-55.jpg", width:21%))

  + What is the acceleration of the block down the plane?
  + What is the tension in the string?
  #line(length:100%)

  1) Because we are only given the flywheel's moment of inertia and its mass, we need to solve for the radius using the corresponding moment of inertia equation (disk/cylinder).
  $
    \
    1/2m_f R^2 &= I
    \
    R &= sqrt((2I) / m_f)
    \
    R &= sqrt((2(0.5 "kg"dot"m"^2)) / (16 "kg")) = 0.25 "m"
  $
  The only force acting on the flywheel is a tension force from the rope. 
  Thus, we can express the tension force in terms of known quantities. 
  The unknown $a$ will be factored out later.

  $
    Sigma tau_z &= I alpha = I (a/R) = T R
    \
    T &= (I a) / R^2
  $


  Now, we can substitute this value for $T$ into a Newton's second law equation to isolate $a$ and solve.
  $
    Sigma F_x &= m g sin(36.9 degree) - T - mu_k m g cos(36.9 degree)
    \
    m a &= m g sin(36.9 degree) - (I a) / R^2 - mu_k m g cos(36.9 degree)
  $
  #continue_box
]

#example-box[Flywheel on an Incline _continued_][
  $
    m a + (I a) / R^2 &= m g sin(36.9 degree) - mu_k m g cos(36.9 degree)
    \
    a &= (m g big( (sin(36.9 degree) - mu_k cos(36.9 degree))) ) / (m + I/R^2)
    \
    a &= ((5 "kg")(9.81 "m"slash"s"^2) big( (sin(36.9 degree) - 0.27sin(36.9 degree))) )/(5 "kg" + (0.5 "kg" dot "m"^2)(0.25 "m")^(-2))
    \
    bold(a &= 1.45 "m"slash"s"^2)
  $

  2) Now that we've solved for the acceleration $a$, we can solve for $T$ using the equation we derived in part 1.
  $
    T &= (I a) / R^2
    \
    T &= ((0.5 "kg"dot"m"^2)(1.45 "m"slash"s"^2)) / (0.25 "m")
    \
    bold(T &= 11.6 "N")
  $
]



== Rotation About a Moving Axis
- If a rigid body's rotational axis is moving, we describe it using both its translational motion and its rotational motion.
$
  K_"tot" &= K_"cm" + K_"rot-cm"
  \
  K_"tot" &= 1/2 M_"tot" v_"cm"^2 + 1/2 I_"cm"omega^2
$

=== Rolling without Slipping
- When an object *rolls without slipping*, its point of contact with the surface it rolls on should be at rest. Thus, the velocity at the point of contact must be equal and opposite of $v_"cm"$.
- We generally say that static friction causes the rotation of the rolling object, but it does not affect the total energy of the system because it is at a minimum.
- Thus, for these cases, the following must hold true (given radius $R$, speed of the center of mass $v_"cm"$, and angular speed $omega$):
$
  v_"cm" &= R omega
$


#important-block[
Thus, the total kinetic energy of an object that rolls without slipping can be simplified. Let $C$ be some constant associated with an object's moment of inertia.
$
  K_"tot" &= 1/2 M_"tot" v_"cm"^2 + 1/2 I_"cm"omega^2
  \
  K_"tot" &= 1/2 M_"tot" v_"cm"^2 + 1/2 (C M_"tot" R^2) (v_"cm" / R)^2
  \
  K_"tot" &= 1/2 M_"tot" v_"cm"^2 + C/2 M_"tot" v_"cm"^2
  \
  K_"tot" &= ((1+C)/2) M_"tot" v_"cm"^2
$
]


#example[Rolling Basketball][
  A basketball, which can be approximated as a hollow sphere, rolls down a mountainside into a valley and then up the opposite side, starting from rest at a height $H_0$ above the bottom. The mountainside the basketball is released on is rough, preventing slipping. Meanwhile, the opposite side is smooth and frictionless. Neglect rolling friction and assume the system's total mechanical energy is conserved. How high, in terms of $H_0$, will the ball go up the other side?
  #figure(image("../images/yg.9.36.jpg", width:56%))
  We can start by deriving an expression for $H_0$ using conservation of energy between the basketball's initial position and the valley.
  $
    m g H_0 &= 1/2 m v^2 +1/2 I omega^2
    \
    m g H_0 &= 1/2 m v^2 +1/2 (2/3 m R^2) (v/R)^2
    \
    m g H_0 &= 5/6 m v^2
    \
    H_0 &= (5v^2)/(6g)
  $

  #continue_box
]

#example[Rolling Basketball _continued_][
  Now, using the conservation of energy between the basketball's initial position and its final position and our derived $H_0$, we can establish a connection between _only_ $H$ and $H_0$. At the basketball's peak on the other side, it lacks translation kinetic energy but still has rotational kinetic energy from when it rolled down the rough part.
  $
    m g H_0 &= m g H + 1/2 I omega^2
    \
    m g H_0 &= m g H + 1/2 (2/3 m R^2) (v/R)^2
    \
    m g H_0 &= m g H + 1/3 m v^2
    \
    g ((5v^2)/(6g)) &= g H + 1/3 v^2
    \
    (5v^2)/(6) &= g H + 1/3 v^2
    \
    H &= v^2/(2g)
    \
    H &= 3/5((5v^2)/(6g))
    \
    bold(H &= 3/5 H_0)
  $ 
]



== Work and Power in Rotational Motion
- Say that a tangential force acts on the rim of a pivoted disk. If the point on the rim moves by a distance of $s$:
$
  dif W &= F_"tan" dif s
  \
  dif W &= F_"tan" R dif theta
  \
  dif W &= tau_z dif theta
$
- Now, by integrating both sides, we can reach a definition for work in rotational motion.

#definition[Work in Rotational Motion][
  Given work $W$, torque $tau_z$, and angular positions $theta_1$ and $theta_2$:
  $
    W = integral_(theta_1)^(theta_2) tau_z dif theta
  $
]
- By taking the derivative with respect to time from both sides, we can also reach a definition for power in rotational motion.

#definition[Power in Rotational Motion][
  Given power $P$, torque $tau_z$, and angular velocity $omega_z$:
  $
    P &= tau_z omega_z
  $
]



== Angular Momentum
- The rotational analog of a particle's momentum is its *angular momentum*, measured in \ $("kg"dot"m"^2 slash"s")$.
  - Denoted $L$.
  - Its relationship to momentum is analogous to torque's relationship to force.

#definition[Angular Momentum][
  Given angular moment $arrow(L)$, position vector $arrow(r)$ (relative to some reference point), and momentum $arrow(p)$:
  $
    arrow(L) &= arrow(r) times arrow(p) = arrow(r) times m arrow(v)
  $
]

- Recall that the derivative of momentum with respect to time is force.
- Thus, we can also say that the _derivative of linear momentum with respect to time is torque from the net force_.
$
  dv(arrow(L), t) &= arrow(r) times dv(arrow(p), t)
  \
  dv(arrow(L), t) &= arrow(r) times arrow(F)
  \
  dv(arrow(L), t) &= arrow(tau)
$


=== Angular Momentum on a Rigid Body
- The total angular momentum of a rigid body is equal to the sum of all its particles' angular momenta. 
- On a rigid body, we can express angular momentum in terms of angular speed.
$
  L_"tot" &= sum_(i=0)^N L_i
  \
  L_"tot" &= sum_(i=0)^N r_i p_i = sum_(i=0)^N r_i m_i v_i = sum_(i=0)^N r_i m_i (r_i omega) = sum_(i=0)^N m_i r_i^2 omega
  \
  L_"tot" &= I omega
$

#definition[Angular Momentum on a Rigid Body][
  On some rigid body, given angular momentum $arrow(L)$, moment of inertia $I$, and angular velocity $arrow(omega)$:
  $
    arrow(L) &= I arrow(omega)
  $
]

- This definition supports the previous relationship we established between torque and the derivative of angular momentum with respect to time, as $dif arrow(omega) slash dif t = arrow(alpha)$.



== Conservation of Angular Momentum
#definition[Conservation of Angular Momentum][
  We say that a system's total angular momentum is _conserved_ if the system's net external torque is zero.
]
- Similarly to the conservation of momentum, the internal torques exerted between system particles change their individual angular momenta, but _do not impact the system's total angular momentum_.
- This is a direct consequence of Newton's third law.

#example[Spinning Block][
  A small block on a frictionless, horizontal surface has a mass of $2.50 times 10^(-2) "kg"$.
  It is attached to a massless cord passing through a hole in the surface.
  The block is originally revolving at a distance of $0.300 "m"$ from the hole with an angular speed of $2.19 "rad"slash"s"$.
  The cord is then pulled from below, shortening the radius of the circle in which the block revolves to $0.150 "m"$. Model the block as a particle.
  #figure(image("../images/YF-10-48.jpg", width: 30%))
  + Is the angular momentum of the block conserved?
  + What is the new angular speed?
  + Find the change in kinetic energy of the block.

  #line(length: 100%)
  1) *Angular momentum is conserved because the net force is just the rope's tension, which always points in the radial direction, parallel to the lever arm, meaning the the net torque is always zero.*

  #continue_box
]

#example-box[Spinning Block _continued_][
  2) Because we know that angular momentum is conserved, we can use the angular speed definition to solve for the new angular speed.
  $
    L_1 &= L_2
    \
    I_1 omega_1 &= I_2 omega_2
    \
    m r_1^2 omega_1 &= m r_2^2 omega_2
    \
    omega_2 &= omega_1 r_1^2/r_2^2
    \
    omega_2 &= (2.19 "rad"slash"s") (0.3 "m")^2/(0.15 "m")^2
    \
    bold(omega_2 &= 8.76 "rad"slash"s")
  $

  3) We can use the previous angular speed we solved for to find the change in kinetic energy.
  $
    Delta K &= 1/2 m (v_2^2 - v_1^2)
    \
    Delta K &= 1/2 m (omega_2^2 r_2^2 - omega_1^2 r_1^2)
    \
    Delta K &= 1/2 ((8.76 "rad"slash"s")^2(0.15 "m")^2 - (2.19 "rad"slash"s")^2(0.3 "m")^2)
    \
    bold(Delta K &= 1.62 times 10^(-2) "J")
  $
]

#example[Parachutist on a Turntable][
  A large wooden turntable in the shape of a flat uniform disk has a radius of $2.00 "m"$ and a total mass of $1.40 times 10^2 "kg"$.
  The turntable is initially rotating at $3.00 "rad"slash"s"$ about a vertical axis through its center.
  Suddenly, an $80.0 "kg"$ parachutist makes a soft landing on the turntable at a point near the outer edge.
  + Find the angular speed of the turntable after the parachutist lands.
  + Compute the kinetic energy of the system before and after the parachutist lands.

  #line(length: 100%)
  1) About the rotational axis, there will be zero net torque after the parachutist lands, so angular momentum is conserved. Thus, we can use the angular speed definition to find the answer.
  $
    L_1 &= L_2
    \
    I_1 omega_1 &= I_2 omega_2
    \
    omega_2 &= omega_1 I_1 / I_2
  $
  #continue_box
]

#example-box[Parachutist on a Turntable _continued_][
  $
    \
    omega_2 &= omega_1 (1/2 m_t R^2) / (1/2 m_t R^2 + m_p R^2)
    \
    omega_2 &= (3 "rad"slash"s") (1/2 (140 "kg") (2 "m")^2) / (1/2 (140 "kg") (2 "m")^2 + (80 "kg") (2 "m")^2)
    \
    bold(omega_2 &= 1.40 "rad"slash"s")
  $
  
  2) We can use the angular speed we just found and the definition for rotational kinetic energy.
  #table(columns: (50%, 50%), stroke: none,
    $
      K_1 &= 1/2I_1 omega_1^2
      \
      K_1 &= 1/2 (1/2 m_t R^2) omega_1^2
      \
      K_1 &= 1/4 ((140 "kg") (2 "m")^2) (3 "rad"slash"s")^2
      \
      bold(K_1 &= 1260 "J")
    $,
    $
      K_2 &= 1/2I_2 omega_2^2
      \
      K_2 &= 1/2 (1/2 m_t R^2 + m_p R^2) omega_2^2
      \
      K_2 &= 1/2 (1/2(140 "kg") (2 "m")^2 + (80 "kg")(2 "m")^2) \ &dot (3 "rad"slash"s")^2
      \
      bold(K_2 &= 588 "J")
    $,
  )
]