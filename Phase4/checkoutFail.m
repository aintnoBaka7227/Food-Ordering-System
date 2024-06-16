clear
clc
% Part 1: Print receipt or not?
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
    %print receipt
    if check=="y"
        disp("Printing receipt...")
    end
end