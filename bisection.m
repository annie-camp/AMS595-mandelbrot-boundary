%% use the bisection algorithm to approximate the boundary of the fractal

function m = bisection(fn_f, s, e)
    % BISECTION Function to find a root of a function using the bisection method
    %
    % Inputs:
    %     fn_f - function handle for root to be found
    %     s - start of interval
    %     e - end of interval
    %
    % Output:
    %     m - the estimated root of the function

    % Evaluate at the endpoints
    fs = fn_f(s); fe = fn_f(e);
    % Check if different signs at the endpoints
    if fs*fe >= 0, m = NaN; return; end
    tol = 1e-6; % tolerance for convergence
    maxit = 60; % max iterations
    for i = 1:maxit
        % Calculate midpoint of interval
        m = 0.5*(s + e);
        fm = fn_f(m); % evaluate at the midpoint
        % Check for convergence or if the root is found
        if fm == 0 || (e - s) < tol, return; end
        % Update the interval based on the sign of the function
        if fs*fm < 0
            e = m; fe = fm; % root is in the left half
        else
            s = m; fs = fm; % root is in the right half
        end
    end
    % Return the final midpoint as the estimated root
    m = 0.5*(s + e);
end
