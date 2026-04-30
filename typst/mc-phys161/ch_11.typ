#import "../../presets.typ": *

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

#example[Suspended Crate][
  In each case, let $w$ be the weight of the suspended crate. The strut is uniform and also has weight $w$. 

  #figure(image("../../images/mc-phys161/YF-11-26.jpg"))

  + In arrangement $(a)$, find the horizontal cable's tension in terms of $w$.
  + In arrangement $(a)$, find the magnitude of the pivot force in terms of $w$.
  #line(length: 100%)
  1) Let the point of contact with the wall be the reference point for the torque. We first define the vertical tension in terms of weight.
  $
    Sigma F_y = T_C - w &= 0
    \
    T_C &= w
  $

  Now, the net torque equation is solely comprised of $T_a$ and $w$.
  $
    Sigma tau_a &= 0
    \
    tau_T - tau_g - tau_C &= 0
    \
    T_a L sin(150 degree) - w L/2 sin(60 degree) - w L sin(60 degree) &= 0
    \
    T_a &= (3w sin(60 degree)) / (2 sin(150 degree))
    \
    bold(T_a &= (3sqrt(3))/2w)
  $
  #continue_box
]

#example-box[Suspended Crate _continued_][
  2) We can find $F_(a x)$ in terms of $w$ using our derived $T_a$.
  $
    Sigma F_x = F_(a x) - T_a &= 0
    \
    F_(a x) &= (3 sqrt(3))/2 w
  $

  Similarly, we can find $F_(a y)$ in terms of $w$ using our derived $T_C$.
  $
    Sigma F_y = F_(a y) - w - T_C -  &= 0
    \
    F_(a y) &= 2 w
  $

  Now, we can find the magnitude of $F_a$.
  $
    F_a &= sqrt(F_(a x)^2 + F_(a y)^2)
    \
    F_a &= sqrt(((3sqrt(3))/2 w)^2 + (2w)^2)
    \
    bold(F_a &= sqrt(43)/2 w)
  $

  #line(length: 100%)
  #enum.item(3)[In arrangement $(b)$, find the horizontal cable's tension in terms of $w$.]
  #enum.item(4)[In arrangement $(b)$, find the magnitude of the pivot force in terms of $w$.]
  #line(length: 100%)
  3) Like in the previous example, the tension of the vertical cord is equal to $w$. Now, if we let the point of contact with the ground be the reference point for the torque and calculate the angle between the strut and the diagonal cord ($15 degree$), we can find $T_b$.
  $
    Sigma tau_b &= 0
    \
    tau_T - tau_g - tau_C &= 0
    \
    T_b L sin(165 degree) - w L/2 sin(45 degree) - w L sin(45 degree) &= 0
    \
    T_b &= (3 w sin(45 degree))/(2 sin(165 degree))
    \
    T_b &= (3 w sin(45 degree))/(2 sin(165 degree))
    \
    bold(T_b &= 4.09w)
  $
  
  4) We can find $F_(b x)$ using our derived $T_b$.
  $
    Sigma F_x = F_(b x) - T_(b x) &= 0
    \
    F_(b x) &= 4.09w cos(30 degree) =3.55w
  $
  #continue_box
]

#example-box[Suspended Crate _continued_][
  Similarly, we can find $F_(b y)$ in terms of $w$ using our derived $T_C$ and $T_b$.
  $
    Sigma F_y = F_(b y) - w - T_C - T_b &= 0
    \
    F_(b y) &= 2 w + 4.09w sin(30 degree)
    \
    F_(b y) &= 4.05w
  $

  Now, we can find the magnitude of $F_b$.
  $
    F_b &= sqrt(F_(b x)^2 + F_(b y)^2)
    \
    F_b &= sqrt((3.55w)^2 + (4.05w)^2)
    \
    bold(F_b &= 5.38w)
  $
]

#example[Bicycle Wheel][
  You are trying to raise a bicycle wheel of mass $m$ and radius $R$ up and over a curb of height $h$. To do this you apply a horizontal force $arrow(F)$ toward the cub.
  + What is the least magnitude of the force $arrow(F)$ that will succeed in raising the wheel onto the curb when the force is applied at the center of the wheel?
  + What is the least magnitude of the force $arrow(F)$ that will succeed in raising the wheel onto the curb when the force is applied at the top of the wheel?

  For both questions, answer in terms of $m$, $g$, $h$, and $R$.
  #line(length: 100%)

  1) Because the bicycle wheel is being raised over the curb with a minimum force $F$, it rotates about the point of of contact with the curb with a net torque of zero. When this happens, the only forces applying torque are $arrow(F)$ and gravity.
  $
    Sigma tau_z = m g R sin(theta)-F R sin (90-theta) = 0
    \
    F R cos(theta) = m g R sin(theta)
    \
    F = m g tan(theta)
  $

  We can find the ratio of $tan (theta)$ in terms of $R$ and $h$ using the radial distance $R$ to the corner of the curb as the hypotenuse of a right triangle.
  It follows that one of the legs is $R-h$, the vertical distance from the wheel's center to the curb's corner.
  Then, by the pythagorean theorem, the length of the other leg is $sqrt(R^2 - (R-h)^2) = sqrt(2 R h - h^2)$.
  $
    bold(F &= m g sqrt(2 R h - h^2) / (R-h))
  $
  #continue_box
]

#example-box[Bicycle Wheel _continued_][
  2) The vertical distance from the top of the wheel to the curb's corner is $R_("top-"y) = 2R-h$. Now, $sin(theta) = R_(x)/R$, while  $sin(phi.alt) = R_("top-"y)/R_"top"$. Thus, we do not have to find the distance $R_"top"$ because it will cancel out.
  $
    Sigma tau_z &= m g R sin(theta) - F R_"top" sin(phi.alt) = 0
    \
    F R_"top"  sin(phi.alt) &= m g R sin(theta)
    \
    F R_"top" ((2R - h)/R_"top") &= m g R (sqrt(2R h - h^2)/R)
    \
    F (2R - h) &= m g sqrt(2R h - h^2)
    \
    bold(F &= m g sqrt(2R-h^2)/(2R h - h))
  $
]



== Stress, Strain, and Elastic Moduli
- *Stress* is the measure of forces causing a deformation, generally in 
- *Strain* refers to the deformations caused by stress.
- By *Hooke's Law*, the strength of a force is proportional to the strength of the deformations.
#definition[Hooke's Law][
  *Elastic modulus* represent the ratio of stress to strain.
  $
    "Stress"/"Strain" &= "Elastic modulus"
  $
]

- Now, Hooke's law is not a general law, as it only applies to smaller stresses and strains.
- Elastic modulus is dependent on the material of an object, not the shape or size.
- A material is *elastic* if deformations do not persist after the stress is removed.
- A material is *plastic* if deformations remain after the stress is removed.

=== Tensile and Compressive Stress and Strain
- An object is in *tension* when being stretched.
- *Tensile stress* refers to the forces deforming an object in tension, measured in pascals $("Pa")$ or $("N"slash"m"^2)$.
- *Compressive stress* refers to the forms deforming an object through compression, also measured in $("Pa")$.
- Pascals are also the unit of _pressure_.
- *Tensile strain* refers to the deformations an object in tension experiences.
- *Compressive strain* refers to the deformations a compressed object experiences.

#definition[Stress][
  Let $F_perp$ be the force acting perpendicular to cross-sectional area $A$.
  #table(columns: (50%, 50%), stroke: none,
    align(center)[If $F_perp$ acts outward:], align(center)[If $F_perp$ acts inward:],
    $
      "Tensile stress" &= F_perp/A
    $,
    $
      "Compressive stress" &= F_perp/A
    $
  )
]
#note-block[
  Stress is a _scalar quantity_ because $F_perp$ refers to a magnitude.
]

#definition[Tensile Strain][
  Let $Delta l$ be the change in the deformed object's length and $l_0$ be the object's original length.
  
  #table(columns: (50%, 50%), stroke: none,
    align(center)[If $Delta l$ represents an elongation:], align(center)[If $Delta l$ represents a compression:],
    $
      "Tensile strain" = (Delta l)/l_0
    $,
    $
      "Compressive strain" = (Delta l)/l_0
    $,
  )
]
#note-block[
  Strain is dimensionless because it is a ratio of two lengths.
]

#definition[Young's Modulus][
  Let $Y$ be *Young's modulus* and let the other variables follow the definitions described in definitions (11.4.2) and (11.4.3):
  $
    Y = "Tensile stress"/"Tensile strain" = (F_perp slash A)/(Delta l slash l_0) = F_perp/A (Delta l)/l_0
  $
]


#important-block[
  Definitions (11.4.1) and (11.4.4) also hold true for compressive strain and stress if the compressive stress is small.
]
- Some materials are resistant compressive stress but falter against similar tensile stress and vice versa.



== Elasticity and Plasticity
- When observing larger stresses and strains, we graph stress as a function of strain.
- Strain is generally shown as the _percent elongation_.
- The point on a stress versus strain graph where the slope is no longer constant is known as the *proportional limit* because that is the last point where Hooke's law applies.