**1. Vectors and Vector Spaces**

*Vectors* are mathematical objects that have both magnitude and direction. They can be represented as ordered lists of numbers (components), such as **v** = [v₁, v₂, ..., vₙ] in ℝⁿ. Vectors are fundamental in representing quantities like displacement, velocity, and force in physics.

A *vector space* is a set of vectors that can be added together and multiplied by scalars (real or complex numbers), satisfying specific properties known as the vector space axioms (closure, associativity, commutativity, existence of additive identity and inverses, distributive properties, etc.).

**Examples**:
- **ℝ² and ℝ³**: The sets of all ordered pairs and triples of real numbers, respectively.
- **Function Spaces**: The set of all continuous functions on an interval forms a vector space.

**Operations in Vector Spaces**:
- **Vector Addition**: Adding corresponding components of two vectors. For **u** = [u₁, u₂] and **v** = [v₁, v₂], **u** + **v** = [u₁ + v₁, u₂ + v₂].
- **Scalar Multiplication**: Multiplying each component of a vector by a scalar c: c**v** = [cv₁, cv₂].

**Key Concepts**:
- **Zero Vector**: The additive identity in a vector space, represented by **0** = [0, 0, ..., 0].
- **Negative of a Vector**: For **v**, its negative is -**v** = [-v₁, -v₂, ..., -vₙ].

Understanding vectors and vector spaces is crucial because they form the foundation for all other concepts in linear algebra. They allow us to model and solve problems involving multiple quantities that can be represented numerically.

---

**2. Matrices and Matrix Operations**

*Matrices* are rectangular arrays of numbers arranged in rows and columns. An m x n matrix has m rows and n columns. Matrices are used to represent linear transformations and to solve systems of linear equations.

**Matrix Operations**:

- **Addition/Subtraction**: Only matrices of the same dimensions can be added or subtracted, element by element.
  
  *Example*:
  ```
  A = |1  2|    B = |4  5|    A + B = |1+4  2+5| = |5  7|
      |3  4|        |6  7|            |3+6  4+7|   |9 11|
  ```

- **Scalar Multiplication**: Multiplying each element of the matrix by a scalar value.
  
  *Example*:
  ```
  c = 2, A = |1 2|
             |3 4|
  
  cA = |2*1  2*2| = |2  4|
       |2*3  2*4|   |6  8|
  ```

- **Matrix Multiplication**: The product of an m x n matrix A and an n x p matrix B is an m x p matrix C, where each element cᵢⱼ = Σᵣ aᵢᵣbᵣⱼ.
  
  *Example*:
  ```
  A = |1 2|
      |3 4|    B = |5 6|
                   |7 8|

  AB =  |(1*5 + 2*7)  (1*6 + 2*8)| = |19  22|
        |(3*5 + 4*7)  (3*6 + 4*8)|   |43  50|
  ```

- **Transpose**: Flipping a matrix over its diagonal. The transpose of matrix A is denoted by Aᵗ.
  
  *Example*:
  ```
  A = |1 2|
      |3 4|
  
  Aᵗ =  |1 3|
        |2 4|
  ```

- **Inverse**: For a square matrix A, the inverse A⁻¹ satisfies AA⁻¹ = A⁻¹A = I, where I is the identity matrix. Not all matrices are invertible.

**Properties**:
- **Associative**: (AB)C = A(BC)
- **Distributive**: A(B + C) = AB + AC

Matrices provide a compact way to handle multiple linear equations and transformations simultaneously, which is pivotal in engineering and computer science applications.

---

**3. Systems of Linear Equations**

A *system of linear equations* consists of multiple equations with the same set of variables. The solution is the set of variable values that satisfy all equations simultaneously.

**Example**:
```
Equation 1: x + 2y = 5
Equation 2: 3x - y = 4
```

**Methods of Solving**:

- **Graphical Method**: Plot each equation on a graph; the point(s) of intersection represent the solution(s).
- **Substitution Method**: Solve one equation for one variable and substitute into the other(s).
  
  *Example*:
  From Equation 1: x = 5 - 2y
  Substitute into Equation 2: 3(5 - 2y) - y = 4

- **Elimination Method**: Add or subtract equations to eliminate a variable.
  
  *Example*:
  Multiply Equation 1 by 1 and Equation 2 by 2:
  ```
  x + 2y = 5          (1)
  6x - 2y = 8         (2)
  Add (1) and (2):
  (x + 6x) + (2y - 2y) = 5 + 8
  7x = 13 ⇒ x = 13/7
  ```

- **Matrix Methods**:
  - **Gaussian Elimination**: Transforming the augmented matrix into row-echelon form.
  - **Cramer's Rule**: Using determinants to find solutions when the system has the same number of equations as variables.

**Application**:

Such systems arise in various fields, such as electrical engineering (solving circuit equations), economics (equilibrium models), and physics (force balances).

---

**4. Determinants**

The *determinant* is a scalar value calculated from a square matrix, denoted as det(A) or |A|. It provides important information about the matrix, such as whether it is invertible and the volume scaling factor of the linear transformation it represents.

**Calculating Determinants**:

- **For 2x2 Matrices**:
  ```
  A = |a  b|
      |c  d|
  
  det(A) = ad - bc
  ```
  
- **For 3x3 Matrices**:
  Using the rule of Sarrus or expansion by minors.
  ```
  A = |a₁₁  a₁₂  a₁₃|
      |a₂₁  a₂₂  a₂₃|
      |a₃₁  a₃₂  a₃₃|
  
  det(A) = a₁₁(a₂₂a₃₃ - a₂₃a₃₂) - a₁₂(a₂₁a₃₃ - a₂₃a₃₁) + a₁₃(a₂₁a₃₂ - a₂₂a₃₁)
  ```

**Properties**:

- **Zero Determinant**: If det(A) = 0, the matrix is singular (non-invertible), and the system of equations has either no solution or infinitely many solutions.

- **Effect on Volume**: The absolute value of the determinant of a transformation matrix equals the scaling factor of volume under the transformation.

**Example**:

Given matrix:

```
A =  |2  3|
     |1  4|

det(A) = (2)(4) - (3)(1) = 8 - 3 = 5
```

Since det(A) ≠ 0, A is invertible.

**Applications**:

- **Change of Variables in Integrals**: Determinants are used in Jacobians when changing variables in multiple integrals.
- **Eigenvalues**: The determinant helps in finding characteristic polynomials for eigenvalues.

---

**5. Eigenvalues and Eigenvectors**

An *eigenvector* of a square matrix A is a non-zero vector **v** that satisfies A**v** = λ**v**, where λ is a scalar known as the *eigenvalue* corresponding to **v**.

**Finding Eigenvalues and Eigenvectors**:

1. **Eigenvalues (λ)**:
   - Solve the characteristic equation det(A - λI) = 0.
   
2. **Eigenvectors**:
   - For each eigenvalue λ, solve (A - λI)**v** = **0** for **v**.

**Example**:

Let A be:
```
A =  |4  1|
     |2  3|

Compute det(A - λI) = 0:
```
|4-λ  1  |
|2    3-λ| = (4-λ)(3-λ) - 2*1 = λ² - 7λ + 10 = 0

Solving λ² - 7λ + 10 = 0 yields λ = 5 and λ = 2.

For λ = 5:
(A - 5I)**v** = 0
```
| -1  1|   |v₁| = |0|
|  2 -2|   |v₂|   |0|
```
Solving yields eigenvector **v** = [1, 1]ᵗ.

**Applications**:

- **Differential Equations**: Solving systems with constant coefficients.
- **Stability Analysis**: Determining the stability of equilibrium points in dynamical systems.

---

**6. Linear Transformations**

A *linear transformation* T from vector space V to W is a function that preserves addition and scalar multiplication:

T(c**u** + d**v**) = cT(**u**) + dT(**v**)

**Matrix Representation**:

- Any linear transformation from ℝⁿ to ℝᵐ can be represented by an m x n matrix A such that T(**x**) = A**x**.

**Examples**:

- **Scaling**: T(**x**) = k**x**, where k is a scalar.
  
  Matrix A = kI, where I is the identity matrix.

- **Rotation in ℝ²**:
  ```
  T(x, y) = (x cosθ - y sinθ, x sinθ + y cosθ)
  ```
  
  Matrix A = |cosθ  -sinθ|
              |sinθ   cosθ|

**Properties**:

- **Kernel (Null Space)**: Set of vectors mapped to zero.
- **Image (Range)**: Set of vectors that are outputs of T.

**Applications**:

- **Computer Graphics**: Rendering, rotating, and transforming images.
- **Physics**: Modeling physical transformations and symmetries.

---

**7. Span, Basis, and Dimension**

- **Span**: The set of all possible linear combinations of a given set of vectors. If vectors **v₁**, **v₂**, ..., **vₖ** are in V, then their span is:

  span{**v₁**, **v₂**, ..., **vₖ**} = {c₁**v₁** + c₂**v₂** + ... + cₖ**vₖ** | cᵢ ∈ ℝ}

- **Basis**: A set of linearly independent vectors that span the vector space V. Every vector in V can be uniquely expressed as a linear combination of the basis vectors.

- **Dimension**: The number of vectors in any basis of V, denoted as dim(V).

**Example**:

In ℝ³, the standard basis is:
- **e₁** = [1, 0, 0]
- **e₂** = [0, 1, 0]
- **e₃** = [0, 0, 1]

These vectors are linearly independent and span ℝ³.

**Determining Linear Independence**:

Vectors **v₁**, **v₂**, ..., **vₖ** are linearly independent if the only solution to c₁**v₁** + c₂**v₂** + ... + cₖ**vₖ** = **0** is c₁ = c₂ = ... = cₖ = 0.

**Applications**:

- **Coordinate Systems**: Changing from one basis to another for simplification.
- **Data Analysis**: Identifying the intrinsic dimensionality of data sets.

---

**8. Rank and Nullity**

- **Rank**: The dimension of the column space (range) of a matrix A. It represents the number of linearly independent columns (or rows) in A.

- **Nullity**: The dimension of the null space (kernel) of A. It indicates the number of solutions to A**x** = **0**.

**Rank-Nullity Theorem**:

For an m x n matrix A:

rank(A) + nullity(A) = n

**Example**:

Given matrix A:
```
A =  |1 2 3|
     |4 5 6|
     |7 8 9|
```
The rank of A is 2 (since the rows are linearly dependent), so nullity(A) = 3 - 2 = 1.

**Applications**:

- **Solving Linear Systems**: Understanding the number of solutions (unique, infinite, or none).
- **Control Theory**: Designing systems with desired properties.

---

**9. Inner Product and Orthogonality**

- **Inner Product**: A function that assigns a scalar to a pair of vectors in a way that generalizes the dot product.

  In ℝⁿ, the standard inner product is:

  (**u**, **v**) = u₁v₁ + u₂v₂ + ... + uₙvₙ

- **Orthogonality**: Two vectors **u** and **v** are orthogonal if their inner product is zero: (**u**, **v**) = 0.

- **Norm**: The length or magnitude of a vector **v**, defined as:

  ||**v**|| = sqrt((**v**, **v**))

**Examples**:

- **Orthogonal Vectors**: **u** = [1, 0, 0], **v** = [0, 1, 0], (**u**, **v**) = 0.

**Applications**:

- **Projections**: Projecting one vector onto another.
  
  The projection of **u** onto **v** is:

  proj_**v**(**u**) = [(**u**, **v**) / (**v**, **v**)] **v**

- **Orthogonal Complement**: The set of all vectors orthogonal to a given set.

---

**10. Orthogonal and Orthonormal Bases**

An *orthogonal basis* is a basis where all vectors are mutually orthogonal. An *orthonormal basis* is an orthogonal basis where all vectors are unit vectors (norm equal to 1).

**Advantages**:

- Simplifies computations since coefficients in linear combinations are easily found using inner products.

**Gram-Schmidt Process**:

A method to convert a set of linearly independent vectors into an orthogonal (or orthonormal) set.

**Example**:

Given vectors **v₁** and **v₂** in ℝ²:

```
**v₁** = [1, 1]
**v₂** = [1, -1]

Step 1: Set **u₁** = **v₁**

Step 2: Compute **u₂** = **v₂** - proj_**u₁**(**v₂**)
```

Compute projection:

```
proj_**u₁**(**v₂**) = [(**v₂**, **u₁**) / (**u₁**, **u₁**)] **u₁**

(**v₂**, **u₁**) = (1)(1) + (-1)(1) = 0

So proj_**u₁**(**v₂**) = 0

Thus, **u₂** = **v₂**
```

Normalize:

```
**e₁** = **u₁** / ||**u₁**|| = [1/√2, 1/√2]
**e₂** = **u₂** / ||**u₂**|| = [1/√2, -1/√2]
```

Now, {**e₁**, **e₂**} is an orthonormal basis.

**Applications**:

- **Signal Processing**: Decomposing signals into orthogonal components.
- **Quantum Mechanics**: States represented in terms of orthonormal basis vectors.

---

**11. Diagonalization**

A matrix A is *diagonalizable* if it can be expressed in the form A = PDP⁻¹, where D is a diagonal matrix, and P is a matrix whose columns are the eigenvectors of A.

**Process**:

1. Find all eigenvalues λ of A.
2. For each λ, find the corresponding eigenvectors.
3. Form matrix P with eigenvectors as columns.
4. Form matrix D with eigenvalues on the diagonal.

**Example**:

Given matrix A:
```
A =  |3  0|
     |0  2|
```
Since A is already diagonal, it is trivially diagonalizable with P = I and D = A.

**Applications**:

- Simplifies computation of Aⁿ.
- Used in solving systems of differential equations.

---

**12. Singular Value Decomposition (SVD)**

*SVD* decomposes any m x n matrix A into three matrices:

A = UΣVᵗ

- **U**: m x m orthogonal matrix (left singular vectors).
- **Σ**: m x n diagonal matrix with non-negative real numbers (singular values).
- **Vᵗ**: Transpose of n x n orthogonal matrix (right singular vectors).

**Properties**:

- The singular values in Σ are the square roots of the eigenvalues of AᵗA.

**Applications**:

- **Data Compression**: Approximate A using only the largest singular values.
- **Principal Component Analysis (PCA)**: Reduce dimensionality of data sets while preserving variance.
- **Pseudo-Inverse**: Computing solutions to Ax = b when A is not invertible.

**Example**:

Given A is a 3x2 matrix:
```
A =  |1 0|
     |0 1|
     |0 0|
```
Compute SVD to find U, Σ, and Vᵗ.

---

**13. Vector Spaces with Additional Structure**

- **Normed Vector Spaces**: Equipped with a norm function ||**v**|| that assigns lengths to vectors.

- **Metric Spaces**: Equipped with a distance function d(**u**, **v**) = ||**u** - **v**||, satisfying properties like positivity, symmetry, and the triangle inequality.

- **Hilbert Spaces**: Complete inner product spaces where every Cauchy sequence converges within the space.

**Example**:

- **L² Space**: The set of square-integrable functions over an interval, with inner product:

  (**f**, **g**) = ∫ f(x)g(x) dx

**Applications**:

- **Quantum Mechanics**: The state space is a Hilbert space.
- **Functional Analysis**: Study of infinite-dimensional vector spaces.

---

**14. Quadratic Forms**

A *quadratic form* in variables x₁, x₂, ..., xₙ is an expression:

Q(x) = ∑ aᵢⱼ xᵢ xⱼ

Using matrix notation:

Q(**x**) = **xᵗ**A**x**

where A is a symmetric matrix.

**Example**:

In two variables:

Q(x, y) = 2x² + 4xy + y²

Matrix A:
```
A =  |2 2|
     |2 1|
```

**Positive Definite**:

- A quadratic form is positive definite if Q(**x**) > 0 for all non-zero **x**.

**Applications**:

- **Optimization**: Determining maxima and minima of functions.
- **Statistics**: In multivariate analysis, quadratic forms appear in Mahalanobis distance.

---

**15. Change of Basis and Coordinate Systems**

Changing the basis involves expressing vectors and transformations with respect to a different set of basis vectors.

**Process**:

- **Transition Matrix**: A matrix P whose columns are the new basis vectors expressed in terms of the old basis.
- **Coordinate Transformation**:

  If **v**₍ₙₑw₎ = P⁻¹ **v**₍ₒₗd₎

**Example**:

Old basis: B = {**e₁**, **e₂**}
New basis: C = {**c₁**, **c₂**}, where **c₁** = **e₁** + **e₂**, **c₂** = **e₁** - **e₂**

Transition matrix P:
```
P =  |1  1|
     |1 -1|
```

To express a vector in the new basis, compute **v**₍ₙₑw₎ = P⁻¹ **v**₍ₒₗd₎.

**Applications**:

- **Diagonalizing Matrices**: Simplify computations by finding a basis in which the matrix is diagonal.
- **Physics**: Switching between Cartesian, polar, cylindrical coordinate systems.

