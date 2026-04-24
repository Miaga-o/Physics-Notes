/*
* Package imports
*/
#import "@preview/hydra:0.6.2": hydra
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge, shapes
#import "@preview/itemize:0.2.0" as el
#import "@preview/delimitizer:0.1.0": big, bigg, Big, Bigg, scaled-delimiter, paired-delimiter
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1": *
#import "@preview/lovelace:0.3.1": *
#import "@preview/theorion:0.6.0": *
#import cosmos.fancy: *



/*
* Organization functions
*/


//Emphasis box continuation
#let continue_box = align(center, [_Continued on next page_])

//Me
#let author = "Miagao"



/*
* Math functions
*/

//Leibniz derivative
#let dv(derivative_of, respect_to) = $(dif #derivative_of) / (dif #respect_to)$
//nth order leibniz derivative
#let ndv(derivative_of, respect_to, order) = $(dif^order #derivative_of) / (dif #respect_to^order)$
//Leibniz partial derivative
#let pdv(derivative_of, respect_to) = $(partial #derivative_of) / (partial #respect_to)$
//Evaluated integral
#let eval(lower_bound, upper_bound) = $bigg(|)_#lower_bound^#upper_bound$
//Magnitude of a vector
#let mag(vector) = $lr(||#vector||)$
//Bold upright emphasis
#let bf(matrix) = $upright(bold(#matrix))$



//Template
#let template(
  doc_title: "",
  doc_font: "Libertinus Serif",
  math_font: "New Computer Modern Math",
  numbering_depth: 0,
  page_style: "a4",
  body
) = [
  //Page
  #set page(page_style, numbering: "1 of 1", header: context {
    if here().page() != 1 {
      align(right, emph(hydra(2)))
      line(length: 100%)
    }
  })

  

  //Text
  #set text(font: doc_font, size: 12pt)
  #show math.equation: set text(font: math_font)



  //Headings
  #show heading.where(level: 1): set text(size: 24pt)
  #show heading.where(level: 1): it => pagebreak(weak: true) + it
  #show heading.where(level: 2): set text(size: 22pt)
  #show heading.where(level: 3): set text(size: 20pt)
  #show heading.where(level: 4): set text(size: 18pt)
  #show heading.where(level: 4): set text(size: 16pt)
  #show heading.where(level: 4): set text(size: 14pt)

  #let custom_numbering = (..numbers) => { 
    if numbers.pos().len() <= numbering_depth {
      numbering("1.1", ..numbers)
    }
  }
  #set heading(numbering: custom_numbering)



  //Lists
  #set enum(numbering: "1.a)")
  #show: el.default-enum-list



  //Other
  #show: codly-init.with()
  #show: show-theorion
  #codly(languages: codly-languages)

  //Title page
  #show title: set text(size: 30pt)
  #align(center)[#title(doc_title) #author]

  #outline()
  #pagebreak()

  #body
]