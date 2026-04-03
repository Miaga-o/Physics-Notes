#import "template.typ": *

= Units, Physical Quantities, and Vectors
== SI Units
- *SI Units* refer to the system of units used by engineers and scientists across the world.
- For PHYS 161, these will be the most commonly used units in problems.
#figure(
  table(
    fill: (x, y) => if y == 0 {white.darken(5%)},
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
    fill: (x, y) => if y == 0 {white.darken(5%)},
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



== Vectors
- *Scalars* are quantities which only have _magnitude_.
  - An example of a scalar would be mass.
- *Vectors* are quantities with both _magnitude_ and _direction_.
  - An example of a vector would be displacement.
  - Vector variables are denoted with an arrow.
  - Their components are denoted with subscripts that indicate which direction they represent: 
  $
    arrow(u) = chevron.l u_x, u_y, u_z chevron.r
  $
  - For this course, we often use *directional unit vectors* to describe direction:
  #table(
    stroke: none,
    columns: (33%, 34%, 33%),
    $ hat(i) = chevron.l 1,0,0 chevron.r $,
    $ hat(j) = chevron.l 0,1,0 chevron.r $,
    $ hat(k) = chevron.l 0,0,1 chevron.r $
  )
  $
    arrow(u) = u_x hat(i) + u_y hat(j) + u_z hat(k)
  $
- *Unit vectors* are vectors with a magnitude of $1$, and use a caret rather than an arrow.
$
  hat(u)
$
- A vector's magnitude is often denoted by double or single bars surrounding it or by removing the arrow symbol. It can be calculated using the components of the vector.
$
  mag(arrow(u)) = u = sqrt(u_x^2 + u_y^2 + u_z^2)
$
- *Vector addition* is done by adding corresponding components, resulting in a sum vector.
$
  arrow(u) + arrow(v) = (u_x + v_x)hat(i) + (u_y + v_y)hat(j) + (u_z + v_z)hat(k)
$
- *Scaling a vector* is done by multiplying each component in the vector by the scalar.
$
  c arrow(u) = c u_x hat(i) + c u_y hat(j) + c u_z hat(k)
$

=== Vector Multiplication
- The *dot product* or *scalar product* involves multiplying corresponding components, then summing them up. There also exists an alternate definition using the angle between the operands.
$
  arrow(u) dot arrow(v) = u_x v_x + u_y v_y + u_z v_z = mag(arrow(u)) mag(arrow(v)) cos(theta)
$
- The *cross product* or *vector product* is perpendicular to the plane formed by the operands, and its magnitude is calculated using the angle between the operands, albeit with sine. There also exists a determinant definition for the cross product.
$
  arrow(u) times arrow(v) &= mag(arrow(u)) mag(arrow(v)) sin(theta) hat(u)_perp 
  = mat(delim: "|", 
    hat(i), hat(j), hat(k);
    u_x, u_y, u_z;
    v_x, v_y, v_z;
  )
  = (u_y v_z - u_z v_y) hat(i) - (u_x v_z - u_z v_x) hat(j) + (u_x v_y - u_y v_x) hat(k)
$


#pagebreak()