#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge, shapes
#import "@preview/i-figured:0.2.4"

#set page("a4", numbering: "1 of 1")
#show title: set text(size: 24pt)
#show heading: i-figured.reset-counters
#show figure: i-figured.show-figure.with(level: 2)
#show heading.where(level: 1): set text(size: 20pt)
#show heading.where(level: 2): set text(size: 18pt)
#show heading.where(level: 3): set text(size: 16pt)
#show math.equation: set text(font: "New Computer Modern Math")
#show sym.emptyset: set text(font: "Fira Sans")
#set table(fill: (x, y) => if y == 0 {white.darken(5%)})

//Functions and variables
#let custom_numbering = (..numbers) => { 
  if numbers.pos().len() < 3 { //Automatic headings until heading 3
    numbering("1.1", ..numbers)
  }
}
#set heading(numbering: custom_numbering)


#let definition(title, body) = {
  box(
    stroke: blue,
    inset: 8pt,
    radius: 10pt,
    width: 100%,
    [#text(fill: blue, size: 14pt, [*Definition:*]) #text(fill: black, size: 14pt, [*#title*]) \  
    #body]
  )
}

#let example(title, body) = {
  box(
    stroke: orange,
    inset: 8pt,
    radius: 10pt,
    width: 100%,
    [#text(fill: orange, size: 14pt, [*Example:*]) #text(fill: black, size: 14pt, [*#title*]) \
    #body]
  )
}

#let derivation(title, body) = {
  box(
    stroke: purple,
    inset: 8pt,
    radius: 10pt,
    width: 100%,
    [#text(fill: purple, size: 14pt, [*Derivation:*]) #text(fill: black, size: 14pt, [*#title*]) \
    #body]
  )
}

#let continue_example = align(center, [_Continued on next page_])

#let author = text(size: 16pt, [Miagao])








//stuff
#align(center, [
  #title([PHYS 161 Notes])
  #author
])

#outline()
#pagebreak()






= Units, Physical Quantities, and Vectors
== SI Units
- *SI Units* refer to system of units used by engineers and scientists across the world.
- For PHYS 161, these will be the most commonly used units in problems.
#figure(
  table(
    columns: (auto, auto, auto),
    inset: 8pt,
    [*Application*], [*Unit*], [*Shorthand*],
    [Time], [Seconds], [$"s"$],
    [Length], [Meter], [$"m"$],
    [Mass], [Kilogram], [$"kg"$]
  )
)

- Additionally, many prefixes may be used in problems, necessitating conversions.
#figure(
  table(
    columns: (auto, auto, auto),
    inset: 8pt,
    [*Length*], [*Mass*], [*Time*],
    [1 nanometer $= 1 "nm" = 10^(-9) "m"$], [1 microgram $= 1 space mu"g" = 10^(-9) "kg"$], [1 nanosecond$= 1 "ns" = 10^(-9) "s"$],
    [1 micrometer $=1 space mu"m" = 10^(-6) "m"$], [1 milligram $=1 "mg" = 10^(-6) "kg"$], [1 microsecond $=1 space mu"s" = 10^(-6) "s"$],
    [1 millimeter $= 1 "mm" = 10^(-3) "m"$], [1 gram $= 1 "g" = 10^(-3) "kg"$], [1 millisecond $=1 "ms" = 10^(-3) "s"$]
  )
)



== Unit Conversions
- In equations, quantities may only be added if they have the same dimension.
- When multiplying two quantities, the product's dimension is the product of the operands' dimensions.
$
  ("m"/"s")("s") = "m"
$



== Significant Figures
- The *uncertainty* of a measurement is often indicated by the number of important digits, known as the *significant figures.*
  - All non-zero digits are significant figures.
  $
    525 => "three significant figures"
  $
  - Meanwhile, zero digits are only significant if they are between non-zero digits, or they are trailing non-zero digits when there is a decimal point.
  $
    40001 &=> "five significant figures" \
    120.0 &=> "four significant figures"
  $
\
- When adding quantities, the significant figures of the sum are equal to the operand with the fewest significant figures.
$
  25.7 + 13 = 38.7 approx 39 => "two significant figures"
$
- When multiplying quantities, the same rule applies to the product.
$
  (13.7)(20.95)=287.015 approx 287 => "three significant figures"
$
- In longer physics problems with numerous equations, using the actual values in calculations and only converting the final answer to the correct number of significant figures is best practice.










#pagebreak()
= Motion Along a Straight Line
== Displacement, Time, Velocity, and Acceleration
- *Time* is measured in seconds, and usually refers to the time passed between two particular points in time.
  - Denoted $t$.
- *Displacement* and *distance* is measured in meters.
  - Denoted $ Delta x$ and $x$, respectively, along the $x$-axis.
- *Velocity* is measured in meters per second.
  - Denoted $v$.
- *Acceleration* is measured in meters per second squared.
  - Denoted $a$.

  $
  Delta x &= x_2 - x_1
  \
  v_("av") &= (Delta x) / (Delta t)
  \
  v &= lim_(Delta t -> 0) (Delta x) / (Delta t) = (dif x) / (dif t)
  \
  a_("av") &= (Delta v) / (Delta t)
  \
  a &= lim_(Delta t -> 0)(Delta v) / (Delta t) = (dif v) / (dif t) = (dif^2 x) / (dif t^2)
$




== Motion with Constant Acceleration
#definition([Kinematic Equations], [
With constant acceleration, the following *kinematic equations* hold true:
  $
    v = v_0 + a Delta t
    \
    Delta x = v_0 Delta t + 1 /2 a Delta t^2
    \
    v ^2 = v_0^2 + 2a Delta x
  $
])

#derivation([Displacement Kinematic Equation], [
  $
    v &= v_0 + a Delta t
    \
    integral_(t_1)^(t_2) v dif t &= integral_(t_1)^(t_2) (v_0 + a Delta t) dif t
    \
    integral_(t_1)^(t_2) (dif x) / (dif t) dif t &= integral_(t_1)^(t_2) (v_0 + a Delta t) dif t
    \
    integral_(x_1)^(x_2) dif x &= integral_(t_1)^(t_2) (v_0 + a Delta t) dif t
    \
    Delta x &= v_0 Delta t + 1/2 a Delta t^2
  $
])










#pagebreak()
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
- Given these equations, we can also derive a general formula for a projectile's *range* and *maximum height.*
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
  #continue_example
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
  #continue_example
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
  \
- *Period* is the time required to make one revolution, measured in seconds.
  - Denoted $T$.
$
T= 1 / f
$
#definition([Circular Motion Equations], [
  Given radius of the circular motion $R$
  $
  v &= (2 pi R) / T
  \
  a_c &= v^2 / R
  \
  a_"tot" &= lr(|| (dif arrow(v))/(dif t)||) = sqrt(a_c^2 +a_t^2)
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
  In the northbound train, Cecilia is walking toward the front of the train at $2.0 "m"slash"s"$ and in the southbound one Jack is moving toward the front of the train also at $2.0 "m"slash"s"$.
  What is the magnitude of Jack's velocity relative to Cecilia?
  #line(length:100%)
  We can start by finding both of their speeds relative to the Earth.
  $
    arrow(v)_"Jack,Earth" &= arrow(v)_"Jack,North" + arrow(v)_"North,Earth"
    \
    arrow(v)_"Jack,Earth" &= (4 "m"slash"s") + (25 "m"slash"s") = 29 "m"slash"s"
    \
    arrow(v)_"Cecilia,Earth" &= arrow(v)_"Cecilia,South" + arrow(v)_"South,Earth"
    \
    arrow(v)_"Cecilia,Earth" &= (4 "m"slash"s") + (-20  "m"slash"s") = -16 "m"slash"s"
  $
  Now, we can solve for Jack's velocity relative to Cecilia.
  $
    arrow(v)_"Jack,Cecilia" &= arrow(v)_"Jack,Earth" + arrow(v)_"Earth,Cecilia"
    \
    arrow(v)_"Jack,Cecilia" &= arrow(v)_"Jack,Earth" - arrow(v)_"Cecilia,Earth"
    \
    arrow(v)_"Jack,Cecilia" &= (29 "m"slash"s") - (-16 "m"slash"s")
    \
    bold(arrow(v)_"Jack,Cecilia" &= 45.0 "m"slash"s")
  $
])












#pagebreak()
= Newton's Laws of Motion
== Newton's First Law
#definition([Newton's First Law], [
  An object subject to no external forces is at rest or moves with constant velocity if viewed from an inertial reference frame.
  $
    "Inertial Reference Frame" equiv "Reference frame in which Newton's laws are valid"
  $
])
- An inertial reference frame must not be accelerating or rotating.



== Newton's Second Law
- *Forces* are pushes or pulls on objects, measured in Newtons $"(N)"$  or $("kg" dot "m"slash"s"^2)$.

#definition([Newton's Second Law], [
  $
    Sigma arrow(F) = m arrow(a)
  $
])



== Newton's Third Law
#definition([Newton's Third Law], [
  For every action there is an equal and opposite reaction.
  
  Given objects $A$ and $B$ where $A B$ means "exerted from $A$ on $B$"
  $
    arrow(F)_(A B) = -arrow(F)_(B A)
  $
])

- For example, when two objects collide, they experience the same magnitude of force from the collision.



== Free Body Diagrams
- *Free-body diagrams* show the forces acting on an object's center, including any relevant components.
- While the magnitude of the drawn forces isn't that important, scaling them relative to each other makes the direction of the net acceleration clearer.










#pagebreak()
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
  w=m g
$
- However, there also exists a general definition for weight force, the *Universal Law of Gravitation* using the gravitational constant $G$
$
  G = 6.6743 times 10^(-11) space "m"^3 dot "kg"^(-1) dot "s"^(-1)
$
#definition([Universal Law of Gravitation], [
  The force between any two objects is defined as follows, given that $r$ is the _distance between the objects' centers_
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
  - *Kinetic   friction*, denoted $arrow(f)_k$ with coefficient of kinetic friction $mu_k$, acts on objects sliding across a surface.
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
- A common example of forces in equilibrium is an object sitting on a horizontal surface. The net vertical force is zero because the magnitude of the normal force and weight force are equal.



== Dynamics of Particles
- Using Newton's second law, we can set all forces (or components of forces) equal to mass times acceleration and solve for unknowns accordingly.
- Signs can indicate the direction, but you have to be consistent.
  - In *pulley problems*, direction should be based on the direction of the pulley's cord.
  - In *incline problems*, the $x$-axis should be parallel to the incline and the $y$-axis should be perpendicular to the incline.
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
  1) Note that along the direction of the pulley, the vertical forces acting on block A and B are irrelevant.
  $
    Sigma F_A &= T - f_s
    \
    Sigma F_B &= f_s
    \
    Sigma F_C &= m_C g - T
  $
  2) Now, block A and B will slip once the maximum static friction is exceeded, so we can use its formula to find the acceleration of the system when $m_C$ is maximized.
  $
    m_B a &= mu_s m_B g
    \
    a &= mu_s g 
    \
    a &= (0.75)(9.81 "m"slash"s"^2) = 7.36 "m"slash"s"^2
  $
  #continue_example
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
- Additionally, direction should be considered relative to the center of rotation---generally the positive direction is toward the center.










#pagebreak()
= Work and Kinetic Energy
== Work
- A force does *work* on a body if the body undergoes a displacement.
- The units of work are joules $("J")$ or newton-meters.

#definition([Work], [
  Given work $W$, force $arrow(F)$, and displacement $arrow(s)$
  $
    W = arrow(F) dot arrow(s) = F s cos(theta)
  $
])

- Thus, it follows that a force does *negative work* when applied opposite of the direction of $arrow(s)$ and does *zero work* when applied perpendicular to the direction of $arrow(s)$.
- Additionally, given this definition, there are multiple ways to define *net work.*
$
  W_"net"= Sigma arrow(F) dot arrow(s) = Sigma W
$

== Kinetic Energy 
- *Energy* is the capacity to do work, and also uses joules.
- *Kinetic energy* is the energy of a body from its mass and speed.
#definition([Kinetic Energy], [
  Given kinetic energy $K$, mass $m$, and speed $v$
  $
    K = 1 / 2 m v^2
  $
])

- Because kinetic energy is based on speed, it is either positive or zero.
- Additionally, work may be expressed as the *change in kinetic energy.*
$
  W = Delta K
$
#derivation([Work-Energy Theorem], [
  Given work $W$ and kinetic energy $K$
  $
    F_(parallel) &= m a = m (v_2^2-v_1^2) / (2s)
    \
    F_parallel s &= 1/2 m v_2^2 - 1/2 m v_1^2
    \
    W &= 1/2 m v_2^2 - 1/2 m v_1^2 = Delta K
  $
])

- However, these formulas only hold true when the force remains constant during the displacement.
#example([Final Velocity of a Sled], [
  You push a $30.0 "kg"$ sled with constant horizontal force $F=500 "N"$ for a horizontal distance $d=20.0 "m"$. The sled's initial velocity is $10.0 "m"slash"s"$. What is the final velocity of the sled?
  #line(length: 100%)
  1) Because we can calculate the work done and we are given the initial velocity, we can use the work-energy theorem to derive an expression for the final velocity.
  $
    W &= F_parallel d 
    \
    W &= (500 "N")(20 "m")
    \
    W &= 10000 "J"
    \
    1/2 m v_2^2 - 1/2 m v_1^2 &= 10000 "J"
    \
    1/2 m v_2^2 &= 10000 "J" + 1/2 m v_1^2 
    \
    v_2 &= sqrt((20000 "J") / m + v_1^2)
    \
    v_2 &= sqrt((20000 "J") / (30.0 "kg") + (10 "m"slash"s")^2)
    \
    bold(v_2 &= 27.7 "m"slash"s")
  $
])




== Work and Energy with Varying Force
- If an object is experiencing a varying net force, then the total work can be approximated using the average force per increment of the total displacement.
- Thus, as the increment tends to zero, work may be defined as follows:
$
  W = integral_(s_1)^(s_2) F dif s
$
#figure(
  cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    let func = x => -1 * (x - 3.16228) * (x - 3.16228) + 10
    let domain = (0, 3.16228*2)

    set-style(
      axes: (shared-zero: false),
      legend: (stroke: none, orientation: ttb, scale: 120%)
    )

    plot.plot(
      size: (3.5,5),
      x-label: $s$,
      y-label: $F$,
      x-tick-step: none,
      x-ticks: (
        (1, $s_1$),
        (3, $s_2$),
      ),
      y-tick-step: none,
      y-ticks: (
        (5.3245452016, $F_1$),
        (9.9736652016, $F_2$),
      ),
      x-equal: "y",
      axis-style: "school-book",
      legend: "north-east",
      {
        plot.add(
          domain: domain, func, 
          style: (stroke: (paint: rgb("#3749e6")))
        )

        plot.add-fill-between(
          domain: (1,3), func, x => 0,
          style: (stroke: none, fill: rgb("#adbce0"))
        )

        plot.add-vline(1,
          max: 5.3245452016,
          style: (stroke: (dash: "dashed"))
        )
        plot.add-hline(5.3245452016,
          max: 1,
          style: (stroke: (dash: "dashed"))
        )
        plot.add-vline(3,
          max: 9.9736652016,
          style: (stroke: (dash: "dashed"))
        )
        plot.add-hline(9.9736652016,
          max: 3,
          style: (stroke: (dash: "dashed"))
        )
        

        plot.add-legend([$F$], preview: () => {
          line((0,0.5), (1,0.5), stroke: rgb("#3749e6"))
        })

        plot.add-legend([$W$], preview: () => {
          rect((0,0), (1,1), stroke: none, fill: rgb("#adbce0"))
        })
      }
    )
  }),
)

- In more than one dimension:
$
  W = integral_(r_1)^(r_2) arrow(F) dot dif arrow(r)
$
- This is also the definition for work done by a spring because it varies depending on the displacement.
#derivation([Work Done by a Spring], [
$
  W_s &= integral_(x_1)^(x_2) (-k x) dif x \
  W_s &= -1/2 k Delta x^2
$
])

== Power
- *Power* is the rate at which work is done, measured in watts $"(W)"$ or joules per second $("J"slash"s")$.
  - Denoted $P$.
  - Power is also sometimes give in horsepower $("hp")$. The conversion rate is as follows:
  $
    1 "hp" = 745.7 "W"
  $
- Thus, average power is defined as follows:
$
  P_"av" = (Delta W) / (Delta t)
$

#definition([Power], [
  Given power $P$, work $W$, velocity $arrow(v)$, and force $arrow(F)$
  $
    P = (dif W) / (dif t) = arrow(F) dot arrow(v) = F v cos theta
  $
])










#pagebreak()
= Potential Energy and Energy Conservation
- *Potential energy* is energy based on position, and may be _converted_ into other forms of energy depending on the change in position.
  - For example, a fruit hanging from a tall tree has the _potential_ to reach a higher speed (and therefore kinetic energy) before it hits the ground than a fruit hanging from a smaller tree.

== Gravitational Potential Energy
- *Gravitational potential energy* is potential energy dependent on an object's mass and height about the ground.
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
- *Mechanical energy* is energy that is either kinetic or potential, and the total mechanical energy of a system is only constant
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
    arrow(F) = -arrow(nabla) U= -(diff U) / (diff x) hat(i) -(diff U) / (diff y) hat(j) -(diff U) / (diff z) hat(k) 
  $
  , supplement: none,
  caption: [The "$diff$" symbol refers to taking a derivative with respect to one variable, holding everything else constant, known as a _partial derivative_. The nabla vector is known as the gradient vector, and is a vector consisting of all partial derivatives.]
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