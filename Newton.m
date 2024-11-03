function Newton()

    clear
    syms x z s m;
    func=input('Input the function: ','s');
    i = str2sym(func);
    
    syms f(x)
    f(x) = i;
    funct1 = diff(f,x);
    
    A=input('Input the value of A: ');
    B=input('Input the value of B: ');
    
    polyn=A;
    fprintf("n     polyn         p1\n");
    
    for y=1:100
        pol1=polyn-(f(polyn)/funct1(polyn));

        if  (abs(pol1-polyn))>1.0E-4
            m = polyn;
            polyn=pol1;
            fprintf("%d     %f      %f ",y ,m, pol1);
            fprintf('\n');

        else
            fprintf("%d     %f       %f ",y ,m, pol1);
            return
        end

    end
    
end