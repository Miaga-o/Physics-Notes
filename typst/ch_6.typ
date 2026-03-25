#import "template.typ": *

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

- Because work is defined by a dot product, it is a scalar quantity, although it can still be negative.
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

- It follows that energy is also a scalar quantity.
- However, these formulas only hold when the force remains constant during the displacement.
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
  - Power is also sometimes given in horsepower $("hp")$. The conversion rate is as follows:
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
    P = drv(W,t) = arrow(F) dot arrow(v) = F v cos theta
  $
])

#pagebreak()