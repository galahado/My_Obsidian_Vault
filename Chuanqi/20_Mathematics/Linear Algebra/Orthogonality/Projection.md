The key to projection is [[Orthogonal|Orthogonality]]: The line from b to p is perpendicular to the vector a. 

### projection onto a line
Projecting b onto a with error $e = b - \hat{x}a$
$a \cdot (b -\hat{x}a) = 0$ or $a \cdot b - \hat{x}a \cdot a = 0$
$\hat{x} = \frac{a \cdot b}{a \cdot a} = \frac{a^T b}{a^T a}$

The projection of b onto the line through a is the vector $p = \hat{x}a = \frac{a^Tb}{a^Ta}a$.

$\|p\|=\frac{\|a\|\|b\|\cos\theta}{\|a\|^2}\|a\|=\|b\|\cos\theta.$


### projection onto a subspace
Projection onto a [[Subspace]]
Find the combination $p = \hat{x_1} a_1 + · · · + \hat{x_n}a_n$ an closest to a given vector b.


### projection using orthonormal bases
The [[Least Square]] solution of $Qx = b$ is $x = Q^Tb$. The [[Projection Matrix]] is $QQ^T$

When Q is square and m = n, the subspace is the whole space. 
The projection of b onto the whole space is b itself. In this case $p = b$ and $P = QQ^T = I$.
