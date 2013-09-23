function [ f,f_isv,f_isv2 ] = funkcija( x )
%Funkcija randa: funkcija, ivestine ir antraja isvestine.  
% Input (ivedimo parametras) x - realus vektorius 
% Output (isvedimo parametras) f - funkcija, f_siv - pirmaja isvestine,
% f_isv2 - antraja isvestine
% pvz: [f,f_isv,f_isv2] = funkcija ([1,1])
% pvz2: x=[1,1]; [f,f_isv,f_isv2] = funkcija (x) XXXX
f = x(1)^3*x(2)+x(2)^3*x(1);
f_isv = 3*x(1)^2*x(2) + x(2)^3+x(1)^3+3*x(2)^2+ x(1);
f_isv2 = 12*x(1)*x(2) + 6*x(1)^2+6*x(2)^2;
end

