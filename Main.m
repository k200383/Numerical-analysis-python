fprintf("\nMethods: \n")

fprintf(" 1)Bisection \n 2)Fixed \n 3)Newton \n 4)Reguli Falsi \n 5)Secant \n");

choice=input('\n\nSelect a method : ');

switch choice
    case 1
        Bisection()
    case 2
        Fixed()
    case 3
        Newton()
    case 4
        ReguliFalsi()
    case 5
        Secant()
    otherwise
        disp('Invalid option, try again')
        
end