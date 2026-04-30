#import "../../presets.typ": *
#counter(heading).update(13)

= Periodic Motion
- *Periodic motion* or *oscillation* refers to repetitive motions, such as the swinging of a pendulum.



== Describing Oscillation
- In periodic motion, the equilibrium position is some arbitrary position where the displacement is chosen to be zero.
- *Restoring forces* move an object back to their equilibrium position after being displaced.
  - The spring force is an example of a restoring force.
#important-block[
  Oscillation can only occur if there is a restoring force.
]
- *Amplitude* is the maximum magnitude of displacement from equilibrium, measured in meters $("m")$.
  - Denoted $A$.
- A *cycle* or complete vibration is entire round trip either directly or transitively from $A$ to $A$.
- *Period* is the time needed to complete a cycle, measured in seconds $("s")$, or sometimes seconds per cycle.
  - Denoted $T$.
- *Frequency* is the number of cycles per unit of time, measured in hertz $("Hz") = "s"^(-1)$, or sometimes cycles per second.
  - Denoted $f$.
- We covered period and frequency in our circular motion chapter, so you may also recall:
$
  f=1/T
$
- *Angular frequency* is defined as follows:
  $
    omega = 2pi f
  $
  - We can say the units are radians per cycle $("rad"slash"cycle")$.
  - Like angular velocity, angular frequency is denoted $omega$.

#note-block[
  While angular frequency has the same definition as angular speed, their applications are different.
]



== Simple Harmonic Motion
- In *simple harmonic motion (SHM)*, some restoring force $F_x$ is _directly proportional_ to the displacement from equilibrium.
$
  F_x &prop x
  \
  F_x &= -k x
$
- A spring that obeys Hooke's law is an example of simple harmonic motion.
- In general, the restoring force constant is measured in $"N"slash"m"$.
  - Denoted $k$.

#definition[Acceleration in SHM][
  Given acceleration of an object in SHM $a_x$, restoring force constant $k$, and displacement $x$:
  $
    a_x = dv(x,t,2) = -k/m x
  $
]