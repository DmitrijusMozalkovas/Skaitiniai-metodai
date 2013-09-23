%1 uzduotys
x=1;
[f,f_isv,f_isv2] = funkcija1(x);
disp('X reiksme = '),disp(x);
y=[1,1];
disp('Y reiksmes = '),disp(y);

%2 uzduotys
[f,f_isv,f_isv2] = funkcija(y);
[f,f_isv,f_isv2] = funkcija1(x);
disp([x f f_isv f_isv2])
[f,f_isv,f_isv2] = funkcija(y);
disp([y f f_isv f_isv2])
% 10*rand(10,1) - generuoja nuo 0 iki 10
% a= ?? ; b = ?? ; x = a +(b-a)*rand(10,1); - generuoja nuo a iki b
% a= ?? ; b = ?? ; x = a +(b-a)*rand(10,2); - generuoja nuo a iki b ( 2 stulpelius)
x = 10*rand(10,1);
[f,f_isv,f_isv2] = funkcija1(x);
x= x.^2;
disp([x f f_isv f_isv2]);
%y = 10*rand(10,2);
%[f,f_isv,f_isv2] = funkcija(y);
%y= y.^2;
%disp([y f f_isv f_isv2]);

%3 uzduotys

x = 0:0.1:10;
Fx = funkcija1(x);
plot(x,Fx);

