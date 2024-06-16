clear
clc

% Test case 1: 

matrix =["Americano"    "1"    "9.5"; "Latte"        "6"    "66"];
% order total cash
total=0;
% calculate order
for i=1:size(matrix,1)
    total=total+str2double(matrix(i,3));
end
disp(total)

% Test case 2:
matrix=["Tiramisu"        "2"    "23"   ;"Americano"       "3"    "28.5" ;"French Toast"    "1"    "13.99"];
% order total cash
total=0;
% calculate order
for i=1:size(matrix,1)
    total=total+str2double(matrix(i,3));
end
disp(total)


% Test case 3: 
matrix = ["Latte" "0" "0", "Tiramisu" "0" "0"];
% order total cash
total=0;
% calculate order
for i=1:size(matrix,1)
    total=total+str2double(matrix(i,3));
end
disp(total)


% Test case 4:
matrix= ["Cappuchino" "-1" "-3.12"; "Espresso" "1.1" "0"];
% order total cash
total=0;
% calculate order
for i=1:size(matrix,1)
    total=total+str2double(matrix(i,3));
end
disp(total)

% Test case 5:
matrix= ["Cappuchino" "-1" "-3.12b"; "Espresso" "1.1" "a"];
% order total cash
total=0;
% calculate order
for i=1:size(matrix,1)
    total=total+str2double(matrix(i,3));
end
disp(total)
