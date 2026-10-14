%% EXERCITIUL 1 - Operatii aritmetice si logice
% CERINTA: Se dau elementele a=5 si b=6. Sa se rezolve operatiile:
% a+b, a-b, a*b, a/b, a\b, a>b, a<b, a&b, a|b.
clear; clc; close all;
a=5; b=6;
a+b
a-b
a*b
a/b
a\b
a>b
a<b
a&b
a|b

%% EXERCITIUL 2 - Operatii cu matrice
% CERINTA: Se considera matricile
% A=[1 2 3; 5 4 3; 7 6 5] si B=[-2 3 -6; -1 3 2; 3 6 4].
% Sa se calculeze: A+B, A-B, A.*B, A./B, A.\B, A.^B, B^2, A'.
A=[1 2 3;5 4 3;7 6 5];
B=[-2 3 -6;-1 3 2;3 6 4];
A+B
A-B
A.*B
A./B
A.\B
A.^B
B^2
A'

%% EXERCITIUL 3 - Functii pentru matrici
% CERINTA: Se dau matricile A=[2 -3 1; -4 6 2; 1 2 3]
% si B=[1 3 1]. Sa se calculeze: size(A), length(B), rank(A),
% det(A), inv(A), cond(A), trace(A), A', B', size(A),
% diag(A), pinv(B), norm(A).
A=[2 -3 1;-4 6 2;1 2 3];
B=[1 3 1];
size(A)
length(B)
rank(A)
det(A)
inv(A)
cond(A)
trace(A)
A'
B'
size(A)
diag(A)
pinv(B)
norm(A)

%% EXERCITIUL 4 - Sistem liniar
% CERINTA: Sa se rezolve sistemul de trei ecuatii cu trei necunoscute:
% x + 4*y + z = 2
% 2*x + 7*y + 3*z = 4
% x + 8*y + 2*z = 6.
A=[1 4 1;2 7 3;1 8 2];
B=[2;4;6];
X=A\B
% x=-2, y=0.8, z=0.8

%% EXERCITIUL 5 - Polinoame prin vectori de coeficienti
% CERINTA: Se dau polinoamele
% f(x)=4*x^6-2*x^4+3*x^2-x+4 si g(x)=2*x^2+5*x-16.
% a) Sa se efectueze operatiile f+g, f-g, f*g, f/g, g*5,
%    evaluarea lui f(x), inmultirea si impartirea element cu element
%    a valorilor f(x) si g(x).
% b) Sa se descompuna in fractii simple raportul f(x)/g(x).
% f(x)=4x^6-2x^4+3x^2-x+4
% g(x)=2x^2+5x-16
f=[4 0 -2 0 3 -1 4];
g=[2 5 -16];
% Aducem polinoamele la aceeasi lungime pentru + si -
g1=[0 0 0 0 g];
suma=f+g1
diferenta=f-g1
produs=conv(f,g)
[cat,rest]=deconv(f,g)
inmultire5=5*g
derivata_f=polyder(f)
% Valorile functiilor pentru un vector de abscise
x=-2:0.1:2;
yf=polyval(f,x);
yg=polyval(g,x);
produs_elemente=yf.*yg;
raport_elemente=yf./yg;
% Descompunerea in fractii simple f(x)/g(x)
[r,p,k]=residue(f,g)

%% EXERCITIUL 6 - Metoda trapezelor
% CERINTA: Sa se calculeze prin metoda trapezelor integrala
% q = integral_0^1 exp(2*x)*cos(x) dx.
x=0:0.01:1;
y=exp(2*x).*cos(x);
q=trapz(x,y)

%% EXERCITIUL 7 - Grafice 2D
% CERINTA: Sa se reprezinte pe intervalul x in [-2,2] functiile:
% f(x)=exp(x/2)*sin(2*x), g(x)=(x-3)/(x^2+2),
% u(x)=sqrt(x^2+1)*atan(x).
% a) Toate graficele pe aceeasi figura.
% b) Graficele pe figuri diferite.
x=-2:0.01:2;
f=exp(x./2).*sin(2*x);
g=(x-3)./(x.^2+2);
u=sqrt(x.^2+1).*atan(x);
figure(1);
plot(x,f,'r',x,g,'b',x,u,'g');
grid on;
legend('f(x)','g(x)','u(x)');
title('Cele trei functii pe aceeasi figura');
figure(2); plot(x,f,'r'); grid on; title('f(x)');
figure(3); plot(x,g,'b'); grid on; title('g(x)');
figure(4); plot(x,u,'g'); grid on; title('u(x)');

%% EXERCITIUL 8 - mesh, meshc, surf, surfc
% CERINTA: Sa se reprezinte grafic functia
% f(x,y)=sin(sqrt(x^2+y^2))/sqrt(x^2+y^2), x,y in [-8,8].
% Se vor folosi mesh, meshc, surf, surfc, pe figuri diferite.
[x,y]=meshgrid(-8:0.1:8);
r=sqrt(x.^2+y.^2);
z=ones(size(r));
ind=(r~=0);
z(ind)=sin(r(ind))./r(ind);
figure(5); mesh(x,y,z); title('mesh');
figure(6); meshc(x,y,z); title('meshc');
figure(7); surf(x,y,z); title('surf');
figure(8); surfc(x,y,z); title('surfc');

%% EXERCITIUL 9 - Corpuri geometrice
% CERINTA: Sa se deseneze urmatoarele figuri geometrice:
% a) un paralelipiped dreptunghic;
% b) un trunchi de piramida cu baza hexagonala;
% c) un trunchi de con;
% g) o suprafata de rotatie generata de y=x*sin(x);
% h) o sfera;
% i) un elipsoid cu centrul (0,0,0), raze rx=1, ry=8, rz=3.
% a) Paralelipiped dreptunghic
V=[0 0 0; 3 0 0; 3 2 0; 0 2 0; 0 0 4; 3 0 4; 3 2 4; 0 2 4];
F=[1 2 3 4;5 6 7 8;1 2 6 5;2 3 7 6;3 4 8 7;4 1 5 8];
figure(9); patch('Vertices',V,'Faces',F,'FaceColor','cyan');
axis equal; grid on; view(3); title('Paralelipiped dreptunghic');

% b) Trunchi de piramida hexagonala
th=linspace(0,2*pi,7);
r1=3; r2=1.5; h=4;
X=[r1*cos(th);r2*cos(th)];
Y=[r1*sin(th);r2*sin(th)];
Z=[zeros(1,7);h*ones(1,7)];
figure(10); surf(X,Y,Z); hold on;
fill3(r1*cos(th),r1*sin(th),zeros(1,7),'y');
fill3(r2*cos(th),r2*sin(th),h*ones(1,7),'y');
hold off; axis equal; grid on; title('Trunchi de piramida hexagonala');

% c) Trunchi de con
[X,Y,Z]=cylinder([3 1.5],60);
Z=4*Z;
figure(11); surf(X,Y,Z); axis equal; grid on; title('Trunchi de con');

% g) Suprafata de rotatie y=x*sin(x) in jurul axei Ox
x=linspace(0,2*pi,120);
t=linspace(0,2*pi,80);
[X,T]=meshgrid(x,t);
R=X.*sin(X);
Y=R.*cos(T);
Z=R.*sin(T);
figure(12); surf(X,Y,Z); axis equal; grid on;
title('Suprafata de rotatie y=x*sin(x)');

% h) Sfera
[X,Y,Z]=sphere(50);
figure(13); surf(X,Y,Z); axis equal; grid on; title('Sfera');

% i) Elipsoid cu centrul (0,0,0) si razele 1,8,3
[X,Y,Z]=ellipsoid(0,0,0,1,8,3,50);
figure(14); surf(X,Y,Z); axis equal; grid on; title('Elipsoid');

% EXERCITIUL 10 - GUI cu trei figuri geometrice
% CERINTA: Dupa modelul de la subcapitolul 1.20, sa se proiecteze
% o interfata GUI pentru reprezentarea a trei figuri geometrice
% la alegere (in acest exemplu: sfera, elipsoid, trunchi de con).
% Interfata realizata cu figure, axes si uicontrol.
clear; clc;
f=figure('Name','Laborator MATLAB - Figuri geometrice', ...
    'NumberTitle','off','Position',[300 180 760 480]);
ax=axes('Parent',f,'Units','normalized','Position',[0.08 0.15 0.64 0.75]);
uicontrol('Parent',f,'Style','pushbutton','String','Sfera', ...
    'Units','normalized','Position',[0.77 0.72 0.18 0.09], ...
    'Callback',@(~,~) deseneaza(ax,1));
uicontrol('Parent',f,'Style','pushbutton','String','Elipsoid', ...
    'Units','normalized','Position',[0.77 0.57 0.18 0.09], ...
    'Callback',@(~,~) deseneaza(ax,2));
uicontrol('Parent',f,'Style','pushbutton','String','Trunchi de con', ...
    'Units','normalized','Position',[0.77 0.42 0.18 0.09], ...
    'Callback',@(~,~) deseneaza(ax,3));
deseneaza(ax,1);

function deseneaza(ax,optiune)
    cla(ax);
    switch optiune
        case 1
            [x,y,z]=sphere(40);
            surf(ax,x,y,z);
            title(ax,'Sfera');
        case 2
            [x,y,z]=ellipsoid(0,0,0,1,8,3,40);
            surf(ax,x,y,z);
            title(ax,'Elipsoid');
        case 3
            [x,y,z]=cylinder([3 1.5],60);
            surf(ax,x,y,4*z);
            title(ax,'Trunchi de con');
    end
    axis(ax,'equal'); grid(ax,'on'); view(ax,3);
    xlabel(ax,'x'); ylabel(ax,'y'); zlabel(ax,'z');
end

