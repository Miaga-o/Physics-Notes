#import "template.typ": *

= Motion in Two or Three Dimensions
== Vector Quantities
- Many of the definitions from one-dimensional motion hold true in two or three dimensions, albeit using vectors.
$
  arrow(r) &= x hat(i) + y hat(j) + z hat(k) wide wide &r&= sqrt(x+y+z)
  \
  arrow(v) &= v_x hat(i) + v_y hat(j) + v_z hat(k) wide wide &v&= sqrt(v_x+v_y+v_z)
  \
  arrow(a) &= a_x hat(i) + a_y hat(j) + a_z hat(k) wide wide &a&= sqrt(a_x+a_y+a_z)
$
- *Vector quantities* are quantities with magnitude and direction, opposed to *scalar quantities*, which only have magnitudes.



== Projectile Motion
- In *projectile motion*, an object in the air only experiences acceleration due to gravity.
- Because the same kinematic equations can be applied _per component_ of the vectors, the following generalizations can be made (given that $z$ is the vertical direction):
#figure(
  table(
    columns: (33%, 33%, 34%),
    stroke: none,
    fill: none,
    [$
      v_x = v_(0x)
      \
      Delta x = v_(0x) Delta t
     $], 
    [$
      v_y = v_(0y)
      \
      Delta y = v_(0y) Delta t
     $], 
    [$
      v_z = v_(0z) - g Delta t
      \
      Delta z = v_(0z) Delta t - 1 /2 g Delta t^2
      \
      v_z^2 = v_(0z)^2 - 2g Delta z
     $]
  ),
  supplement: none,
  caption: [Constant $g$ is the acceleration due to Earth's gravity, $9.81 "m"slash"s"^2$. Note that $y$ is generally the vertical direction when dealing with two dimensions.]
)
- A common application of these formulas is finding the _air time_ of a projectile. Thus, sometimes the quadratic equation may be necessary to solve for the time.
  - In this case, either the negative time or the later time will be disregarded.
$
  (-b plus.minus sqrt(b^2 - 4a c)) / (2a)
$
- Now, we can derive a general formula for a projectile's *range* and *maximum height.*
#derivation([Range Formula], [
  Let $Delta x$ equal $R$ and let $Delta y$ equal 0.
  $

    v_y &= v_(0y) -g t 
    \
    g t &= v_(0y) - v_y
    \
    t &= (v_0sin theta - v sin theta) /g
    \
    t &= (v_0sin theta - (-v_0 sin theta)) / g
    \
    t &= (2v_0sin theta) / g
    \
  $
  #continue_box
])

#derivation([Range Formula _continued_], [
  Now, we can plug this value for $t$ into a horizontal kinematic equation.
  $
    \
    R&=v_(0x)t 
    \
    R &= v_0 cos theta t
    \
    R &= v_0 cos theta (2v_0 sin theta) / g
    \
    R &= (v_0^2 sin (2theta)) / g
  $
])

#derivation([Maximum Height Formula], [
  Let $Delta y$ equal $h_"max"$ and $v_y = 0$.
  $
    
  $
  $
    0 &= v_(0y)^2 - 2g h_"max"
    \
    2 g h_"max" &= v_(0y)^2
    \
    h_"max" &= (v_(0y)^2) / (2g)
    \
    h_"max" &= (v_0^2 sin^2 theta) / (2g)
  $
])
- In later chapters, there will be other ways of finding the range or maximum height of a projectile, but these may still be useful depending on what is known in a problem.
#example([Fireworks Display], [
  During a fireworks display, a shell is shot into the air with an initial speed $v_0 = 70.0 "m"slash"s"$ at an angle of $75 degree$ above the horizontal. The fuse is timed to ignite the shell just as it reaches its highest point above the ground.
  + How much time has passed between the launch of the shell and the explosion?
  + What is the horizontal displacement of the shell before it explodes?
  #line(length: 100%)
  1) This is essentially the time needed for the firework to reach its max height. We can derive the maximum height formula (as seen above) first.
  $
    h_"max" = ((70.0 "m"slash"s")^2sin^2 75 degree) / (2(9.81 "m"slash"s"^2)) = 233 "m"
  $
  Now, we can solve for time easily.
  $
    h_"max" &= v_(0y) t - 1/2 g t^2
    \
    h_"max" &= v_(0)sin(75 degree) t - 1/2 g t^2
    \
    1/2 g t^2 - v_(0)sin(75 degree) t + h_"max" &=  0
    \
    bold(t &= 6.89 "s")
  $
  #continue_box
])

#example([Fireworks Display _continued_], [
  2) We can calculate the firework's displacement using the time we just calculated.
  $
    Delta x &= v_(0x)t
    \
    Delta x &= v_0 cos(75 degree)t
    \
    Delta x &= (70 "m"slash"s")cos(75 degree)(6.89 "s")
    \
    bold(Delta x &= 125 "m")
  $
])



== Circular Motion
- Even if a particle's speed is constant, its velocity cannot be constant in circular motion because _its direction is constantly changing._
- The direction of the velocity changes due to acceleration directed toward the center of its rotation, known as *centripetal acceleration.*
  - Denoted $a_t$ or $a_"rad"$.
  - Thus, when centripetal acceleration is the only acceleration vector acting on a particle, the particle undergoes *uniform circular motion* because it will always be perpendicular to the particle's velocity vector.
- An acceleration vector parallel to the particle's velocity vector is known as *tangential acceleration.*
  - Denoted $a_t$.
  - This is known as *nonuniform circular motion*, because the speed of the particle will also be changing.
  $
    a_t = (dif v) / (dif t)
  $


- *Frequency* is the rate at which an object spins, measured in revolutions per second $("rev"slash"s")$ or sometimes just in hertz $("s"^(-1) = "Hz")$.
  - Denoted $f$.
- *Period* is the time required to make one revolution, measured in seconds.
  - Denoted $T$.
$
T= 1 / f
$
#definition([Circular Motion Equations], [
  Given radius of the circular motion $R$
  $
  v &= (2 pi R) / T = 2 pi R f
  \
  a_c &= v^2 / R = (4pi^2 R) / T = 4pi^2 R f
  \
  a_"tot" &= lr(|| drv(arrow(v),t)||) = sqrt(a_c^2 +a_t^2)
$
])




== Relative Motion
- Given reference frames $A$, $B$, and $C$ where $A B$ means "$A$ in the reference frame of $B$"
$
  arrow(v)_(A B) + arrow(v)_(B C) &= arrow(v)_(A C)
  \
  arrow(v)_(A B) &= -arrow(v)_(B A)
$
- This is essentially vector addition.
- The *Law of Sines* and the *Law of Cosines* are useful formulas for relative motion problems whenever angles are needed.

#definition([Law of Sines], [
  Given sides $a$, $b$, and $c$ opposite of angles $A$, $B$, and $C$, respectively,
  $
    (sin A) / a = (sin B) / b = (sin C) / c
  $
])

#definition([Law of Cosines], [
  Given sides $a$, $b$, and $c$ opposite of angles $A$, $B$, and $C$, respectively,
  $
    a^2 = b^2 + c^2 - 2b c cos A
    \
    b^2 = a^2 + c^2 - 2a c cos B
    \
    c^2 = a^2 + b^2 - 2a b cos C
  $
])

#example([Metro Trains],[
  Two metro trains pass by each other on the red line. 
  The northbound train is moving at a speed of $25.0 "m"slash"s"$ and the southbound train is moving at a speed of $20.0 "m"slash"s"$.
  In the northbound train, Cecilia is walking toward the front of the train at $2.0 "m"slash"s"$, and in the southbound one, Jack is moving toward the back of the train also at $2.0 "m"slash"s"$.
  What is the magnitude of Jack's velocity relative to Cecilia?
  #line(length:100%)
  We can start by finding both of their speeds relative to the Earth.
  $
    arrow(v)_"Cecilia,Earth" &= arrow(v)_"Cecilia,North" + arrow(v)_"North,Earth"
    \
    arrow(v)_"Cecilia,Earth" &= (2 "m"slash"s") + (25  "m"slash"s") = 27 "m"slash"s"
    \
    arrow(v)_"Jack,Earth" &= arrow(v)_"Jack,South" + arrow(v)_"South,Earth"
    \
    arrow(v)_"Jack,Earth" &= (2 "m"slash"s") + (-20 "m"slash"s") = -18 "m"slash"s"
  $
  Now, we can solve for Jack's velocity relative to Cecilia.
  $
    arrow(v)_"Jack,Cecilia" &= arrow(v)_"Jack,Earth" + arrow(v)_"Earth,Cecilia"
    \
    arrow(v)_"Jack,Cecilia" &= arrow(v)_"Jack,Earth" - arrow(v)_"Cecilia,Earth"
    \
    arrow(v)_"Jack,Cecilia" &= (-18 "m"slash"s") - (27 "m"slash"s")
    \
    arrow(v)_"Jack,Cecilia" &= -45.0 "m"slash"s"
    \
    bold(v_"Jack,Cecilia" &= 45.0 "m"slash"s")
  $
])