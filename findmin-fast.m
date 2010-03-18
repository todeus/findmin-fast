n = 3;
C = rand(n,n);
A = C'*C;
b = rand(n,1);
X = rand(n,1);
e = 0.00001;
%L = 1 / (max(eig(A))+1);
F_ = 1;
i=0;
while max(abs(F_)) > e
    F_ = 2*A*X+b;
    L = (X'*A*F_+F_'*A*X+F_'*b)/(2*F_'*A*F_);
    Xn = X - F_ * L;
    X = Xn;
    i=i+1;
end;
F_
i