function S=sym2str(Y,M,V,Mu)
% This Function has been built by Mohammed T. A. Elamassie
% University College of Applied Science, Gaza
%  melamassie@ucas.edu.ps
% M can be 'L2S' or 'S2L' to right from larger order to smaller order or from
% smaller order to larger order
% V is variable may be x,q, and so on
%if Mu ='*' => star will appear on multiplication 
% Example 
% >> Px=poly2sym([4 7 8])
% Px =
% 4*x^2+7*x+8
% >> S=sym2str(Px,'L2S','x','*')
% S =
%  4*x^2  + 7*x  + 8
% S=sym2str(Px,'S2L','Y','*')
% S =
% 8  + 7*Y  + 4*Y^2 
Mul='';
if nargin<4  Mul='*'; end
if nargin==4  Mul=Mu; end
if nargin<3 V='x'; end
if nargin<2 M='L2S'; end
p=sym2poly(Y); p=p(end:-1:1);
k=''; LL=length(p);
if M=='S2L' inc=1; first=1; last=LL;
elseif M=='L2S' inc=-1; first=LL; last=1;
else
     error('M either S2L or L2s')
end
for i=first:inc:last
    if p(i)~=0
        if i>2
            b=strcat(V,'^');
            b=strcat(b,num2str(i-1));
        elseif i==2
            b=V;
        else
            b='';
        end
        if p(i)~=1 &&  p(i)~=-1
            if strcmp(b, '')~=1
                b=strcat(Mul,b);
            end
            b=strcat(num2str(abs(p(i))),b);
        else
            if i==1;b=num2str(abs(p(i))); end
        end
        if strcmp(k, '')==1;
            k=[k ' ' b ' '];
            if p(i)<0; k=['-' k]; end
        else
            if p(i)<0; k=[k ' ' '-'];
            else; k=[k ' ' '+']; end
           k=[k ' ' b ' '];
        end
    end
end
S=k;