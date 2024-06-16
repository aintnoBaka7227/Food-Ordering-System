clear
clc

% test case 1 
% input name
name="Phong";
% input phone number
phone="0987654321";
% input string matrix
order=["Vietnamese Coffee"    "3"    "24"; "French Toast"         "4"    "55.96"];  
% printReceiptTest(order, name, phone);

% test case 2
% input name
name="Chicken";
% input phone number
phone="09876 4321";
% input string matrix
order=[" Coffee"    "-3"    "24a"; " Toast"         "4"    "-55.96"];  
printReceiptTest(order, name, phone);


% test case 3
% input name
name="";
% input phone number
phone="";
% input string matrix
order=["" "" ""];
printReceiptTest(order, name, phone);




