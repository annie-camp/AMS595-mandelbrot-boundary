%% Optional: visualize the full Mandelbrot set
[X, Y] = meshgrid(linspace(-2,1,1000), linspace(-1.5,1.5,1000));
C = X + 1i*Y;
Z = zeros(size(C));
M = zeros(size(C));

max_iter = 100;
for k = 1:max_iter
    Z = Z.^2 + C;
    M(abs(Z) <= 2) = k;  % record iteration count
end

figure;
imagesc([-2 1], [-1.5 1.5], M);
axis equal tight; colormap([jet(); flipud(jet());]); colorbar;
xlabel('Real(c)'); ylabel('Imag(c)');
title('Mandelbrot set overview');

% optional overlay: your boundary
hold on;
plot(xs(valid), ys(valid), 'k.', 'MarkerSize', 3);
