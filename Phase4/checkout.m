clear 
clc
% Phase 4: Checkout

% Part 1: Print receipt or not?
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
    % accept order 
    if stop=="n"
        disp(" You accepted your order!");
        % check user if they want bill or not
        check=input("Do you want a recipt? (Yes='y', No='n')","s");
        % allow "y" for yes and "n" for no
        while check~="y" && check~="n"
            disp("Please enter the right systax!")
            check=input("Do you want a recipt? (Yes='y', No='n')","s");
        end
        % no receipt
        if check=="n"
            fprintf("Thank you for coming, Mr/Mrs %s, please enjoy your meal!\n",name)
        else
            % print receipt
            if check=="y"
                disp("Printing receipt...")
                % Part 2: Print receipt using function
                printReceiptTest(order, name, phone);
            end
       end
    end
end
