#import "presets.typ": *

= Equilibrium and Elasticity

== Conditions for Equilibrium
- A particle is in *equilibrium* if it does not accelerate and has no tendency to rotate.

#definition[Equilibrium Conditions][
  We say that an object is in equilibrium if the following conditions on _any_ point in the object are satisfied:
  $
    Sigma arrow(F) &= 0
    \
    Sigma arrow(tau) &= 0
  $
]

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



== Rigid Body Equilibrium Problems
- We will cover problems with forces acting a singular plane, generally the $x y$-plane. Thus, only the following conditions will matter:
$
  Sigma F_x = 0 quad&quad Sigma F_y &= 0
  \ Sigma tau_z &= 0
$

- Additionally, there are many possible reference points to calculate torque with respect to, so consider points that lead to simpler calculations.

#example[Center of Gravity during a Plank][
  A $1.8 "m"$ tall athlete measured that $66.0%$ of his weight was supported by his forearms while $34.0%$ of his weight was supported by his toes by maintaining a plank position on two scales. If the distance between his toes and the middle of his forearms is $1.53 "m"$, how far are his toes from his center of gravity?

  #line(length: 100%)
  Like we established earlier, we can imagine a singular weight force $w$ acting on the center of gravity. Additionally, using the weight percentages provided by the problem, we can express the normal forces in terms of the weight.
  Let $L$ denote the distance between the athlete's toes and the middle of his forearms.
  $
    Sigma tau_z = - n_t R_t sin(90 degree) + n_f R_f sin(90 degree)+ w sin(0 degree) &= 0
    \
    -n_t R_t + n_f R_f &= 0
    \
    -(0.34 w) R_t + (0.66w) (L - R_t) &= 0
    \
    0.66w L - w R_t &= 0
    \
    0.66  w L &= w R_t
    \
    R_t &= 0.66 L = 0.66(1.53 "m")
    \
    bold(R_t &= 1.01 "m")
  $
]



== Elasticity and Plasticity
- *Stress* is the measure of forces causing a deformation, generally in 
- *Strain* refers to the deformations caused by stress.
- By *Hooke's Law*, the strength of a force is proportional to the strength of the deformations.
#definition[Hooke's Law][
  *Elastic modulus* represent the ratio of stress to strain.
  $
    "Stress"/"Strain" &= "Elastic modulus"
  $
]

- The definition of the spring force was a form of Hooke's Law.
- Elastic modulus is dependent on the material of an object, not the shape or size.
- A material is *elastic* if deformations do not persist after the stress is removed.
- A material is *plastic* if deformations re  main after the stress is removed.



== Elasticity and Plasticity