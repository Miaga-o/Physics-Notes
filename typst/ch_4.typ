#import "template.typ": *

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
#figure([
  #cetz.canvas({
    import cetz.draw: *
    let center(len1, len2) = (0 + len1, 0 + len2) //gives position relative to current center location
    rect(center(-1,-1), center(1,1), fill: red)
    circle(center(0,0), radius: 3pt, fill: black)

    //Forces and labels
    line(center(0,0), center(0,1.5), mark: (end: "straight")) //Normal
    content(center(0,1.75), [$arrow(n)$])

    line(center(0,0), center(0,-2.5), mark: (end: "straight")) //Weight
    content(center(0,-2.75), [$arrow(w)$])

    line(center(0,0), center(2,1), mark: (end: "straight")) //Tension
    content(center(2, 1.25), [$arrow(T)$])
    line(center(0,0), center(2,0), stroke: (dash: "dashed"))
    content(center(1.5,-0.25), [$T_x$])
    line(center(2,0), center(2,1), stroke: (dash: "dashed"))
    content(center(2.25,0.5), [$T_y$])
    content(center(0.85,0.2), [$theta$])

    line(center(0,0), center(-2.25, 0), stroke: none) //idk centering
  })],
  supplement: none,
  caption: [Free-body diagram of a block being pulled at an angle $theta$ by a rope.
  Note how the vertical components of the forces are all balanced, signifying that it is being dragged horizontally.]  
)

#pagebreak()