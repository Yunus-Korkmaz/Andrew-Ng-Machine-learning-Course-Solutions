function out = mapFeature(X1, X2)
% MAPFEATURE Feature mapping function to polynomial features
%
%   MAPFEATURE(X1, X2) maps the two input features
%   to quadratic features used in the regularization exercise.
%
%   Returns a new feature array with more features, comprising of 
%   X1, X2, X1.^2, X2.^2, X1*X2, X1*X2.^2, etc..
%
%   Inputs X1, X2 must be the same size
%

% 
degree = 6;
out = ones(size(X1(:,1)));
for i = 1:degree
    for j = 0:i
        out(:, end+1) = (X1.^(i-j)).*(X2.^j);
    end
end

%iki özelliğimizden daha fazla özellik çıkarırken (x+y)^2,(x+y)^3 ... gibi
%ifadelerin açılımındaki terimleri tek tek alarak çoğaltabiliriz yani
%özelliklerimiz :
% x^2,xy,y^2 , x^3,x^2y,xy^2,y^3 , x^4,x^3y,x^2y^2,xy^3,y^4 ... 
% şeklinde olacaktır 

% burada x ve y üstleri sıralı şekilde azalıyo ve artıyor bu örüntüyü
% kullanarak özelliklerimizi çoklandırabiliriz 
% bunu yapmamızdaki amaç daha uygun veya hassas bir model elde etmek
% istemmeizdir 




end