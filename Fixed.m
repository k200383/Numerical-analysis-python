function Fixed()

    syms f(x)
    funct=input('Input the function: ','s');
    f(x)= str2sym(funct);
    
    N=input('Input the value of N: ');
    x=input('Input the value of x: '); 

    j=1;
    z=f(x);
    
    if z==x 
    fprintf('Fixed point: %f', z);
    end
    
    fprintf("N   x   z");
    
    while abs(x-z)>1.0E-5 && j+1<=N
    j=j+1;
    x=z;
    z=f(x);
    fprintf("%d     %.6f     %.6f    \n",j,x,z);
    end   
    
end