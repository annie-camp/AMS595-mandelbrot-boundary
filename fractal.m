%% write a function computing the fractal

function it = fractal(c) % IMP REQ 1
    % FRACTAL  Return the number of iterations until divergence for z_{n+1} = z_n^2 + c
    % If |z| never exceeds 2 within 100 steps, return 0
    
    z = 0; 
    max_iter = 100; % number of iterations
    for it = 1:max_iter
        z = z^2 + c; % fractal formula
        if abs(z) > 2 % magnitude check
            return % exit the function if divergence occurs
        end
    end
    it = 0; % didn't escape within max_iter
end

%% 

