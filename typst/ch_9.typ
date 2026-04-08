#import "template.typ": *

= Rotation of Rigid Bodies
- *Rigid bodies* are objects that do not experience deformations from forces.
- They are idealized models that will be used throughout this chapter to simplify calculations for rotational motion.



== Angular Kinematics
- Imagine a rigid body rotating about a fixed axis. We can describe its motion by picking some point $P$ on the body and using the angle $theta$ it makes with $+x$-axis to describe rotational position.
- *Angular displacement* is measured in _radians_ $("rad")$ rather than degrees.
  - Denoted $theta$.
$
  1 "rad" dot (360 degree) / (2pi "rad") approx 57.296 degree
$
- We define one radian as the angle of an arc $s$ given that $s = "radius" r$.
$
  s = theta r space "or" space theta = s/r
$

- *Angular velocity* is the rate of change of angular displacement, measured in radians per second.
  - Denoted $omega$.
  - Note that while points farther from the axis of rotation have a larger displacement over the same time interval, _all points on a rigid body have the same angular velocity_.
- *Angular acceleration* is the rate of change of angular velocity, measured in radians per second squared. 
  - Denoted $alpha$.
- The standard for rotational motion is that counterclockwise from the $+x$-axis is the positive direction while clockwise from the $+x$-axis is the negative direction.
- Applying our definition of angular displacement, we can find the magnitude of the tangential speed and acceleration:
#table(
  stroke: none,
  columns: (50%, 50%),
  $
    abs(drv(s,t)) &= abs(drv(theta, t)) r
    \
    v_t &= omega r
  $,
  $
    drv(v_t,t) &= drv(omega, t) r
    \
    a_t &= alpha r
  $
)
- Using this new definition for linear speed, we can express centripetal acceleration in terms of angular speed:
$
  a_c &= omega^2 r
$
- Note that because $omega$ is angular speed, $alpha$ is the rate of change of the angular speed. We can denote the angular velocity and acceleration around some rotational axis $z$:
$
  Delta theta &= theta_(2) - theta_(1)
  \
  omega_("av-"z) &= (Delta theta) / (Delta t) = (2pi) / T = 2pi f
  \
  omega_z &= lim_(Delta t -> 0) (Delta theta) / (Delta t) = drv(theta,t)
  \
  alpha_("av-"z) &= (Delta omega_z) / (Delta t)
  \
  alpha_z &= lim_(Delta t -> 0)(Delta omega_z) / (Delta t) = drv(omega_z,t) = ndrv(theta,t,2)
$

#definition([Angular Kinematic Equations], [
  Given axis of rotation $z$ and constant angular acceleration, the following equations hold:
  $
    omega_z &= omega_(0z) + alpha_z Delta t
    \
    Delta theta &= w_(0z)Delta t + 1/2 alpha_z Delta t^2
    \
    omega_z^2 &= omega_(0z)^2 + 2 alpha_z Delta theta
  $
])

- These are analogous to the kinematic equations we learned in Chapter 2.
- We defined these angular kinematic equations along the $z$-axis because $mag(arrow(theta))$, $mag(arrow(omega))$, and $mag(arrow(alpha))$ are all equal to their $z$-components since the axis of rotation is fixed.
- Consequently, $arrow(theta)$, $arrow(omega)$, and $arrow(alpha)$ are all parallel to the axis of rotation, or in other words, _perpendicular to the plane of rotation_. Specifically, their direction is denoted by the right-hand rule.
- The *right-hand* rule is used to denote the direction of vector products. In this case, you curl your fingers in the direction of rotation (clockwise or counterclockwise) and stick your thumb out. _The direction of your thumb is analogous to the direction of $arrow(omega)$ and $arrow(alpha)$_.

#example([Throwing a Discus], [
  An athlete spins a discus in a circle of radius $r=80.0 "cm"$. At a particular instant, the athlete rotates at $omega=10.0 "rad"slash"s"$, and that angular speed changes at a rate of $50.0 "rad"slash"s"^2$. At this instant, find the tangential and centripetal components of the discus' acceleration, then use those components to find the magnitude.
  #line(length:100%)
  Because we are given the angular speed and acceleration, we are able to find the components of the discus' acceleration using the formulas we just established.
  #table(
    stroke: none,
    columns: (50%, 50%),
    $
      a_c &= omega^2 r
      \
      a_c &= (10 "rad"slash"s")^2(80 "cm" dot (1 "m")/(100 "cm"))
      \
      bold(a_c &= 80.0 "m"slash"s"^2)
    $,
    $
      a_t &= alpha r
      \
      a_t &= (50.0 "rad"slash"s"^2)(80 "cm" dot (1 "m")/(100 "cm"))
      \
      bold(a_t &= 40.0 "m"slash"s"^2)
    $
  )

  Now, it follows that these are the components of the discus' acceleration.
  $
    a &= sqrt(a_c^2 + a_t^2)
    \
    a &= sqrt((80 "m"slash"s"^2)^2 + (40 "m"slash"s"^2)^2)
    \
    bold(a &= 89.4 "m"slash"s"^2)
  $
])

#example([Electric Motor Rotation], [
  At $t = 0$, the current to a DC electric motor is reversed, resulting in an angular displacement of the motor shaft given by $theta(t) = (260 "rad"slash"s")t - (19.2 "rad"slash"s"^2)t^2 - (1.56 "rad"slash"s"^3)t^3$
  + At what time is the angular velocity of the motor shaft zero?
  + Calculate the angular acceleration at the instant that the motor shaft has zero angular velocity.
  + How many revolutions does the motor shaft turn through between the time the current is reversed and the instant the angular velocity is zero?
  + How fast was the motor shift rotating at $t = 0$ when the current was reversed?
  + Calculate the average angular velocity from $t=0$ to when the motor shaft's angular velocity is zero.

  #line(length: 100%)
  1) We can simply find $theta prime (t)$ and find a valid zero of the resulting function.
  $
    theta prime(t) &= dif / (dif t)((260 "rad"slash"s")t - (19.2 "rad"slash"s"^2)t^2 - (1.56 "rad"slash"s"^3)t^3)
    \
    omega (t) &= 260 "rad"slash"s" - 2(19.2 "rad"slash"s"^2)t - 3(1.56 "rad"slash"s"^3)t^2
    \
    0 &= 260 "rad"slash"s" - 2(19.2 "rad"slash"s"^2)t - 3(1.56 "rad"slash"s"^3)t^2
    \
    t&= (38.4 plus.minus sqrt((-38.4)^2 - 4(-4.68)(260)))/(2 (-4.68))
  $
  #table(
    stroke: none,
    columns: (50%, 50%),
    $ t &= -11.6 "s" $, $ bold(t &= 4.41 "s") $
  )

  2) Similarly, we can just find $omega prime (t)$, then use the time we just calculated.
  $
    omega prime (t) &= dif / (dif t)(260 "rad"slash"s" - 2(19.2 "rad"slash"s"^2)t - 3(1.56 "rad"slash"s"^3)t^2)
    \
    alpha (t) &= 38.4 "rad"slash"s"^2 - 6(1.56 "rad"slash"s"^3)t
    \
    alpha (4.41 "s") &= 38.4 "rad"slash"s"^2 - 6(1.56 "rad"slash"s"^3)(4.41 "s")
    \
    bold(alpha(4.41 "s") &= -79.6 "rad"slash"s"^2)
  $

  3) Again, we already calculated this time interval. Thus, we just need to use $theta(t)$.
  $
    theta(4.41 "s") &= (260 "rad"slash"s")(4.41 "s") - (19.2 "rad"slash"s"^2)(4.41 "s")^2 - (1.56 "rad"slash"s"^3)(4.41 "s")^3
    \
    theta (4.41 "s") &= 639 "rad"
    \
    theta (4.41 "s") &= 639 "rad" dot (1 "rev") / (2pi "rad")
    \
    bold(theta (4.41 "s") &= 102 "rev")
  $

  4) Since we've already found $omega(t)$. we can just find its value at $t=0$.
  $
    bold(omega(0) &= 260 "rad"slash"s")
  $

  5) Because we are calculating the average angular velocity, we use $theta(t)$.
  $
    omega_"av" &= (theta(4.41 "s") - theta(0 "s")) / (4.41 "s" - 0 "s")
    \
    bold(omega_"av" &= 145 "rad"slash"s")
  $
])



== Energy in Rotational Motion
- *Moment of inertia* is an object's resistance to angular acceleration, measured in $("kg" dot "m"^2)$.
  - Denoted $I$.
#definition([Moment of Inertia with Point Masses], [
  Given moment of inertia $I$ and point masses $m_i$ on a rigid body, each a distance $r_i$ from the axis of rotation:
  $
    I = sum_(i=1)^N m_i r_i^2
  $
])

- Moment of inertia is applied in a definition for *rotational kinetic energy* $K$ of a rigid body.
#definition([Rotational Kinetic Energy of a Rigid Body], [
  Given kinetic energy $K$, moment of inertia for some rotational axis $I$, and angular speed of rigid body $omega$:
  $
    K = 1/2 I omega^2
  $
])

- Note that this is not different from the kinetic energy we discussed in Chapter 6. Rather, this is the sum of the kinetic energies of the points within a rotating rigid body.
- According to this equation, the more resistant an object is to rotational acceleration, the greater its kinetic energy for some given $omega$.

#definition([Moment of Inertia with Continuous Mass Distributions] ,[
  Given moment of inertia $I$ and the distance of each infinitesimally small mass on the rigid body from the axis of rotation $r$:
  $
    I = integral r^2 dif m
  $
])

- Thus, the axis of rotation chosen can change the calculated moment of inertia.
- Using this formula, we can derive the moments of inertia for common forms.
  - *Slender rod with an axis of rotation through the center ($perp$ to the rod's surface):*
  $
    I = 1/12 M_"tot" L^2
  $

  - *Slender rod with an axis of rotation at one end ($perp$ to the rod's surface):*
  $
    I = 1/3 M_"tot" L^2
  $

  - *Rectangular plate with an axis of rotation through the center:* 
  $
    I = 1/12 M_"tot" (a^2 + b^2)
  $

  - *Thin rectangular plate with an axis of rotation along an edge:*
  $
    I = 1/3 M_"tot" a^2
  $
  \
  - *Hollow cylinder:*
  $
    I = 1/2 M_"tot" (R_1^2 + R_2^2)
  $
  
  - *Solid sphere:*
  $
    I = 2/5 M_"tot" R^2
  $

  - *Hollow sphere:*
  $
    I = 2/3 M_"tot" R^2
  $

#example([Unwinding Cable], [
  A light, nonstretching cable is wrapped around a solid cylinder of mass $50 "kg"$ and diameter $0.120 "m"$ that rotates in frictionless bearings about a stationary horizontal axis. The cable's free end is pulled with a constant $9.0 "N"$ force for a distance of $2.0 "m"$, turning the cylinder as it unwinds without slipping. The cylinder is initially at rest. Find its final angular speed and the final speed of the cable.
  #figure(image("../images/Screenshot 2026-04-06 at 2.48.09 PM.png", width: 40%))
  #line(length: 100%)
  Because we are just given the total mass of the solid cylinder, we can use the derived formula for a cylinder's moment of inertia.
  $
    I &= 1/2m R^2
    \
    I &= 1/2(50 "kg")(0.12 "m" dot 0.5)^2 
    \
    I &= 0.090 "kg"dot"m"^2
  $

  Now that we have the cylinder's moment of inertia, we can solve for the cylinder's final angular speed using the work-energy  theorem and rotational kinetic energy.
  $
    W &= Delta K
    \
    F d cos 90 degree &= 1/2 I omega^2
    \
    (2F d) / I &= omega^2
    \
    omega &= sqrt((2F d) / I)
  $
  #continue_box
])

#example([Unwinding Cable _continued_], [
  $
    
    \
    omega &= sqrt((2 dot 9 "N" dot 2 "m") / (0.090 "kg"dot"m"^2))
    \
    bold(omega &= 20 "rad"slash"s")
  $

  It follows that we can use the cylinder's final angular speed to find the cylinder's final linear speed.
  $
    v &= omega R
    \
    v &= (14.1 "rad"slash"s")(0.12 "m" dot 0.5)
    \
    bold(v &= 1.2 "m"slash"s")
  $
])


=== Gravitational Potential Energy of Extended Bodies
#definition([Gravitational Potential Energy], [
  Given gravitational potential energy $U$, total mass of extended body $M_"tot"$, and vertical coordinate $y_"cm"$:
  $
    U = M_"tot" g y_"cm"
  $
])

- This formula is the same as finding the gravitational potential energy of the masses on an extended body and summing them up.
- _This formula is for any extended body, including non-rigid bodies._

== Parallel-Axis Theorem
#definition([Parallel Axis Theorem], [
  Let $I_P$ denote the moment of inertia about a rotational axis through point $P$, and let $I_"cm"$ denote the moment of inertia about a parallel rotational axis through the center of mass. Additionally, let $M_"tot"$ be the rigid body's total mass and $d$ be the distance between the parallel axes.
  $
    I_P = I_"cm" + M_"tot" d^2
  $
])



== Moment-of-Inertia Derivations
This subchapter will include the derivations for the moments of inertia of different forms given in subchapter 9.2.

#derivation([Rod (at one end)], [
  We can start by establishing a relationship between a rod's linear density and the differential $dif m$. Let $L$ be the length of the rod.
  $
    lambda &= M_"tot" / L = drv(m,L)
    \
    therefore dif m &=lambda dif L
  $

  Nowe, we can apply the moment of inertia formula.
  $
    I &= integral r^2 dif m
    \
    I &= integral r^2 lambda dif L
    \
    I &= lambda integral_0^L r^2 dif r
    \
    I &= lambda eval(1/3 r^3, 0, L)
    \
    I &= lambda (1/3 L^3)
    \
    I &= (M_"tot" / L) (1/3 L^3)
    \
    I &= 1/3 M_"tot" L^2
  $
])

#derivation([Rod (at the center)], [
  We can start by establishing a relationship between a rod's linear density and the differential $dif m$. Let $L$ be the length of the rod.
  $
    lambda &= M_"tot" / L = drv(m,L)
    \
    therefore dif m &=lambda dif L
  $

  Nowe, we can apply the moment of inertia formula.
  $
    I &= integral r^2 dif m
    \
    I &= integral r^2 lambda dif L
    \
    I &= lambda integral_(-L slash 2)^(L slash 2) r^2 dif r
    \
    I &= lambda eval(1/3 r^3, -L slash 2, L slash 2)
    \
    I &= lambda (1/3 (L/2)^3 - 1/3 (-L/2)^3)
    \
    I &= lambda (1/12 L^3)
    \
    I &= (M_"tot" / L) (1/12 L^3)
    \
    I &= 1/12 M_"tot" L^2
  $
])

#derivation([Cylinder], [
  We can start by establishing a relationship between a cylinder's volume density and the differential $dif m$. Let $r_2$ be the outer radius and $r_1$ be the inner radius.
  $
    rho &= M_"tot" / V = M_"tot" / (pi (r_2^2 - r_1^2) L) = drv(m, V) = (dif m)/ (2pi r L dif r )
    \ 
    therefore d m &= rho dif V = rho (2pi r L dif r)
  $

  Now, we can apply the moment of inertia formula.
  $
    I &= integral r^2 dif m
    \
    I &= integral r^2 rho dif V
    \
    I &= integral r^2 rho (2pi r L dif r)
    \
    I &= rho 2pi L integral_(r_1)^(r_2) r^3 dif r
    \
    I &= rho 2pi L eval(1/4 r^4, r_1, r_2)
    \
    I &= 1/2 rho pi L (r_2^4 - r_1^4)
    \
    I &= 1/2 (M_"tot" / (pi (r_2^2-r_1^2) L)) pi L  (r_2^2 + r_1^2)(r_2^2 - r_1^2)
    \
    I &= 1/2 M_"tot" (r_2^2 +r_1^2)
  $
])

#derivation([Solid Sphere], [
  We can start by establishing a relationship between a solid sphere's volume density and the differential $dif m$. Let $R$ be the radius of the sphere.
  $
    rho &= M_"tot"/V  = M_"tot" / (4/3 pi R^3) = drv(m, V) = (dif m) / (4pi r^2 dif r)
    \
    therefore dif m &= rho dif V = rho 4pi r^2 dif r
  $

  Now, we can apply the moment of inertia formula.
  $
    I &= integral r^2 dif m
    \
    I &= integral r^2 rho dif V
    \
    I &= integral r^2 rho (4pi r^2 dif r)
    \
    I &= rho 4pi integral_0^R r^4 dif r
    \
    I &= rho 4pi eval(1/5 r^5, 0, R)
    \
    I &= rho 4pi (1/5 R^5)
    \
    I &= (M_"tot" / (4/3 pi R^3)) 4pi (1/5 R^5)
    \
    I &= 3/5 M_"tot" R^2
  $
])



#pagebreak()