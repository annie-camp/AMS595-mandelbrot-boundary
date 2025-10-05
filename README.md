# AMS 595 Assignment 2 — Mandelbrot Boundary Approximation

This project estimates a portion of the **Mandelbrot set boundary** using MATLAB.  
The algorithm applies the **bisection method** along vertical slices of the complex plane to identify the transition between bounded and unbounded points in the iterative map:

$z_{n+1} = z_n^2 + c, \quad z_0 = 0.$

The sampled boundary is then approximated with a **degree-15 polynomial**, and the **arc length** of that fitted curve is computed numerically.

---

## Quick Start

1. Download or clone this repository:  
   - Click **Code → Download ZIP**, or  
   - Run `git clone https://github.com/annie-camp/AMS595-mandelbrot-boundary.git`

2. Open the folder in **MATLAB** and set it as your *Current Folder*.

3. Run the main script:
   ```matlab
   main

---

## Contents

- [**main.m**](https://github.com/annie-camp/AMS595-mandelbrot-boundary/blob/main/main.m) — Main script that runs all parts of the project:
  1. Uses the bisection algorithm to approximate the Mandelbrot boundary  
  2. Fits a degree-15 polynomial to the boundary  
  3. Integrates the fitted curve to find its length  

- [**fractal.m**](https://github.com/annie-camp/AMS595-mandelbrot-boundary/blob/main/fractal.m) — Function that checks whether a complex number $c$ diverges under the iteration $z_{n+1} = z_n^2 + c$.  
  Returns the number of iterations before divergence (or 0 if bounded).

- [**bisection.m**](https://github.com/annie-camp/AMS595-mandelbrot-boundary/blob/main/bisection.m) — Implements the bisection algorithm to locate the transition from bounded to unbounded points along vertical lines in the complex plane.

- [**poly_len.m**](https://github.com/annie-camp/AMS595-mandelbrot-boundary/blob/main/poly_len.m) — Computes the arc length of a polynomial $y = f(x)$ over a given interval using  
  $L = \int_s^e \sqrt{1 + (f'(x))^2} \, dx$.

- [**full_mandelbrot.m**](https://github.com/annie-camp/AMS595-mandelbrot-boundary/blob/main/full_mandelbrot.m) — Optional script that generates the full Mandelbrot set plot and overlays the sampled boundary region for visualization.

- **plots/** — Directory containing generated figures:
  - [Boundary.png](https://github.com/annie-camp/AMS595-mandelbrot-boundary/blob/main/plots/Boundary.png) — Polynomial fit (orange) and sampled boundary points (blue).  
  - [Full_Mandelbrot.png](https://github.com/annie-camp/AMS595-mandelbrot-boundary/blob/main/plots/Full_Mandelbrot.png) — Full Mandelbrot set overview showing where the sampled region lies.
