clear 
clc

% take input
finish=input("Do you want to finish your order? (Yes=y; No=n)","s");
% allow "y" for yes and "n" for no only
while finish~="y" && finish~="n"
    disp("Please enter the right systax!");
    finish=input("Do you want to finish your order? (Yes=y; No=n)","s");
end
% stop order
if finish=="n"
    disp("Please continue ordering!")
else
    % order more
    if finish=="y"
    disp("Stop ordering")
    end
end