clear
clc
% Phase 1: Customer basic information and the cafe menu

% clear window
clear
clc

% program start
disp("------Interactive menu------")

% I. customer basic information
u
% take customer name in string
name=input("Enter customer 's name:","s");

% take customer phone number in string
phone=input("Enter customer 's phone number:","s");
% ask customer for the right syntax: 10 digits number
while isnan(str2double(phone)) || strlength(phone)>10
    phone=input("Enter a real phone number:","s");
end

% print out customer name
fprintf("Welcome to Morningstars Cafe, Mr/Mrs %s !\n",name)
disp("Please take a look at our cafe's menu!")

% II. Menu

% show menu
disp("                     -----------Menu-----------")
disp("       ___Beverages___                            ___Price___")
disp("1.Vietnamese Coffee                                   8.00")
disp("2.Espresso                                            9.50")
disp("3.Americano                                           9.50")
disp("4.Cappuchino                                          10.50")
disp("5.Latte                                               11.00")
disp("6.Hot chocolate                                       10.50")
disp("        ___Bakery___")
disp("7.Tiramisu                                            11.50")
disp("8.Ham & Cheese Croissant                              9.90")
disp("9.French Toast                                        13.99")
disp("10.Blue berries cake                                  12.99")
disp("____________________________________________________________________")

% This is for test case 
fprintf("customer: %s\n",name);
fprintf("phone number :%s",phone);