function Euler()
    string = input('Input equation in terms of x and y: ','s')  ;
    
    func=inline(string,'x', 'y' , 'i') ;

    H=input('Value of h is: ');

    init=input('Value of x is: ');

    max=input('Max value of x is : ');
    
    X=init:H:max; 
    Y=zeros(size(X));  
    Y(1)=1; 
    n = numel(Y);

    for x=1:n-1
        P = feval(func,X,Y,x) ;    
        Y(x+1) = Y(x) + H * P;
    end
   
end