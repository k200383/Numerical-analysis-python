function Rk()

    string = input('Input function in terms of x and y: ','s')  ;
    Funcxy = inline(string,'x', 'y') ;
    H = input('Input value of h : ');                  
    initial = input('Input value of x : ');
    maxim = input('Maximum value of x : ');
    
    X = initial:H:maxim;                                     
    Y = zeros(1,length(X)); 
    Y(1) = 5;                                         
    
    for x=1:(length(X)-1)      

        k_1 = Funcxy(X(x),Y(x));
        k_2 = Funcxy(X(x)+0.5*H,Y(x)+0.5*H*k_1);
        k_3 = Funcxy((X(x)+0.5*H),(Y(x)+0.5*H*k_2));
        k_4 = Funcxy((X(x)+H),(Y(x)+k_3*H));
        Y(x+1) = Y(x) + (1/6)*(k_1+2*k_2+2*k_3+k_4)*H;  

    end
end