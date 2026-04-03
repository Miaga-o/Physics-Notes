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
- Note that $theta$, $omega$, and $alpha$ are _vector quantities_.
- Given axis of rotation $z$:
$
  Delta theta_z &= theta_(2z) - theta_(1z)
  \
  omega_("av-"z) &= (Delta theta_z) / (Delta t)
  \
  omega_z &= lim_(Delta t -> 0) (Delta theta_z) / (Delta t) = drv(theta_z,t)
  \
  alpha_("av-"z) &= (Delta omega_z) / (Delta t)
  \
  alpha_z &= lim_(Delta t -> 0)(Delta omega_z) / (Delta t) = drv(omega_z,t) = ndrv(theta_z,t,2)
$

#definition([Angular Kinematic Equations], [
  Given axis of rotation $z$ and constant angular acceleration, the following equations hold:
  $
    omega_z &= omega_(0z) + alpha_z Delta t
    \
    Delta theta_z &= w_(0z)Delta t + 1/2 alpha_z Delta t^2
    \
    omega_z^2 &= omega_(0z)^2 + 2 alpha_z Delta theta_z
  $
])

- These are analogous to the kinematic equations we learned in Chapter 2.
- We defined these angular kinematic equations along the $z$-axis because $mag(arrow(theta))$, $mag(arrow(omega))$, and $mag(arrow(alpha))$ are all equal to their $z$-components since the axis of rotation is fixed.
- Consequently, $arrow(theta)$, $arrow(omega)$, and $arrow(alpha)$ are all parallel to the axis of rotation, or in other words, _perpendicular to the plane of rotation_. Specifically, their direction is denoted by the right-hand rule.
- The *right-hand* rule is used to denote the direction of vector products. In this case, you curl your fingers in the direction of rotation (clockwise or counterclockwise) and stick your thumb out. _The direction of your thumb is analogous to the direction of $arrow(omega)$ and $arrow(alpha)$_.



== Energy in Rotational Motion
- *Moment of inertia* is an object's resistance to angular acceleration, measured in $("kg" dot "m"^2)$.
  - Denoted $I$.
#definition([Moment of Inertia], [
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



== Parallel-Axis Theorem



== Moment of Inertia Calculations

#pagebreak()