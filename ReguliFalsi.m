function ReguliFalsi()
    syms f(x)

    fun=input('Input the function: ','s');
    f(x)= str2sym(fun);

    A=input('Input value of A: ','s');
    B=input('Input value of B: ','s');

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
    
    fprintf("n         A            B             c             f(A)           f(B)            f(c)\n");     
    
    for x=1:100
       
       c=(A*f(B)-B*f(A))/(f(B)-f(A));

       fprintf('%i      %f     %f      %f      %f     %f     %f',x,A,B,c,f(A),f(B),f(c));
       fprintf('\n');
        
       if f(c)*f(A)<0
            B=c;
       else
            A=c;
       end
       
       if (abs(f(A))<=1.0E-4)
            break
       end
       
    end

    fprintf('Root:%f \n no. of iterations :%d\n',A,x);
end