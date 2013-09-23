function [ f,f_isv,f_isv2,f_isv3 ] = funkcija1( x )
%Funkcija1 randa: funkcija, ivestine ir antraja isvestine.  
% Input (ivedimo parametras) x - realus vienmatis vektorius 
% Output (isvedimo parametras) f - funkcija, f_siv - pirmaja isvestine,
% f_isv2 - antraja isvestine
% pvz: [f,f_isv,f_isv2,f_isv3] = funkcija ([1,1])
% pvz2: x=[1,1]; [f,f_isv,f_isv2,f_isv3] = funkcija (x) XXXX
f = sin(x) + cos(x);
f_isv = cos(x)-sin(x);
f_isv2 = - sin(x) - cos(x);
f_isv3 = - cos(x) + sin(x);
end

