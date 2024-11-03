function Bisection()

syms f(x)
    fun=input('Input function here: ','s');
    f(x)= str2sym(fun);

    A=input('Input the value of A: ');
    B=input('Input the value of b: ');

    if f(A)*f(B)>0
        fprintf('Invalid, no roots');
        return
    end
    
    if f(A)==0
     fprintf('%i is a root',A);
     return

    elseif f(B)==0
     fprintf('%i is a root',B);
    end

        fprintf("n        a        b           p          f(A)        f(B)         f(c)\n");
    for x=1:100

        c=(A+B)/2;

        fprintf('%i      %f       %f       %f        %f        %f         %f',x,A,B,c,f(A),f(B),f(c));
         fprintf('\n');

        if f(c)*f(A)<0
            B=c;

        else
            A=c;
        end

        if (abs(Fixed(A))<=1.0E-2)
            break
        end
    end
    fprintf('Root :%f \n no. of iterations :%d\n',A,x);
end