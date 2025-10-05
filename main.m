%% AMS 595 A2 
% Mandelbrot boundary: bisection → polyfit → arc length
clear; clc;

%% PART 1: Use the bisection algorithm to approximate the boundary
% Define the range of x values and initialize variables
xs = linspace(-2, 1, 1000);
s = 0.0; e = 2.0; % start and end points for bisection
ys = NaN(size(xs)); % preallocate y values with NaN

% Loop through each x value to find corresponding y values using bisection
for k = 1:numel(xs)
    x = xs(k);
    % Define the function for the bisection method
    fn = @(y) (fractal(x + 1i*y) > 0)*2 - 1;
    % Check for sign change between s and e
    if fn(s)*fn(e) < 0
        % Apply bisection method to find root
        ys(k) = bisection(fn, s, e);
    end
end

%% PART 2: Polynomial approximation of the boundary
% Polynomial fit for valid y values
valid = ~isnan(ys); % identify valid y values
p = polyfit(xs(valid), ys(valid), 15); % fit a polynomial of degree 15
yfit = polyval(p, xs(valid)); % evaluate the polynomial at valid x values

% Plot the results
figure; 
plot(xs(valid), ys(valid), '.', xs(valid), yfit, 'LineWidth',1.5);
grid on; xlabel('x'); ylabel('y');
title('Mandelbrot boundary and degree-15 polynomial fit');

%% PART 3: Integrate polynomial to find curve length
L = poly_len(p, min(xs(valid)), max(xs(valid)));
fprintf('Curve length: %.8f\n', L);

