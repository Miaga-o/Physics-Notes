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
- A *cycle* or complete vibration is entire round trip.
  - Starting at point $A$, a cycle would be $A -> -A -> A.$
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

- A *harmonic oscillator* is an object in simple harmonic motion.
#caution-block[
  Not all periodic motions are simple harmonic, but many of them are _approximately_ simple harmonic when the displacement is small as outlined in the previous chapter.
]
- Thus, the spring force is a good example of simple harmonic motion.
- In general, the restoring force constant is measured in $"N"slash"m"$.
  - Denoted $k$.

#definition[Acceleration in SHM][
  Given acceleration of an object in SHM $a_x$, restoring force constant $k$, and displacement $x$:
  $
    a_x = dv(x,t,2) = -k/m x
  $
]

=== Relating Circular Motion to SHM
- Let $Q$ be a particle in circular motion. Its projection $P$ onto the $x$-axis will be in simple harmonic motion as $Q$ completes revolutions.
#figure(
  cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    let func = x => x
    let domain = (-6,2)
    let amplitude = calc.sqrt(2)/2*0.75

    set-style(
      legend: (stroke: none, orientation: ttb, scale: 120%),
      axes: (shared-zero: false)
    )

    plot.plot(
      size: (8,8),
      x-tick-step: none,
      y-tick-step: none,
      axis-style: "school-book",
      legend: "north-east",
      {
        plot.add(domain: (-0.9,0.9), x=>x, style: (stroke: none))

        plot.annotate({
          content((-0.075, -0.075))[$O$]

          line(name: "Phasor", (0,0), (amplitude - 0.0, amplitude -0.025), mark: (end: "stealth", scale: 0.3), fill: black)
          line((amplitude, 0), (amplitude, amplitude), stroke: (dash: "dashed"))
          content((0.2,0.1), text(size: 14pt)[$theta$])
          arc((0.75*.4,0), start: 0deg, stop: 45deg, radius: 0.75*0.4*1cm)
          content("Phasor.mid", anchor:"north", $A$)


          circle(
            name: "Path", (0,0),
            radius:0.75,
            stroke: (dash: "dotted", thickness: 1.5pt, paint: rgb("#4446e4"))
          )

          circle(
            name: "Q", 
            (amplitude, amplitude), 
            radius: 0.05cm, 
            stroke: (paint: orange), 
            fill: gradient.radial(orange.lighten(50%), orange.lighten(30%), center: (35%, 35%))
          )
          content((amplitude+0.05, amplitude+.1), $Q$)

          circle(
            name: "P", (amplitude, 0),
            radius: 0.05cm,
            fill: black
          )
          content((amplitude, -0.1), $P$)
        })

        plot.add-legend(
          [$Q$: Particle], preview: () => {}
        )
        plot.add-legend(
          [$P$: Projection], preview: () => {}
        )
        plot.add-legend(
          [$A$: Radius], preview: () => {}
        )
        plot.add-legend(
          [Path], preview: () => {
            line((0,0.5), (1,0.5), stroke: (dash: "dotted", paint: rgb("#4446e4"), thickness: 2pt))
          }
        )
    })
  })
)
- Using a *reference circle* and *phasor* (rotating vector), we can prove that $Q$ can be used to model simple harmonic motion.
$
  a_Q &= omega^2 A
  \
  R &= A
$
- Now, the $x$-components of these values will refer to the acceleration and displacement, respectively, of the projection $P$.

#definition[SHM Equations][
  Let $A$ be amplitude, $k$ be the restoring force constant, $omega$ be angular frequency, and $m$ be the harmonic oscillator's mass.
  $
    x &= A cos (theta)
    \
    a_x &= -omega^2 A cos(theta) =-omega^2 x
    \
    omega &= sqrt(k/m)
  $
]

- This proves that the projection is in simple harmonic motion because $P$'s acceleration is directly proportional to $A cos(theta) = x$, the displacement.
- The definition for angular frequency comes from equating our new definition for SHM acceleration to our old one, $a_x = -k/m x$.

#remark-block[
  The greek letter, $omega$, is used for both angular speed and angular frequency because the quantities are equal. The time needed for $Q$ to complete a revolution should be the same as the time needed for its projection $P$ to complete a revolution.
]

#definition[SHM Equations][
  Let $f$ and $T$ be the frequency and period, respectively, in simple harmonic motion:
  $
    f &= omega/(2pi) = 1/(2pi)sqrt(k/m)
    \
    T &= (2pi)/omega = 2pi sqrt(m/k)
  $
]



=== Kinematics in SHM
#definition[Kinematics in SHM][
  Let $phi.alt$ be the phase angle, that is, the angle of the phasor at $t=0$.
  $
    x &= A cos(omega t + phi.alt)
    \
    v_x &= -omega A sin(omega t+phi.alt)
    \
    a_x &= -omega^2 A cos(omega t+phi.alt)
  $
]

#table(
  columns: (50%, 50%),
  fill: (x,y) => if y == 0 {white.darken(5%)},
  inset: 8pt,
  align(center)[*Graph*], align(center)[*Description*],
  cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    let func = x => calc.cos(x)

    plot.plot(
      size: (5.5,2.75),
      x-label: $t$,
      x-tick-step: none,
      x-ticks: ((2*calc.pi, $T$), (4*calc.pi, $2T$)),
      x-grid: true,
      x-max: 5*calc.pi,
      y-label: $x$,
      y-tick-step: none,
      y-ticks: ((-1, $-A$), (1, $A$)),
      y-grid: true,
      y-min: -1,
      axis-style: "school-book",
      {
        plot.add(
          domain: (0, 5*calc.pi), 
          func,
          samples: 200,
          style: (stroke: (thickness: 2pt, paint: blue))
        )
    })
  }),
  [
    - SHM displacement graph with $phi.alt = 0$.
    - Oscillates between $-A$ and $+A$.
    - In other words, between $-x_"max"$ and $+x_"max"$.
  ],
  cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    let func = x => -calc.sin(x)

    plot.plot(
      size: (5.5,2.75),
      x-label: $t$,
      x-tick-step: none,
      x-ticks: ((2*calc.pi, $T$), (4*calc.pi, $2T$)),
      x-grid: true,
      x-max: 5*calc.pi,
      y-label: $v_x$,
      y-tick-step: none,
      y-ticks: ((-1, $-omega A$), (1, $omega A$)),
      y-grid: true,
      y-min: -1,
      y-max: 1,
      axis-style: "school-book",
      {
        plot.add(
          domain: (0, 5*calc.pi), 
          func,
          samples: 200,
          style: (stroke: (thickness: 2pt, paint: red))
        )
    })
  }),
  [
    - SHM velocity graph with $phi.alt = 0$.
    - Oscillates between $-omega A$ and $+omega A$.
    - In other words, between $-v_"max"$ and $+v_"max"$.
  ],
  cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    let func = x => -calc.cos(x)

    plot.plot(
      size: (5.5,2.75),
      x-label: $t$,
      x-tick-step: none,
      x-ticks: ((2*calc.pi, $T$), (4*calc.pi, $2T$)),
      x-grid: true,
      x-max: 5*calc.pi,
      y-label: $a_x$,
      y-tick-step: none,
      y-ticks: ((-1, $-omega^2 A$), (1, $omega^2 A$)),
      y-grid: true,
      y-min: -1,
      axis-style: "school-book",
      {
        plot.add(
          domain: (0, 5*calc.pi), 
          func,
          samples: 200,
          style: (stroke: (thickness: 2pt, paint: purple))
        )
    })
  }),
  [
    - SHM acceleration graph with $phi.alt = 0$.
    - Oscillates between $-omega^2 A$ and $+omega^2 A$.
    - In other words, between $-a_"max"$ and $+a_"max"$.
  ],
)

- This is further justification that our displacement and velocity functions are correct, as we verified this acceleration equation in the previous chapter.
- Now, if we are given an initial displacement and velocity, we can find $A$ and $phi.alt$ by rearranging our equations.
#table(columns: (50%, 50%), stroke:none,
  $
    v_(0x)/x_0 &= (-omega A sin(phi.alt))/(A cos(phi.alt))
    \
    -v_(0x)/(x_0 omega) &= tan(phi.alt)
    \
    phi.alt &= arctan(-v_(0x)/(x_0 omega))
  $,
  $
    x_0^2 + v_(0x)^2/omega^2 &= (A cos(phi.alt))^2 + (-omega A sin(phi.alt))^2/omega^2
    \
    x_0^2 + v_(0x)^2/omega^2 &= A^2
    \
    A &= sqrt(x_0^2 + v_(0x)^2/omega^2)
  $
)



== Energy in SHM
- In simple harmonic motion, the total mechanical energy is conserved.
- As we've observed with springs in chapter 7, a harmonic oscillator reaches its maximum kinetic energy when at equilibrium.
- Meanwhile, a harmonic oscillator reaches its maximum potential energy when $|x|=|A|$, the amplitude.
#definition[Total Energy in SHM][
  $
    E_"SHM" = 1/2m v_x^2 + 1/2k x^2= 1/2 k A^2
  $
]

