function Secant()

    syms f(x)
    fun=input('Input the function here: ','s');
    f(x)= str2sym(fun);
    
    A=input('Input the value of A: ','s');
    B=input('Input the value of B: ','s');
    
    fprintf("n       poly      poly1            polyN\n");

    poly=A;
    poly1=B;
    j=2;
    z = '-';
    
        fprintf("%d  %f    %f   %c\n",1,poly,poly1,z);

    while (abs(poly1-poly))>1.0E-4
        polyN=poly1-(f(poly1)*(poly1-poly))/(f(poly1)-f(poly));
        fprintf("%d    %f   %f  %f",j,poly,poly1,polyN);
        fprintf('\n');
        poly=poly1;
        poly1=polyN;
        j=j+1;
    end
    
    return
    
end