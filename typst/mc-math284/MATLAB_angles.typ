#import "../../presets.typ": *
#import "@preview/physica:0.9.8": super-T-as-transpose
#show: template.with(show_title: false, show_header: false)
#show: super-T-as-transpose

#set page(header: [
  #align(right)[Joshua Villar \ MATH 284]
])

#let doc_title = [
  #pagebreak(weak: true)
  #stack(
    [== MATLAB Angles],
    line(length: 100%, stroke: (dash: "dotted", thickness: 2pt)),
    spacing: 7pt
  )
]

#let (effect-counter, effect-box, effect, show-effect,
) = make-frame(
  "effect",
  "Effect",
  counter: theorem-counter,
  render: fancy-box.with(
    get-border-color: get-tertiary-border-color,
    get-body-color: get-tertiary-body-color,
    get-symbol: get-tertiary-symbol,
  ),
)
#show: show-effect

#let (answer-counter, answer-box, answer, show-answer,
) = make-frame(
  "answer",
  "Answer",
  counter: theorem-counter,
  render: fancy-box.with(
    get-border-color: get-secondary-border-color,
    get-body-color: get-secondary-body-color,
    get-symbol: get-secondary-symbol,
  ),
)
#show: show-answer
#set-inherited-levels(0)




#doc_title
This worksheet contains a list of MATLAB commands that you may want/need for the problem at the end.
Some of these commands will be familiar, but they are included to contrast them with new ones.
Enter each of these, and pay careful attention to the outputs to see exactly what the commands are doing.

For each of the following, let $bf(A)$ be the matrix $mat(align: #right, 1, 3, -6, 1;-1, 1, 5, -6;-2, 2, -2, 3;4, 0, 5, 2)$ and $bf(B)$ be the vector $vec(1, 5, 3, 2)$.
#v(4em)



```matlab
A*A
```
#effect[
  Computes the matrix product $bf(A) bf(A)$.
  $
    bf(A) bf(A) = mat(align: #right,
      14, -6, 26, -33;
      -36, 8, -29, -4;
      12, -8, 41, -14;
      2, 22, -24, 23
    )
  $
]
#v(2em)



```matlab
A.*A
```
#effect[
  Computes the products of corresponding entries between $bf(A)$ and $bf(A)$, essentially squaring every entry in $bf(A)$:
  $

    mat(
      1, 9, 36, 1;
      1, 1, 25, 36;
      4, 4, 4, 9;
      16, 0, 25, 4
    )
  $
]




#doc_title



```matlab
sum(A)
```
#effect[
  Computes the column sums of each column in $bf(A)$ as a row vector:
  $
    mat(2, 6, 2, 0)
  $
]
#v(2em)


Combining two of the above, what does ```matlab sum(A.*A)``` do, and why would the output be important, based on what we've previously done in class?
#answer[
  The code snippet ```matlab sum(A.*A)``` computes the column sums of each column in $bf(A)$ after all of $bf(A)$'s entries are squared:
  $
    mat(22, 14, 90, 50)
  $

  This output is important because each entry is a dot product of a column vector of $bf(A)$ with itself. Essentially:
  $
    mat(22, 14, 90, 50) &= 
    mat(column-gap: #1.5em, bf(a)_1 dot bf(a)_1, bf(a)_2 dot bf(a)_2, bf(a)_3 dot bf(a)_3, bf(a)_4 dot bf(a)_4,) 
    \
    &= mat(mag(bf(a)_1)^2, mag(bf(a)_2)^2, mag(bf(a)_3)^2, mag(bf(a)_4)^2)
  $

  A dot product of a vector with itself is used in orthogonal projections.
]
#v(2em)


```matlab
[A B]
```
#effect[
  Creates a matrix using the columns of $bf(A)$, then augments the result with $bf(B)$.
  $
    mat(align: #right, augment: #4,
      1, 3, -6, 1, 1;
      -1, 1, 5, -6, 5;
      -2, 2, -2, 3, 3;
      4, 0, 5, 2, 2
    )
  $
]
#v(2em)



#doc_title




```matlab
vertcat(A,B')
```
#effect[
  Creates a matrix using the rows of $bold(A)$, then concatenates the row vector $bf(B)^T$ to the bottom.
  $
    mat(align: #right,
      1, 3, -6, 1;
      -1, 1, 5, -6;
      -2, 2, -2, 3;
      4, 0, 5, 2;
      1, 5, 3, 2
    )
  $
]
#v(2em)


```matlab
R = rand(4,6)
```
#effect[
  Creates a $4 $$times$$ 6$ matrix $bf(R)$ where each entry is given by $0 < R_(i j) < 1$.
  $
    bf(R)_"ex" = mat(column-gap: #10pt,
      0.8147, 0.6324, 0.9575, 0.9572, 0.4218, 0.6557;
      0.9058, 0.0975, 0.9649, 0.4854, 0.9157, 0.0357;
      0.1270, 0.2785, 0.1576, 0.8003, 0.7922, 0.8491;
      0.9134, 0.5469, 0.9706, 0.1419, 0.9595, 0.9340;
    )
  $
]
#v(2em)


```matlab
sortrows(A)
```
#effect[
  Sorts the rows of $bf(A)$ by their first entry in each row in ascending order.
  $
    mat(align: #right,
      -2, 2, -2, 3;
      -1, 1, 5, -6;
      1, 3, -6, 1;
      4, 0, 5, 2
    )
  $
]
#v(2em)



#doc_title



What do these variations on the sortrows command do?
You may want to test your conjectures by trying these commands on different matrices.

```matlab
[E, index] = sortrows(A)
```
#effect[
  Sorts the rows of $bf(A)$ by their first entry in ascending order and initializes $bf(E)$ to that result. Then, column vector $"index"$ is initialized such that the value of each $i$th entry is the original row index of the corresponding $i$th row in $bf(E)$.
  #table(columns: (50%, 50%), stroke:none,
    $
      bf(E) = mat(align: #right,
        -2, 2, -2, 3;
        -1, 1, 5, -6;
        1, 3, -6, 1;
        4, 0, 5, 2
      )
    $,
    $
      "index" = vec(3,2,1,4)
    $
  )
]
#v(2em)


```matlab
sortrows(A,"descend")
```
#effect[
  Sorts the rows of $bf(A)$ by their first entry in descending order.
  $
    mat(align: #right,
      4, 0, 5, 2;
      1, 3, -6, 1;
      -1, 1, 5, -6;
      -2, 2, -2, 3;
    )
  $
]
#v(2em)


```matlab
sortrows(A,2)
```
#effect[
  Sorts the rows of $bf(A)$ by their second entry in each row in ascending order.
  $
    mat(align: #right,
      4, 0, 5, 2;
      -1, 1, 5, -6;
      -2, 2, -2, 3;
      1, 3, -6, 1;
    )
  $
]



#doc_title



What does this M-file do?
Try to predict what it will compute, then enter it into MATLAB to check.
#table(columns: (50%, 50%), stroke: none,
  ```matlab
  R = rand(4,6)
  S = sqrt(sum(R.*R))
  for i=1:6
    R(:,i) = R(:,i)/S(i)
  end
  ```,
  answer[
    This routine generates a $4$$times$$6$ matrix of randomly generated numbers, each between $0$ and $1$, exclusive. Then, each column vector in $bf(R)$ is divided by its magnitude, converting each of them into unit vectors. The end result is a matrix $bf(R)$ of only $RR^4$ unit vectors.
  ]
)



#stack(
  line(length: 100%),
  line(length: 100%, stroke: 2pt),
  line(length: 100%),
  spacing: 2pt
)

Now your mini-project, write a Live Script which does the following:

#enum.item(1)[Creates a matrix with 10 columns, each of which is a randomly generated vector in $RR^3$.]
#enum.item(2)[For each column vector, determines the cosine of the angle between it and the vector $mat(1,2,3)$.]
#enum.item(3)[Ranks the vectors from 1 (the largest cosine) to 10 (the smallest cosine), and displays the rankings.]  

```matlab
R = rand(3,10)
cosines = zeros(1,10);
ref_vec = [1;2;3];
ref_vec_mag = sqrt(dot(ref_vec, ref_vec));

for i=1:10
    vec_mag = sqrt(dot(R(:,i), R(:,i))); % ith random vector magnitude
    cosines(:,i) = dot(R(:,i), ref_vec) / (vec_mag*ref_vec_mag); % Cosines of the angles between each vector and the reference vector
end

vec_cosines = transpose(sortrows(transpose(vertcat(R, cosines)), 4, "descend")); % All vectors and their corresponding angles formed with the reference vector, sorted from greatest cosine to least

% Displaying the rankings
for i=1:10
    disp(i + ") Cosine: " + vec_cosines(4,i))
    disp(vec_cosines(1:3,i))
end

```