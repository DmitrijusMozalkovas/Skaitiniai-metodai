function saknys = pilnaspusiaukirtosmetodas(func,a,b,dx,filter,tol)
% Pusiaukirtos metodu surandami visi funkcijos f(x) nuliai intervale (a,b).
% IVEDIMO PARAMETRAI:
% func = funkcija, kaip m-failas arba anonime funkcija.
% a < b, visas pirminis intervalas kuriame ieskosime nulio(-u).
% dx = zingsnio ilgis kreipiantis i skaidos metoda : (b-a)/n.
% filter = singuliarumo filtras: 0 = iðjungta (pagal nutylejima), 1 = ijungta.
% tol = paklaida (pagal nutylejima 0.01).
% PALEIDIMAS = saknys = pilnaspusiaukirtosmetodas(funkcija,a,b,dx,filter,tol).
saknusk = 0;
a_pradinis=a;
while 1
[x1,x2] = skaidosmetodas(func,a,b,dx);
if isnan(x1)
    disp('Dauiau sprendiniu nera'); 
break
else
a = x2;
saknis = pusiaukirtosmetodas(func,x1,x2,0,tol);
if ~isnan(saknis)
saknusk = saknusk + 1;
saknys(saknusk) = saknis;
end
end
end
x = a_pradinis:.1:b;
y = funkcija1(x);
plot(x,y);
hold on;
x_saknys = saknys;
y_saknys = funkcija1(x_saknys);
scatter(x_saknys, y_saknys,'*r');