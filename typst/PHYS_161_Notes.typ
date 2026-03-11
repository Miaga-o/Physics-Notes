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
    [#text(fill: blue, size: 14pt, [*Definition:* #title]) \
    #body]
  )
}

#let example(title, body) = {
  box(
    stroke: orange,
    inset: 8pt,
    radius: 10pt,
    width: 100%,
    [#text(fill: orange, size: 14pt, [*Example:* #title]) \
    #body]
  )
}

#let derivation(title, body) = {
  box(
    stroke: purple,
    inset: 8pt,
    radius: 10pt,
    width: 100%,
    [#text(fill: purple, size: 14pt, [*Derivation:* #title]) \
    #body]
  )
}

#let continue_example = figure([_Continued on next page_])

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
  - In provided values, all non-zero digits are significant figures.
  $
    525 => "three significant figures"
  $
  - Meanwhile, zero digits are only significant if they are between non-zero digits, or they are trailing non-zero digits when there is a decimal point.
  $
    40001 &=> "five significant figures" \
    120.0 &=> "four significant figures"
  $
\
- When adding quantities, the significant figures of the sum is equal to the operand with the least significant figures.
$
  25.7 + 13 = 38.7 approx 39 => "two significant figures"
$
- When multiplying quantities, the same rule applies to the product.
$
  (13.7)(20.95)=287.015 approx 287 => "three significant figures"
$
- In longer physics problems with numerous equations, using the actual values in calculations and only converting the final answer to the correct amount of significant figures is best practice.










#pagebreak()
= Motion Along a Straight Line
== Displacement, Time, Velocity, and Acceleration
- *Time* is measured in seconds, and usually refers to the time passed between two particular points in time.
  - Denoted $t$.
- *Displacement* and *distance* is measured in meters.
  - Denoted $ Delta x$ and $x$, respectively, along the $x$-axis.
- *Velocity* is measured in meters per second.
  - Denoted $v$.
- *Acceleration* is measured in meters per square second.
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
  a &= lim_(Delta t -> 0)(Delta v) / (Delta t) = (dif v) / (dif t)
$



== Motion with Constant Acceleration
- With constant acceleration, the following *kinematic equations* hold true:
$
  v = v_0 + a Delta t
  \
  Delta x = v_0 Delta t + 1 /2 a Delta t^2
  \
  v ^2 = v_0^2 + 2a Delta x
$

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
  arrow(r) &= x hat(i) + y hat(j) + z hat(k)
  \
  arrow(v) &= v_x hat(i) + v_y hat(j) + v_z hat(k)
  \
  arrow(a) &= a_x hat(i) + a_y hat(j) + a_z hat(k)
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


- *Frequency* is the number of revolutions (full rotations) per second.
  - Denoted $f$.
- *Period* is the number of seconds needed to make one revolution.
  - Denoted $T$.
$
T= 1 / f
$
- Given radius of the circular motion $R$
$
  v &= (2 pi R) / T
  \
  a_c &= v^2 / R
$



== Relative Motion
- Given reference frames $A$, $B$, and $C$ where $A B$ means "$A$ in the reference frame of $B$"
$
  arrow(v)_(A B) + arrow(v)_(B C) &= arrow(v)_(A C)
  \
  arrow(v)_(A B) &= -arrow(v)_(B A)
$

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
  arrow(w)=m arrow(g)
$
- However, there are also exists a general definition for weight force, the *Universal Law of Gravitation* using the gravitational constant $G$
$
  G = 6.6743 times 10^(-11) space "m"^3 dot "kg"^(-1) dot "s"^(-1)
$
#definition([Universal Law of Gravitation], [
  The force between any two objects is defined as follows (given that $r$ is the distance between the objects' centers):
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
  &=> \
  Sigma F_x &= 0 \
  Sigma F_y &= 0
$
- Thus, unknown forces can be solved in terms of other forces very easily.



== Dynamics of Circular Motion
- Based on Newton's Second Law, circular motion can result from many different forces.
$
  Sigma F = m a_c = (m v^2) / R
$
- As a result, denoting a singular "centrifugal force" is generally not accurate. 
- Additionally, direction should be considered relative to the center of rotation.










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

- Because kinetic energy is based off of speed, it is either positive or zero.
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



\ \
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

== Power










#pagebreak()
= Potential Energy and Energy Conservation

#example([Rollercoaster], [
  A rollercoaster starts at a height of 
])