function saknis = papr_iter_metodas(func_phi,x1,x2,x0,tol)
% Pusiaukirtos metodu surandamas funkcijos f(x) nulis intervale (x1,x2).
% IVEDIMO PARAMETRAI:
% func_phi = funkcija f(x) issireiksta funkcija. x = func_phi(x).
% x1 < x2, intervalas kuriame ieskosime funkcijos nulio.
% tol = paklaida (pagal nutylejima 0.01).
% nargin = grazina ivesties argumentu, nustatytus funkcijos skaièiu.
% PALEIDIMAS: saknis = papr_iter_metodas(@funkcija_Fi,x1,x2,x0,tol).
if nargin < 5
  tol = 0.01; 
end
if nargin < 4; x0 = x1 + (x2 - x1 ) * rand(1,1); end
if nargin < 3; 
       disp('Maziausiai 3 parametrai turi buti ivesti'); 
       saknis = NaN;
       return; 
end
x(1)= x0;
% Patikrina ar intervalo galuose neigija 0
% f1 = func(x1);
% if abs(f1) < 10^(-10); saknis = x1; return; end
% f2 = func(x2);
% if abs(f2) < 10^(-10); saknis = x2; return; end
% Patikrina ar intervalo galuose igija priesingu 
% f1
% f2
% if f1*f2 > 0
%       error('Nurodytame intervale (x1,x2) nera funkcijos nulio');
% error = sustabdo ir isveda klaidos zinute (is karto).
% end
% Konvergavimo salygos tikrinimas
% 
q = 0.5;
n = 1;
paklaida = abs(x2 - x1);
while paklaida > tol
    x(n+1)= func_phi(x(n));
    paklaida = ((1-q)/q)*abs(x(n+1)-x(n));
    n = n + 1;
    if (n > 10000)
        disp('Konvergavimo salyga nepatenkita per 10000 iteraciju');
        saknis = NaN;
        break;
    elseif x(n) > 2*x2 || x(n) < 2*x1
        disp(['Isejome is [', num2str(2*x1), ' , ', num2str(2*x2),'] ribu']);
        saknis = NaN;
        break;
    end
end
saknis = x(n);
