clear
clc

%matriks
A = [ 1 3 -6 -2; 5 9 7 5.6;2 4 8 -1;2.3 1.4 0.8 -2.3;];
B = [8 1 4 21; 3 10 5 0.1;7 -2 9 -5;2.7 -12 -8.9 5.7];
X = [0.4178;-2.9587;56.3069;8.1];

% (a)

for i = 1:4
    for j = 1:4
a(i,j) = A(i,j)+B(i,j);
    end
end

% (b)
for i = 1:4
   for j = 1:4
       b(i,j) = 0;
   end
end
for i = 1:4
    for j = 1:4
       for k = 1:4
        b(i,j) = b(i,j)+A(i,k)*B(k,j);
       end
    end
end

% (c)
for i = 1:4
    c(i,1) = 0;
end
for i = 1:4
    for k = 1:4
        c(i,1)=c(i,1)+ A(i,k)*X(k,1);
    end
end

% (d)
for i = 1:4
    d(i,1) = 0;
end
for i = 1:4
    for k = 1:4
        c(i,1)=c(i,1)+ b(i,k)*X(k,1);
    end
end

        