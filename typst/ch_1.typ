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

#pagebreak()