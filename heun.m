function heun()

    func = input('Input function in terms of x and y: ', 's');
    Heuns = inline(func,'x' , 'y');
    T_initial = input('Input the lower bound of range: ');
    T_fin = input('Input the upper bound of range: ');
    y_initial = input('Input initial y value: ');
    n = input('Input no. of iterations' );

    H = (T_fin - T_initial)/n;                                                
    T=[T_initial zeros(1,n)]; 
    W=[y_initial zeros(1,n)];

     for x = 1:n+1 

      T(x+1) = T(x) + H;
      W = W(x) + (H/3) * Heuns( T(x) , W(x) );
      W(x+1) = W(x) + (H/4) * ( Heuns(T(x),W(x)) + 3 * Heuns(T(x)+(2 * H/3), W(x)+(2 * H/3) * Heuns(T(x)+H/3, W)));

     end
end