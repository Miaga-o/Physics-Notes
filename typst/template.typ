#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge, shapes
#import "@preview/itemize:0.2.0" as el
#import "@preview/delimitizer:0.1.0": big, bigg, Big, Bigg, paired-delimiter
#import "@preview/shadowed:0.3.0": shadow



//Organization

/*
* Automatically numbers headings up to level 2
*/
#let custom_numbering = (..numbers) => { 
  if numbers.pos().len() < 3 {
    numbering("1.1", ..numbers)
  }
}

/*
* Emphasized box for definitions
*/
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

/*
* Emphasized box for example problems
*/
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

/*
* Emphasized box for formula derivations
*/
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

/*
* Signifies that an emphasis box will continue on the next page
*/
#let continue_box = align(center, [_Continued on next page_])

/*
* Me
*/
#let author = text(size: 16pt, [Miagao])



//Math

/*
* Derivative
*/
#let drv(derivative_of, respect_to) = $(dif #derivative_of) / (dif #respect_to)$

/*
* nth order derivative
*/
#let ndrv(derivative_of, respect_to, order) = $(dif^order #derivative_of) / (dif #respect_to^order)$

/*
* Partial derivative
*/
#let pdrv(derivative_of, respect_to) = $(partial #derivative_of) / (partial #respect_to)$

/*
* Evaluated integral
*/
#let eval(equation, lower_bound, upper_bound) = $lr((#equation)|)_(#lower_bound)^(#upper_bound)$

/*
* Magnitude of a vector
*/
#let mag(vector) = $lr(||#vector||)$


//Rules

/*
* Page formatting
*/
#let formatting(a) = {
  set page("a4", numbering: "1 of 1")
  set enum(numbering: "1.a)")

  show title: set text(size: 28pt)
  show heading.where(level: 1): set text(size: 20pt)
  show heading.where(level: 2): set text(size: 18pt)
  show heading.where(level: 3): set text(size: 16pt)
  show heading.where(level: 4): set text(size: 14pt)
  set heading(numbering: custom_numbering)

  show math.equation: set text(font: "New Computer Modern Math")
  //set text(font: "Times New Roman")
  show sym.emptyset: set text(font: "Fira Sans")
  show: el.default-enum-list

  a
}