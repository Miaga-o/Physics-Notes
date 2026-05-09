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
  - The units are radians per second $("rad"slash"s")$.
  - Like angular velocity, angular frequency is denoted $omega$.

#note-block[
  While angular frequency has the same definition as angular speed, their applications are different.
]



== Simple Harmonic Motion
- In *simple harmonic motion (SHM)*, the net force is some restoring force $F_x$ which is _directly proportional_ to the displacement from equilibrium.
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
- Additionally, recall this relationship:
$
  Delta theta &= omega Delta t
$

- In periodic motion, the *phase shift* refers to the horizontal shift of the oscillation graph due to some initial angle known as the *phase angle*, generally denoted $phi.alt$. Thus:
$
  theta - phi.alt &= omega t
  \
  theta &= omega t + phi.alt
$
- Using this, we can establish new equations for the displacement, velocity, and acceleration in SHM>



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
  inset: 10pt,
  stroke: 1pt,
  align(center)[*Graph*], align(center)[*Description*],
  cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    let angular_freq = 1
    let phase = 0
    let amplitude = 1
    let func = x => amplitude*calc.cos(angular_freq*x+phase)

    plot.plot(
      size: (5.5,2.75),
      x-label: $t$,
      x-tick-step: none,
      x-ticks: ((2*calc.pi, $T$), (4*calc.pi, $2T$)),
      x-grid: true,
      x-max: 5*calc.pi,
      y-label: $x$,
      y-tick-step: none,
      y-ticks: ((-amplitude, $-A$), (amplitude, $A$)),
      y-grid: true,
      y-min: -amplitude,
      y-max: amplitude,
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
    - SHM displacement graph with: 
    $
      phi.alt &= 0 \
      omega &= 1 "rad"slash"s"
    $
    - Oscillates between $-A$ and $+A$.
    - In other words, between $-x_"max"$ and $+x_"max"$.
  ],
  cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    let angular_freq = 1
    let phase = 0
    let amplitude = 1
    let func = x => -angular_freq*amplitude*calc.sin(angular_freq*x+phase)

    plot.plot(
      size: (5.5,2.75),
      x-label: $t$,
      x-tick-step: none,
      x-ticks: ((2*calc.pi, $T$), (4*calc.pi, $2T$)),
      x-grid: true,
      x-max: 5*calc.pi,
      y-label: $v_x$,
      y-tick-step: none,
      y-ticks: ((-amplitude*angular_freq, $-omega A$), (amplitude*angular_freq, $omega A$)),
      y-grid: true,
      y-min: -amplitude*angular_freq,
      y-max: amplitude*angular_freq,
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
    - SHM velocity graph with: 
    $
      phi.alt &= 0 \
      omega &= 1 "rad"slash"s"
    $
    - Oscillates between $-omega A$ and $+omega A$.
    - In other words, between $-v_"max"$ and $+v_"max"$.
  ],
  cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    let angular_freq = 1
    let phase = 0
    let amplitude = 1
    let func = x => -calc.pow(angular_freq, 2)*amplitude*calc.cos(angular_freq*x+phase)

    plot.plot(
      size: (5.5,2.75),
      x-label: $t$,
      x-tick-step: none,
      x-ticks: ((2*calc.pi, $T$), (4*calc.pi, $2T$)),
      x-grid: true,
      x-max: 5*calc.pi,
      y-label: $a_x$,
      y-tick-step: none,
      y-ticks: ((-calc.pow(angular_freq, 2)*amplitude, $-omega^2 A$), (calc.pow(angular_freq, 2)*amplitude, $omega^2 A$)),
      y-grid: true,
      y-min: -calc.pow(angular_freq, 2)*amplitude,
      y-max: calc.pow(angular_freq, 2)*amplitude,
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
    - SHM acceleration graph with: 
    $
      phi.alt &= 0 \
      omega &= 1 "rad"slash"s"
    $
    - Oscillates between $-omega^2 A$ and $+omega^2 A$.
    - In other words, between $-a_"max"$ and $+a_"max"$.
  ],
)

- This is further justification that our displacement and velocity functions are correct, as we verified this acceleration equation in the previous chapter.
- These equations also show how changes in $A$, $k$, and $m$ impact a harmonic oscillator's motion.
  - $A$ impacts the maximum values in SHM kinematics.
  - $k$ and $m$ impact the period and maximum values for acceleration and velocity.
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
    x_0^2 + v_(0x)^2/omega^2 &= (A cos(phi.alt))^2 + big((-omega A sin(phi.alt)))^2/omega^2
    \
    x_0^2 + v_(0x)^2/omega^2 &= A^2
    \
    A &= sqrt(x_0^2 + v_(0x)^2/omega^2)
  $
)

#example[Displacement and Amplitude][
  A harmonic oscillator has angular frequency $omega$ and amplitude $A$. Express answers in terms of $A$ and $omega$.
  #enum.item(1)[What is the magnitude of the displacement when the elastic potential energy is equal to the kinetic energy? (Assume that $U=0$ at equilibrium).]
  $
    1/2 k x^2 &= 1/2 m v_x^2
    \
    x^2 &= m/k v_x^2
    \
    x^2 &= 1/omega^2 (-A omega sin(omega t))^2
    \
    x^2 &= A^2 sin^2(omega t)
    \
    x^2 &= A^2 - A^2 cos^2(omega t)
    \
    x^2 &= A^2 - x^2
    \
    2x^2 &= A^2
    \
    bold(x &= sqrt(1/2A^2))
  $

  #enum.item(2)[What is the magnitude of the velocity when the elastic potential energy is equal to the kinetic energy? (Assume that $U=0$ at equilibrium).]
  $
    1/2m v_x^2 &= 1/2 k x^2
    \
    v_x^2 &= k/m x^2
    \
    v_x &= sqrt(k/m x^2)
    \
    bold(v_x &= sqrt(1/2omega^2 A^2))
  $
]

#example[Stack of Blocks in SHM][
  A block with mass $M$ rests on a frictionless surface and is connected to a horizontal spring of force constant k. The other end of the spring is attached to a wall. A second block with mass $m$ rests on top of the first block. The coefficient of static friction between the blocks is $mu_s$.

  Find the maximum amplitude of oscillation such that the top block will not slip on the bottom block. Express the answer in terms of $m$, $M$, $k$, $mu_s$, and other constants, as needed.
  #line(length: 100%)
  We can use the net force equations on each block to isolate the spring force and express the system's acceleration using the coefficient of friction.
  #table(columns: (50%, 50%), stroke: none,
    $
      Sigma F_("top") = f_s &= m a
      \
      mu_s m g &= m a
      \
      a &= mu_s g
    $,
    $
      Sigma F_"bot" = F_"spr" - f_s &= M a
      \
      Sigma F_"bot" = k A_"max" - f_s &= M a
    $
  )
  $
    Sigma F = k A_"max" - f_s + f_s &= M a + m a
    \
    k A_"max" &= (M+m)a
    \
    k A_"max" &= (M+m) mu_s g
    \
    bold(A_"max" &= ((M+m) mu_s g)/k)
  $
]



== Energy in SHM
- In simple harmonic motion, the total mechanical energy is conserved.
- As we've observed with springs in chapter 7, a harmonic oscillator reaches its maximum kinetic energy when at equilibrium.
- Meanwhile, a harmonic oscillator reaches its maximum potential energy when $|x|=|A|$, the amplitude.
#definition[Total Energy in SHM][
  $
    E_"SHM" = 1/2m v_x^2 + 1/2k x^2= 1/2 k A^2
  $
]

#example[Fractions of Total Energy in SHM][
  A harmonic oscillator has angular frequency $omega$ and amplitude $A$.
  #enum.item(1)[At an instant when the displacement is equal to $A/2$, what fraction of the total energy of the system is kinetic?]
  $
    K/E_"tot" &= (1/2 m v_x^2)/(1/2 k A^2)
    \
    K/E_"tot" &= (1/2 m big( (-A omega sin(omega t + phi.alt)) )^2)/(1/2 k A^2)
    \
    K/E_"tot" &= (1/2 m (A^2 omega^2 sin^2(omega t + phi.alt)))/(1/2 k A^2)
    \
    K/E_"tot" &= (1/2 m (A^2 k/m - A^2 k/m cos^2(omega t + phi.alt)))/(1/2 k A^2)
    \
    K/E_"tot" &= (1/2k A^2 - 1/2k x^2)/(1/2 k A^2)
    \
    K/E_"tot" &= (1/2k A^2 - 1/2k (1/2A)^2)/(1/2 k A^2)
    \
    K/E_"tot" &= (3/8k A^2)/(1/2 k A^2)
    \
    bold(K/E_"tot" &= 3/4)
  $

  #enum.item(2)[At an instant when the displacement is equal to $A/2$, what fraction of the total energy of the system is potential?]
  $
    bold(U/E_"tot" &= 1-(K_"tot")/E_"tot" = 1/4)
    
  $
]



== Applications of SHM
- In the previous subchapters, we covered SHM in solely horizontal scenarios.
- However, we defined SHM to be any system with any restoring force acting directly proportional to displacement from equilibrium.
- By finding values of $k$ in different scenarios, we can show that they model SHM.

=== Vertical SHM
- Say an object of mass $m$ is hanging vertically from a spring with spring constant $k$. The object is at equilibrium when _the spring is stretched enough to balance the weight force_.
- Lets say that stretch distance is $Delta l$, so:
$
  k Delta l = m g
$
- Now, let $x$ be the distance from the equilibrium position. Using the previous equality we established, it follows that:
$
  "Above equilibrium" quad quad Sigma F = k(Delta l - x) - m g &= -k x
  \
  "Below equilibrium" quad quad Sigma F = k(Delta l + x) - m g &= k x
$
- The object still oscillates with $omega=sqrt(k/m)$ despite being vertical.
- The main difference between horizontal and vertical SHM is the difference in equilibrium.

=== Angular SHM
- In angular SHM, we define a *restoring torque* similarly to a restoring force.
  - The constant $kappa$ is known as the *torsion constant*.
$
  Sigma tau_z &prop theta
  \
  Sigma tau_z &= -kappa theta 
  \
  alpha_z &= -kappa/I theta
$

- Additionally, we define angular frequency, period, and frequency similarly, albeit with the torsion constant and moment of inertia.
#definition[Angular SHM Equations][
  Let $kappa$ be the torsion constant:
  $
    omega &= sqrt(kappa/I)
    \
    f &= omega/(2pi) = 1/(2pi)sqrt(kappa/I)
    \
    T &= (2pi)/omega = 2pi sqrt(I/kappa)
  $
]

- We also define angular displacement similarly to displacement.
#definition[Angular Displacement in SHM][
  Let $theta.alt$ be the angular amplitude and let the other variables be defined as in (14.2.2).
  $
    theta &= theta.alt cos(omega t + phi.alt)
  $
]

- An example of this is a mechanical watch that keeps track of time using a balance wheel. A coil spring exerts a restoring torque proportional to the angular displacement of the wheel, returning it back to equilibrium.
- Here, the oscillations are used to keep track of time, essentially being an angular pendulum.



== Simple Pendulum
- A *simple pendulum* is an idealized model where a point mass is suspended by a massless, unstretchable string.
- When released from either side of its straight-down equilibrium position, it oscillates along an arc of radius $L$, the length of the string.
- Now, let $theta$ be the angle between the string and the equilibrium position of the string.
- Thus, the angle between $w$ and $w_y$ must also be $theta$ because $w$ is parallel to the equilibrium position and $w_y$ is parallel to the string's current orientation.
$
  Sigma F_x = m g sin(theta) quad Sigma F_y = T-m g cos(theta) = 0
$

- Now, because $sin(theta) approx theta$ as $theta -> 0$, the motion of a simple pendulum is _approximately harmonic_.

#definition[Simple Pendulum Approximation][
  Given a small angle $theta$ and a displacement $x$ from equilibrium, the restoring force for a simple pendulum can be approximated as follows:
  $
    F_theta &= -m g theta = -(m g)/L x
  $
]

- Here, the restoring force constant is approximately $(m g)/L$, which simplifies nicely in our previous SHM equations.
#definition[Simple Pendulum Equations][
  Let $L$ be the length of the pendulum's string.
  $
    omega &= sqrt(g/L)
    \
    f &= omega/(2pi) = 1/(2pi)sqrt(g/L)
    \
    T &= (2pi)/omega = 2pi sqrt(L/g)
  $
]

- However, if we want an exact value for $T$ or have large angular displacements, we need to use a series.
$
  T&=2pi sqrt(g/L) (1 + 1^2/2^2sin^2(Theta/2) + (1^2 dot 3^2)/(2^2 dot 4^2)sin^4(Theta/2) + dots.c) \
  T &= 2pi sqrt(L/g) sum_(n=0)^infinity (((2n)!)/((2^n n!)^2))^2 sin^(2n)(Theta/2)
$

- This shows why pendulums are great at keeping time, as changes in amplitude over time have little impact on the period.

#example[Amplitude and Period][
  You pull a simple pendulum of length $0.260 "m"$ to the side through an angle of $3.50 degree$ and release it.
  #enum.item(1)[How much time does it take the pendulum bob to reach its highest speed?]
  $
    T &= 2pi sqrt(L/g)
    \
    T &= 2pi sqrt((0.26 "m")/(9.81 "m"slash"s"^2))
    \
    T &= 1.02 "s"
  $
  Now, it follows that the bob reaches it highest speed at the pendulum's equilibrium position. The motion from the point of release (maximum displacement) to the straight-down equilibrium position is a fourth of a period. Thus:
  $
    t &= T/4 = (1.02 "s")/4
    \
    bold(t &= 0.256 "s")
  $

  #enum.item(2)[How much time does it take if the pendulum is released at an angle of $1.75 degree$ instead of $3.50 degree$?]
  The period is independent of the amplitude, thus:
  $
    bold(t &= 0.256 "s")
  $
]



== Physical Pendulum
- A *physical pendulum* refers to a _real pendulum_ using an extended body.
- Thus, the restoring force acts on the pendulum's center of gravity, causing a restoring torque at some angle $theta$.
$
  Sigma tau_z = -m g d sin(theta)
$

- Again, we can use the approximation $sin(theta) approx theta$ when $theta -> 0$ to simplify this equation.
$
  Sigma tau_z &= -m g d theta
  \
  alpha_z &= -(m g d)/I theta
$

#definition[Physical Pendulum Equations][
  Let $I$ be the moment of inertia of the harmonic oscillator and $d$ be the harmonic oscillator's distance from the point of rotation:
  $
    omega &= sqrt((m g d)/I)
    \
    f &= omega/(2pi) = 1/(2pi)sqrt((m g d)/I)
    \
    T &= (2pi)/omega = 2pi sqrt(I/(m g d))
  $
]
- Essentially, this is an angular SHM case where $kappa = m g d$.

#example[Simple Pendulum versus Physical Pendulum][
  Two pendulums each consist of a uniform solid ball of mass $M$ supported by a massless string. But, the ball for pendulum A is very tiny while the ball for pendulum B has a radius of $L/2$. The center of both balls are a distance $L$ away from their strings' ends.
  + Find the period of pendulum A for small displacements.
  + Find the period of pendulum B for small displacements.
  For both answers, express the periods in terms of $M$, $L$, and other constants, if needed.
  #line(length: 100%)
  1) Because the ball in A is very small, we will use the simple pendulum formula.
  $
    bold(T_A &= 2pi sqrt(L/g))
  $

  2) Because the size of the ball in B is not negligible, we'll have to use the physical pendulum formula.
  $
    T_B &= 2pi sqrt(I/(M g L))
    \
    T_B &= 2pi sqrt((I_"cm" + M L^2)/(M g L))
    \
    T_B &= 2pi sqrt((2/5M (L/2)^2 + M L^2)/(M g L))
    \
    T_B &= 2pi sqrt((11/10M L^2)/(M g L))
    \
    bold(T_B &= 2pi sqrt((11L)/(10g)))
  $
]



== Damped Oscillations
- In real-world systems, dissipative forces cause decreases in amplitude over time, known as *damping*.
- This motion is known as *damped oscillation*.
- An simple example of this is a frictional damping force directly proportional to a harmonic oscillator's velocity:
  - The *damping constant* is denoted by $b$.
$
  F_d &prop v_x \
  F_d &= - b v_x
$

- Thus, we can describe the net force of a simple damped oscillation as follows:
$
  Sigma F_x &= -k x -b v_x \
$
#columns(2)[
  $
    -k x - b v_x &= m a_x
  $
  #colbreak()
  $
    -k x - b dv(x,t) &= m dv(x,t,2)
  $
]

- Now, if we solve for the general solution of the differential equation above, we can get a displacement formula for damped oscillations.
- Below, we will solve for the general solution _when the damping force is relatively small._
$
  -k x - b dv(x,t) &= m dv(x,t,2) \
  m dv(x,t,2) + b dv(x,t) + k x  &= 0 \
  m (e^(lambda t))'' + b (e^(lambda t))' + k e^(lambda t) &= 0 \
  m lambda^2 e^(lambda t) + b lambda e^(lambda t) + k e^(lambda t) &= 0 \
  m lambda^2 + b lambda + k &= 0 \ 
  lambda &= (-b plus.minus sqrt(b^2 - 4 m k))/(2m) \
  lambda &= -b/(2m) plus.minus sqrt(b^2/(4m^2) - k/m) \
  lambda &= -b/(2m) plus.minus i sqrt(k/m - b^2/(4m^2)) \
$

- We pull out an $i$ because when the damping force is small, $b^2 / (4m^2) < k/m$.
$
  e^(lambda_1 t) &= e^(-b/(2m) t) e^(i sqrt(k/m - b^2/(4m^2)) t) \
  e^(lambda_1 t) &= e^(-b/(2m) t) (cos(sqrt(k/m - b^2/(4m^2)) t) + i sin(sqrt(k/m - b^2/(4m^2)) t) ) \ \ \

  e^(lambda_2 t) &= e^(-b/(2m) t) e^(-i sqrt(k/m - b^2/(4m^2)) t) \
  e^(lambda_2 t) &= e^(-b/(2m) t) (cos(-sqrt(k/m - b^2/(4m^2)) t) + i sin(-sqrt(k/m - b^2/(4m^2)) t) ) \ 
  e^(lambda_2 t) &= e^(-b/(2m)) (cos(sqrt(k/m - b^2/(4m^2)) t) - i sin(sqrt(k/m - b^2/(4m^2)) t) )
$

- Now, the only solution we are interested in is one where $c_1=c_2$.
$
  therefore x &= c_1 e^(lambda_1 t) + c_2 e^(lambda_2 t) \
  x &= A e^(-b/(2m)t)cos(sqrt(k/m - b^2/(4m^2)) t) 
$

- We can let $phi.alt$ be decided by an initial condition of the differential equation.

#definition[Underdamping SHM Equations][
  Let $omega'$ be the *damped frequency* when the damping is small.
  $
    omega' &= sqrt(k/m - b^2/(4m^2)) \
    x &= A e^(-b/(2m)t)cos(omega't + phi.alt)
  $
]

- Notice how angular frequency's value can be positive, zero, or imaginary. In each case, there is a specific name for the condition.
  - *Underdamping:* The system will oscillate with decreasing amplitude. This is because $lambda$ is given by a complex conjugate pair.
  $
    b^2 < 4 m k
  $
  - *Critical damping:* The system will no longer oscillate, but will tend to its equilibrium condition.
  $
    b^2 = 4 m k
  $
  - *Overdamping:* The system will no longer oscillate, but will tend to its equilibrium condition, albeit at a slower rate than with critical damping.
  $
    b^2 > 4 m k
  $