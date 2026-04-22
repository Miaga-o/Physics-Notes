#import "template.typ": *

= Applying Newton's Laws
== Types of Forces
- *Fundamental forces* are the four natural interactions that govern how particles interact.
  - *Weight*
  - Electromagnetic
  - Weak nuclear
  - Strong nuclear
- *Non-fundamental forces* are forces whose interactions are derived from the fundamental forces.
  - *Spring*
  - *Contact* (tension, normal, friction, ...)
  - Microscopic
- The *weight* force is from gravity. On Earth, it is defined as follows:
$
  arrow(w)=m arrow(g)
$
- However, there also exists a general definition for weight force, the *Universal Law of Gravitation* using the gravitational constant $G$:
$
  G = 6.6743 times 10^(-11) space "m"^3 dot "kg"^(-1) dot "s"^(-1)
$
#definition([Universal Law of Gravitation], [
  The force between any two objects is defined as follows, given that $r$ is the _distance between the objects' centers_:
  $
    F_1 = F_2 = G (m_1 m_2) / r^2
  $
])

- The *spring force* is from compressing a spring.
  - Springs have differing *spring constants* usually denoted as $k$, and they define the ratio between the force exerted by the spring and the distance compressed from the equilibrium position.
$
  arrow(F)_"spr" = -k arrow(x)
$
- The *normal force* is exerted by a surface on an object.
  - Generally denoted $arrow(n)$.
- The *tension force* is the pulling force exerted equally throughout a rope, cable, etc.
  - Generally denoted $arrow(T)$.
- The *friction force* is exerted by a surface on an object and acts perpendicular to the normal force. It depends on the roughness of the surface (expressed by the coefficient of friction).
  - *Kinetic friction*, denoted $arrow(f)_k$ with coefficient of kinetic friction $mu_k$, acts on objects sliding across a surface.
  $
    arrow(f)_k = mu_k arrow(n)
  $
  - *Static friction*, denoted  $arrow(f)_s$ with coefficient of static friction $mu_s$, acts on still objects until the applied force exceeds the maximum static friction.
  $
    arrow(f)_s <= arrow(f)_(s",max") = mu_s arrow(n)
  $




== Forces in Equilibrium
- Objects are in equilibrium when they are at rest or moving with constant velocity, meaning that the net force acting on those objects must be zero.
$
  Sigma arrow(F) &= 0 \
$
- A common example of forces in equilibrium is an object sitting on a horizontal surface. The net vertical force is zero because the magnitude of the normal force and the weight force are equal.



== Dynamics of Particles
- Using Newton's second law, we can set all forces (or components of forces) equal to mass times acceleration and solve for unknowns accordingly.
- Signs can indicate the direction, but you have to be consistent.
  - In *pulley problems*, direction should be based on the direction of the pulley's cord.
  - In *incline problems*, the $x$-axis should be parallel to the incline and the $y$-axis should be perpendicular to the incline.
    - Consequently, when given the angle of the incline, sine is used to find the $x$-component of weight and cosine is used to find the $y$-component of weight because weight will not be perpendicular to the incline.
- Sometimes, normal force can be referred to as *apparent weight* because the magnitude may be less than or greater than the opposing weight force.
  - For instance, you feel _heavier_ when you are in an elevator moving up because your normal force is greater than your weight force and vice versa.
  $
    n=m(g+a_y)
  $
#example([Table Pulley], [
  Block B with mass $m_B = 5.0 "kg"$ rests on block A, with mass $m_A = 8.0 "kg"$, which is on a horizontal frictionless tabletop. The coefficient of static friction between block A and block B is $mu_s = 0.75$. A string attached to block A passes over a massless, frictionless pulley at the edge of the tabletop, and block C is suspended from the other end of the string and is released from rest.
  + Write Newton's second law for each of the three blocks in both directions.
  + Find the largest mass that block C can have so that blocks A and B slide together when the system is released from rest.
  #line(length: 100%)
  1) Along the direction of the pulley, the vertical forces acting on block A and B are irrelevant.
  $
    Sigma F_A &= T - f_s
    \
    Sigma F_B &= f_s
    \
    Sigma F_C &= m_C g - T
  $
  2) Now, blocks A and B will slip once the maximum static friction is exceeded, so we can use their net force equations to find the acceleration of the system when $m_C$ is maximized.
  $
    m_B a &= mu_s m_B g
    \
    a &= mu_s g 
    \
    a &= (0.75)(9.81 "m"slash"s"^2) = 7.36 "m"slash"s"^2
  $
  #continue_box
])

#example([Table Pulley _continued_], [
  Using this, we can find an expression for $T$. 
  $
    T - f_s + f_s &= (m_A + m_B) a
    \
    T &= (m_A + m_B) a
  $
  With both acceleration and tension found, we can now solve for the maximum mass of C.
  $
    m_C a &= m_C g - T
    \
    m_C a &= m_C g - (m_A + m_B) a 
    \
    m_C a - m_C g &= - (m_A + m_B) a 
    \
    m_C &= - ((m_A + m_B) a ) / (a-g)
    \
    m_C &= -((8 "kg" + 5 "kg")(7.36 "m"slash"s"^2)) / (7.36 "m"slash"s"^2 - 9.81 "m"slash"s"^2)
    \
    bold(m_C &= 39 "kg")
  $
])



== Dynamics of Circular Motion
- Based on Newton's Second Law, circular motion can result from many different forces.
$
  Sigma F = m a_c = (m v^2) / R
$
- As a result, denoting a singular "centrifugal force" is generally not accurate.
  - For example, if an object is moving vertically with uniform circular motion, the weight force points toward the center of rotation at the top, but away from the center of rotation at the bottom.
- Additionally, direction should be considered relative to the center of rotation---generally, the positive direction is toward the center.
- Additionally, problems involving *circular motion of vehicles* have less obvious forces contributing to the circular motion.
  - Along a curved road with friction, _static friction is what maintains the vehicle's circular motion_ because at any given moment, the tires of the car are stationary relative to the pavement.
  - Along a banked curve without friction (sort of like an inclined plane from the inner curve to the outer curve), _the $x$-component of the normal force is what maintains the vehicle's circular motion_.
#example([Rounding a Flat Curve], [
  A sports car is rounding a flat, unbanked curve with radius $R$. If the coefficient of static friction between the tires is $mu_s$, what is the maximum speed $v_"max"$ the driver can complete the curve without sliding off?
  #line(length: 100%)
  Here, the only force contributing to the circular motion is static friction, so we can just use the given formula for maximum static friction to find $v_max$.
  #continue_box
])

#example([Rounding a Flat Curve _continued_], [
  $
    m a_c &= f_s
    \
    (m v_"max"^2) / R &= mu_s m g 
    \
    bold(v_"max" &= sqrt(R mu_s g))
  $
  Note that the maximum speed needed is not based on the mass of the vehicle at all.
])

#example([Rounding a Banked Curve], [
  You are planning to create a road banked at the perfect angle to allow cars to complete turns without friction. At what angle $alpha$  should the road be banked to allow for this?
  #line(length:100%)
  We can imagine this from a straight back perspective of the car. While similar to an inclined plane problem, we are evaluating components parallel to the horizontal rather than the incline. As a result, the only inward force is the $x$-component of the normal force because the curve is banked from the inside-out. 
  
  Now, because the normal force and its $y$-component are perpendicular to the respective sides forming the angle $alpha$, _the angle between them is also equal to $alpha$_. Thus, the $x$-component of the normal force is the component opposite of $alpha$ while the $y$-component of the normal force is the component adjacent of $alpha$.
  $
    n_y &= m g 
    \
    n cos alpha &= m g 
    \
    n &= (m g) / (cos alpha)
  $
  Using this value of $n$, we can now solve for the angle.
  $
    n_x &= (m v^2) / R
    \
    n sin alpha &= (m v^2) / R 
    \
    m g (sin alpha) / (cos alpha) &= (m v^2) / R 
    \
    m g tan alpha &= (m v^2) / R 
    \
    tan alpha &= v^2 / (R g)
    \
    bold(alpha &= arctan(v^2 / (R g)))
  $
])

#pagebreak()