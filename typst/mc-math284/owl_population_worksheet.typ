#import "../../presets.typ": *
#import "@preview/shadowed:0.3.0": shadow
#show: template.with(show_header: false, show_title: false)
#set page(header: align(right)[Joshua Villar \ MATH 284])


#let answer(answer) = {
  shadow(
    blur: 8pt, fill: rgb(89, 85, 101, 25%), radius: 4pt,
    block(fill: white, inset: 10pt, radius: 4pt)[#answer]
  )
}

#let doc_title = [
  #pagebreak(weak: true)
  == Modeling Owl Populations
  #stack(
    line(length: 100%, stroke: 2pt),
    line(length: 100%, stroke: 2pt),
    spacing: 4pt
  )
]



#doc_title
Let $bf(x)_k = mat(j_k;s_k;a_k)$ and $bf(A) = mat(0, 0, 0.33;t, 0, 0;0, 0.71, 0.94)$ where $j_k$, $s_k$, and $a_k$ denote the number of owls in the juvenile, subadult, and adult stages in year $k$, respectively, $bf(A)$ is the transition matrix such that \ $bf(x)_k = bf(A x)$, and $t$ is some parameter.
#v(20pt)

#enum.item(1)[
  Explain in one or two complete sentences the significance of each of the numbers $0.33$, $0.71$, and $0.94$ in $bf(A)$, as well as the significance of the parameter $t$, in the context of this problem.

  #answer([
    From one year to the next, $0.33$ represents the fraction of adult owls that produced a juvenile owl, $0.71$ represents the fraction of subadult owls that survived and matured into adult owls, and $0.94$ represents the fraction of adult owls that survived.
    The parameter $t$ represents the fraction of juvenile owls that survived and matured into subadult owls.
  ])
]

\

#enum.item(2)[
  _Using MATLAB and $t=0.2$:_
  #enum.item(1)[Find the eigenvalues of $bf(A)$:]
  #answer(table(columns: (33.33%, 33.34%, 33.33%), stroke: none, $ lambda_1=-0.0240+0.2165i $, $ lambda_2=-0.0240-0.2165i $, $ lambda_3=0.9880 $))
  #enum.item(2)[Find the magnitude of the eigenvalues, and list the dominant eigenvalue below:]
  #answer(table(columns: (100%), stroke: none, 
    $
      mag(lambda_1) = mag(lambda_2) = 0.2178 &<= abs(lambda_3) = 0.9880
      \
      lambda_"dom" &= lambda_3 = 0.9880
    $
  ))
]

\

#enum.item(3)[
  Find the dominant eigenvalue for the following values of $t$:
  #table(
    fill: (x, y) => if x == 0 or y == 0 {white.darken(5%)},
    columns: (17%, 16.6%, 16.6%, 16.6%, 16.6%, 16.6%),
    stroke: (paint: black.lighten(50%)),
    align(right, [$t$:]), $0.22$, $0.24$, $0.26$, $0.28$, $0.3$,
    align(right, [Dominant Eigenvalue:]), $ 0.9923 $, $ 0.9966 $, $ 1.0008 $, $ 1.0050 $, $ 1.0090 $  
  )
]

\

#enum.item(4)[
  #enum.item(1)[What is the smallest value of $t$ you checked for which the dominant eigenvalue was greater than $1$? This is called the *critical value* of $t$:]
  #answer(table(columns: (100%), stroke: none, $ t_"crit" = 0.26 $))
  #enum.item(2)[Interpret in a complete sentence the significance of the critical value of $t$.]
  #answer([
    The critical value of $t$ approximately represents the lowest juvenile owl survival rate where the total owl population is growing.
  ])
]

#doc_title

#enum.item(5)[
  Using your student M\#, create a vector $bf(v)_0$ such that $j_0$ is the first $3$ digits, $s_0$ is the next $3$ digits, and $a_0$ is the last $2$ digits.
  Create a live script in MATLAB using a parameter $0 < t < t_"crit"$ that models the population growth of all owl stages for $20$ years given $bf(v)_0$.
  Do the graphs look like you would expect based on your earlier calculations and interpretations? Why or why not?
  

  ```matlab
    clear
    t = 0.05; % Parameter, some positive value less than t's critical value
    A = [0 0 0.33;t 0 0;0 0.71 0.94]; % Transition matrix
    v0 = [212;5;4]; % Initial state vector, based on M21200504

    % Looping data over 20 years
    x = v0;
    P = x; % Matrix containing the state vectors over 20 years
    for i=1:20
        x = A * x;
        P = [P x]; % Augmenting P with each new state vector x
    end

    years = 0:20;
    plot(years, P)
    xlabel("Years")
    ylabel("Owl Stage Populations")
    title("Owl Stages Poplulation Growth Model for t=0.05")
    legend("Juvenile", "Subadult", "Adult")
  ```

  #figure(image("../../images/mc-math284/owl_population_q5.png"))
]

#doc_title

#enum.item(5)[
  _Explanation_
  #answer([
    The graph does match my earlier interpretations. As more years pass, the population of juvenile owls closely matches $0.33$ times the previous year's adult owl population.

    The population of subadult owls as the years go on is extremely close to zero, corresponding to $t=0.05$ times the previous year's juvenile owl population resulting in a small product.

    The population of adult owls also closely matches $0.94$ times the previous year's adult owl population plus $0.71$ times the previous year's very small (essentially zero in later years) subadult owl population, leading to slight decay in the adult owl population over time.

    Additionally, the graph shows slight population decay across all owl stages, showing a net decrease in the owl population over time. This is supported by my previous interpretation that $t_"crit"$ is approximately the lowest $t$ value that supported net owl population growth because $t = 0.05 < t_"crit"$.
  ])
]

#doc_title

#enum.item(6)[
  Repeat the process, but using a parameter slightly greater than $t_"crit"$.

  ```matlab
    clear
    t = 0.27; % Parameter, slightly greater than the critical value for t
    A = [0 0 0.33;t 0 0;0 0.71 0.94]; % Transition matrix
    v0 = [212;5;4]; % Initial state vector, based on M21200504

    % Looping data over 20 years
    x = v0;
    P = x; % Matrix containing the state vectors over 20 years
    for i=1:20
        x = A * x;
        P = [P x]; % Augmenting P with each new state vector x
    end

    years = 0:20;
    plot(years, P)
    xlabel("Years")
    ylabel("Owl Stage Populations")
    title("Owl Stages Poplulation Growth Model for t=0.27")
    legend("Juvenile", "Subadult", "Adult")
  ```
  #figure(image("../../images/mc-math284/owl_population_q6.png", width: 100%))
]

#doc_title

#enum.item(6)[
  _Explanation_
  #answer([
    The graph does match my earlier interpretations. As more years pass, the population of juvenile owls closely matches $0.33$ times the previous year's adult owl population.

    The population of subadult owls as the years go on closely matches $t=0.27$ times the previous year's juvenile owl population.

    The population of adult owls also closely matches $0.94$ times the previous year's adult owl population plus $0.71$ times the previous year's subadult owl population, leading to a slight growth in the adult owl population over time.

    Additionally, the graph shows slight population growth across all owl stages, showing a net increase in the owl population over time. This is supported by my previous interpretation that $t_"crit"$ is approximately the lowest $t$ value that supported net owl population growth because $t=0.27 > t_"crit"$.
  ])
]