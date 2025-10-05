%% use polynomial function approximation to find boundary as a function

function l = poly_len(p, s, e)
    % POLY_LEN Function to calculate the length of a polynomial curve
    %
    % Inputs:
    %     p - coefficients of the polynomial
    %     s - start of the interval
    %     e - end of the interval
    %
    % Output:
    %     l - length of the polynomial curve from s to e

    % Compute the derivative of the polynomial
    dp = polyder(p);
    % Define the integrand for the arc length formula
    ds = @(x) sqrt(1 + (polyval(dp,x)).^2);
    % Calculate the length of the curve using numerical integration
    l = integral(ds, s, e);
end
