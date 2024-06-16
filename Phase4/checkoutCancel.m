clear
clc

% cancel order?
stop=input("Do you want to cancel your order? (Yes='y', No='n'):","s");
while stop~="y" && stop~="n"
    disp("Please enter the right systax!")
    stop=input("Do you want to cancel your order? (Yes='y', No='n'):","s");
end
% cancel order
if stop=="y"
    disp("Canceling order!")
else 
    if stop=="n"
        disp(" You accepted your order!");
    end
end
