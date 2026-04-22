#import "template.typ": *

= Equilibrium and Elasticity

== Conditions for Equilibrium
- A particle is in *equilibrium* if it does not accelerate and has no tendency to rotate.

#definition([Equilibrium Conditions], [
  We say that an object is in equilibrium if the following conditions on _any_ point in the object are satisfied:
  $
    Sigma arrow(F) &= 0
    \
    Sigma arrow(tau) &= 0
  $
])

- When a rigid body at rest is evaluated to be in equilibrium under these conditions, we specify that it is in *static equilibrium*.



== Center of Gravity
- Given that the decrease in weight force exerted across an object decreases at higher altitudes is negligible, we can say that the center of mass is the same as the *center of gravity (cg)*.
- We can calculate the torque due to weight force by assuming that a singular weight force acts on the object's center of gravity.
- We can prove this using our vector definition for center of mass:
$
  arrow(tau)_g &= sum_(i=1)^N arrow(tau_i) = sum_(i=1)^N (arrow(r_i) times m_i arrow(g)) = sum_(i=1)^N (m_i arrow(r_i)) times arrow(g) 
  \
  &= (sum_(i=1)^N (m_i arrow(r_i)))/(sum_(i=1)^N m_i) times M_"tot" arrow(g)
  \
  &= arrow(R)_"cm" times arrow(w)
$

- The center of gravity of simple uniform objects is at their center. If additional forces applied, we can counterbalance them with forces using torque principles we learned in chapter 10.
- For more complicated objects, we can imagine an axis through a point of suspension. Now, the center of gravity must be on this axis for the net torque on the hanging object to be zero, so we can _suspend the object from another point, and the resulting intersection of suspension axes will yield the center of gravity._
- Applying this to real life, an object with several points of support must have a center of gravity within the bounds of its supports. An object will be overturned if its center of gravity exits these bounds due to torque.
- Consequently, objects with larger footprints and lower centers of gravity are harder to overturn.



== Elasticity and Plasticity



#pagebreak()