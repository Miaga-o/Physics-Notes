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
  omega_("av-"z) &= (Delta theta) / (Delta t)
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
    I = integral r dif m
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

  - *Hollow cylinder:*
  $
    I = 1/2 M_"tot" (R_1^2 + R_2^2)
  $
  \ \
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
    \
    omega &= sqrt((2 dot 9 "N" dot 2 "m") / (0.090 "kg"dot"m"^2))
    \
    bold(omega &= 20 "rad"slash"s")
  $
  #continue_box
])

#example([Unwinding Cable _continued_], [
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
  Given moment of inertia $I_P$, moment of inertia through a parallel axis at the center of mass $I_"cm"$, total mass of rigid body $M_"tot"$, and distance between parallel axes $d$:
  $
    I_P = I_"cm" + M_"tot" d^2
  $
])



=== Moment-of-Inertia Derivations
- Extra derivations.



#pagebreak()