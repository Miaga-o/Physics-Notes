#import "template.typ": *

= Potential Energy and Energy Conservation
- *Potential energy* is energy based on position, and may be _converted_ into other forms of energy depending on the change in position.
  - For example, a fruit hanging from a tall tree has the _potential_ to reach a higher speed (and therefore kinetic energy) before it hits the ground than a fruit hanging from a smaller tree.

== Gravitational Potential Energy
- *Gravitational potential energy* is potential energy dependent on an object's mass and height above the ground.
  - Denoted $U_g$.
#definition([Gravitational Potential Energy], [
  Given gravitational potential energy $U_g$, object's mass $m$, acceleration due to gravity $g$, and height above the ground $h$
  $
    U_g = m g h
  $
])

- Notice how an object's gravitational potential energy _decreases_ as its height above the ground decreases, even though the work done by the weight force on a falling object is _positive_.
- Thus, the work done by gravity is equal to the negative change in gravitational potential energy.
$
  W_g = - Delta U_g
$



== Elastic Potential Energy
- *Elastic potential energy* is potential energy stored in deformable objects such as springs when they are stretched or compressed from equilibrium.
  - Denoted $U_s$.
#definition([Elastic Potential Energy], [
  Given elastic potential energy $U_s$, spring constant $k$, and elongation of object $x$
  $
    U_s = 1/2 k x^2 
  $
])

- Similarly to work done by gravity, because an object's elastic potential energy increases the more it is displaced from equilibrium, the work done by the spring force is equal to the negative change in elastic potential energy.
$
  W_s = - Delta U_s
$



== Conservative and Nonconservative forces
- *Mechanical energy* is energy that is either kinetic or potential.
- *Conservative forces* do work independent of the path, meaning that they only depend on the endpoints of the displacement.
  - The work done by conservative forces is reversible because they convert between forms of mechanical energy.
- *Nonconservative forces* do work dependent on the path.
  - The work done by nonconservative forces is irreversible because they convert forms of mechanical energy to other forms of energy.

=== The Law of Conservation of Energy
- Thus, as long as the net work done by nonconservative forces in a system is zero, the change in total mechanical energy is zero.
- As a result, we can equate the total mechanical energy at different points in a system.
- Thus, work done by nonconservative forces should be subtracted.
#definition([Law of Conservation of Energy], [
  Given kinetic energy $K$, potential energy $U$, and work from nonconservative forces $W_"nc"$
  $
    Delta K + Delta U - W_"nc" = 0
  $
])

- For conservation of energy problems, the following form is often used:
$
  K_1 + U_1 + W_"nc" = K_2 + U_2
$
- Nonconservative forces may also be represented using *internal energy* $U_"int"$ such that the internal energy changes when external forces do work on the system.
$
  Delta U_"int" = -W_"nc"
$
#example([Block on a Globe], [
  A small block of mass $m$ sits on top of a globe with radius $R$. The small block begins sliding from the top of the globe with negligible speed. The block leaves the surface of the globe when it reaches a height $h_"crit"$ above the ground.
  Derive a formula for $v_"crit"$, the speed of the block the moment it falls off the globe, in terms of $R$, $h_"crit"$, and $g$.
  #figure(image("/images/MWE_we_9.jpg", width: 31%))
  #line(length: 100%)
  
  The first step is to identify two points in the system that would include the desired terms. One of them should be when the block is falling off because it is at height $h_"crit"$. The other point should be at the top of the globe because the height above the ground is just the diameter of the globe.
  $
    1/2 m v_"crit"^2 + m g h_"crit" &= m g (2R)
    \
    1/2 m v_"crit"^2 &= m g (2R) - m g h_"crit"
    \
    v_"crit"^2 &= 4g R - 2 g h_"crit"
    \
    bold(v_"crit" &= sqrt(4g R - 2 g h_"crit"))
  $
])

#example([Throwing a  Baseball], [
  The maximum horizontal distance you can throw a $0.145 "kg"$ baseball is $25 "m"$ at an angle of $alpha = 45 degree$ above the horizontal.
  
  + Ignoring air resistance and the small distance the baseball is above the ground when it is thrown, what is the kinetic energy of the baseball the moment it is thrown?
  + At the ball's maximum height, what fraction of its total mechanical energy is kinetic energy?

  #line(length: 100%)
  1) Because we are given the range of the baseball but not the initial velocity, we can use our previously derived range formula to find the initial velocity.
  $
    R &= (v_0^2 sin (2 alpha)) / g
    \
    v_0^2 &= (R g) / sin(2 alpha)
    \
    v_0 &= sqrt((R g) / sin(2 alpha))
    \
    v_0 &= sqrt(((25 "m")(9.81 "m"slash"s"^2)) / (sin 90 degree))
    \
    v_0 &= 15.7 "m"slash"s"
  $
  Now we can plug this back into the kinetic energy formula.
  $
    K_0 &= 1/2 m v_0 ^2
    \
    K_0 &= 1/2 (0.145 "kg")(15.7 "m"slash"s")^2
    \
    bold(K_0 &= 17.8 "J")
  $



  2) Because we know that the vertical component of the velocity vector is zero at the highest point in its trajectory, the velocity at the maximum height is just the horizontal component.
  $
    K_1 &= 1/2 m v_1^2
    \
    K_1 &= 1/2 m v_0^2 cos^2 (45 degree)
    \
    K_1 &= 1/2 m v_0^2 (1/2)
    \
    K_1 &= 1/2 K_0 = 1/2 E_"tot"
    \
    bold(K_1 / E_"tot" &= 1/2)
  $
])

#example([Rough Patch], [
  A small block is sent through point A with a speed of $7 "m"slash"s"$. 
  Point A is at height $h_1 = 6 "m"$.
  The block then slides down to point B, which is at a height of zero. 
  After that, the block slides up to point C at a height of $h_2 = 2 "m"$.
  Past point C is a rough patch of length $L = 12 "m"$ with a coefficient of kinetic friction $mu_k = 0.7$.

  If point D is just beyond the rough section, will the block be able to reach it? If not, how far through the rough patch can it travel?
  #line(length: 100%)

  The total mechanical energy at points A, B, and C are all equal. 
  We know the block can reach point D if the friction requires a longer distance than $12 "m"$ for the kinetic energy by point C to be totally dissipated.

  We can start by finding the velocity at point C because the gravitational potential energy of the block is constant between point C and point D.
  $
    E_A &= E_C
    \
    1/2 m v_A^2 + m g h_1 &=  1/2m v_C^2 + m g h_2 
    \
    1/2 v_A^2 + g h_1 &=  1/2 v_C^2 + g h_2 
    \
    1/2 v_A^2 + g (h_1 - h_2) &=  1/2 v_C^2
    \
    v_A^2 + 2g (h_1 - h_2) &=  v_C^2
    \
    v_C^2 &= (7 "m"slash"s")^2 + 2(9.81 "m"slash"s"^2)(6 "m" - 2 "m")
    \
    v_C^2 &= 127.48 space "m"^2slash"s"^2
  $
  Now, we can equate the kinetic energy at point C to the work done by friction and solve for the distance needed to fully dissipate it.
  $
    K_C &= W_f
    \
    1/2 m v_C^2 &= mu_k m g d
    \
    d &= (v_C^2) / (2mu_k g)
    \
    d &= (127.48 space "m"^2slash"s"^2) / (2(0.7)(9.81 "m"slash"s"^2))
    \
    d &= (127.48 space "m"^2slash"s"^2) / (2(0.7)(9.81 "m"slash"s"^2))
    \
    d &= 9.28 "m"
  $
  *Thus, the block cannot reach point D, and will instead travel $9.28 "m"$ across the rough patch.*
])



\
== Force and Potential Energy
- Recall that the work done by a conservative force equals the negative change in potential energy.
$
  W = -Delta U
$

- Thus, given force $arrow(F)$ and potential energy $U$:
#figure(
  $
    arrow(F) = -arrow(nabla) U= -(partial U) / (partial x) hat(i) -(partial U) / (partial y) hat(j) -(partial U) / (partial z) hat(k) 
  $
  , supplement: none,
  caption: [The "$partial$" symbol refers to taking a derivative with respect to one variable, holding everything else constant, known as a _partial derivative_. The nabla vector is known as the gradient vector, and is a vector consisting of all partial derivatives.]
)

#example([Object's Potential Energy Function], [
  A small object with mass $m = 0.0900 "kg"$ moves along the $+x$-axis. 
  The only force applied to the object is a conservative force with potential energy function $U(x) = -alpha x^2 + beta x^3$ where 
  \ $alpha=9.50 "J"slash"m"^2$ and $beta=0.300 "J"slash"m"^3$. The object is released from rest at negligible $x$.
  + When the object is at $x = 4.00 "m"$, what is its speed?
  + When the object is at $x = 4.00 "m"$, what is the magnitude of its acceleration?
  + What is the maximum value of $x$ reached by the object during its motion?
  #line(length: 100%)
  1) Because we know the object starts from rest, the work done by the conservative force must be equal to the kinetic energy.
  Thus, we can equate kinetic energy to the work done, or the negative potential energy function (because we start from a negligible $x$) and solve for the velocity.
  $
    K&=W 
    \
    1/2 m v^2 &= - U(4)
    \
    v &= sqrt(-(2 U(4)) / m)
    \
    v &= sqrt((2(9.5 "J"slash"m"^2)(4 "m")^2) / (0.09 "kg") - (2(0.3 "J"slash"m"^3)(4 "m"^3)) / (0.09 "kg"))
    \
    bold(v&=54.3 "m"slash"s")
  $
  2) We can start by finding the negative derivative to get the the force function, then use the force function to get the acceleration function.
  $
    F &= -(dif U) / (dif x)
    \
    F &= 2alpha x - 3 beta x^2 = m a 
    \
    a &= (2 alpha x) / m - (3 beta x^2) / m
    \
    a(4) &= (2 (9.5 "J"slash"m"^2)(4 "m")) / (0.09 "kg") - (3 (0.3 "J"slash"m"^3)(4 "m")^2) / (0.09 "kg")
    \
    bold(a(4) &= 684 "m"slash"s"^2)
  $
  3) Similarly to our logic for part one, we can use the fact that $K=W=-U(x)$. By finding the zeros of $-U(x)$, we find that $x_max$ is whenever the kinetic energy is zero again: $bold(x_max=31.7 "m")$.
])

#pagebreak()