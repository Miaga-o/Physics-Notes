#import "template.typ": *

= Dynamics of Rotational Motion
- We established in earlier chapters that forces induce acceleration in objects.
- It follows that forces also induce angular acceleration in objects, but they specifically have to cause twisting or turning.

== Torque
- *Torque* is the tendency of a force to cause or change's an object's rotational motion, measured in newton-meters $("N" dot "m")$.
  - Denoted $tau$.
  - Torque is a vector quantity in the same direction as the $arrow(alpha)$.
  - While this is technically the same unit used by energy, the context is different.
- Torque is caused by a force acting along its *line of action* on an object some perpendicular distance from the reference point known as the *lever arm* or *moment arm*.

#definition([Torque], [
  Given torque $arrow(tau)$, force $arrow(F)$, and lever arm $r$:
  $
    arrow(tau) &= arrow(r) times arrow(F) = r F sin(theta) hat(n)_perp
    \
    tau &= r F sin(theta)
  $
])

- Generally, torque that causes counterclockwise rotation is positive while torque that causes clockwise rotation is negative.
- Similar to other angular quantities, we often refer to torque as its component along the rotational axis, usually the $z$-axis.



== Torque and Angular Acceleration
- Because force and linear acceleration are related to torque and angular acceleration, respectively, by a perpendicular distance from the origin, we can use Newton's second law to establish a relationship between torque and angular acceleration.

#definition([Rotational Analog of Newton's Second Law], [
  Let all values reference some rigid body which rotates about a rotational axis $z$. Given net torque $Sigma tau_z$, moment of inertia $I$, and angular acceleration $alpha_z$:
  $
    Sigma tau_z &= I alpha_z
  $
])



== Rotation About a Moving Axis
- If a rigid body's rotational axis is moving, we describe it using both its translational motion and its rotational motion.
$
  K_"tot" &= K_"cm" + K_"rot-cm"
  \
  K_"tot" &= 1/2 M_"tot" v_"cm"^2 + 1/2 I_"cm"omega^2
$

=== Rolling without Slipping
- When an object *rolls without slipping*, its point of contact with the surface it rolls on should be at rest. Thus, the velocity at the point of contact must be equal and opposite of the velocity of the center of mass.
- Thus, for these cases, the following must hold true (given radius $R$, speed of the center of mass $v_"cm"$, and angular speed $omega$):
$
  v_"cm" &= R omega
$



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

#definition([Work in Rotational Motion], [
  Given work $W$, torque $tau_z$, and angular positions $theta_1$ and $theta_2$:
  $
    W = integral_(theta_1)^(theta_2) tau_z dif theta
  $
])
- By taking the derivative with respect to time from both sides, we can also reach a definition for power in rotational motion.

#definition([Power in Rotational Motion], [
  Given power $P$, torque $tau_z$, and angular velocity $omega_z$:
  $
    P &= tau_z omega_z
  $
])



== Angular Momentum
- The rotational analog of a particle's momentum is its *angular momentum*, measured in \ $("kg"dot"m"^2 slash"s")$.
  - Denoted $L$.
  - Its relationship to momentum is analogous to torque's relationship to force.

#definition([Angular Momentum], [
  Given angular moment $arrow(L)$, position vector $arrow(r)$ (relative to some reference point), and momentum $arrow(p)$:
  $
    arrow(L) &= arrow(r) times arrow(p) = arrow(r) times m arrow(v)
  $
])

- Recall that the derivative of momentum with respect to time is force.
- Thus, we can also say that the _derivative of linear momentum with respect to time is torque from the net force_.
$
  drv(arrow(L), t) &= arrow(r) times drv(arrow(p), t)
  \
  drv(arrow(L), t) &= arrow(r) times arrow(F)
  \
  drv(arrow(L), t) &= arrow(tau)
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

#definition([Angular Momentum on a Rigid Body], [
  On some rigid body, given angular momentum $arrow(L)$, moment of inertia $I$, and angular velocity $arrow(omega)$:
  $
    arrow(L) &= I arrow(omega)
  $
])

- This definition supports the previous relationship we established between torque and the derivative of angular momentum with respect to time, as $dif arrow(omega) slash dif t = arrow(alpha)$.



== Conservation of Angular Momentum
#definition([Conservation of Angular Momentum], [
  We say that a system's total angular momentum is _conserved_ if the system's net external torque is zero.
])
- Similarly to the conservation of momentum, the internal torques exerted between system particles change their individual angular momenta, but _do not impact the system's total angular momentum_.
- This is a direct consequence of Newton's third law.



#pagebreak()