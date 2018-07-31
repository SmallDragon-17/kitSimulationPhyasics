function Ex2

    A=[1 1; 1 1];
    b=[2;2];
    c=[3;3];
    s=4;

    n= length(b);
    D = zeros(n+1, n+1)
    d= c.';

    D(2:n+1,2:n+1) = A;
    D(2:n+1, 1)= d;
    D(1, 2:n+1)=b;

    D(1,1)=s
    D
end