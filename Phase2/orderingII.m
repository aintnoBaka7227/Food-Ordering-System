clear
clc
% II. Store order in a matrix 

% string vector contains dishes
menu=["Vietnamese Coffee", "Espresso", "Americano", "Cappuchino", "Latte", "Hot chocolate", "Tiramisu", "Ham & Cheese Croissant", "French Toast", "Blue berries cake"];
% vector contains each dish's price
price=[8.00 9.50 9.50 10.50 11.00 10.50 11.50 9.90 13.99 12.99];
allDish=[1 10 3];
quantity=[2 3 9];
% order's total money
totalCash=0;
% vector contains each item total price
dishTotalPrice=[];
for k=1:length(quantity)
    % calculate order total money
    totalCash=totalCash+price(allDish(k))*quantity(k);
    % calculate and store each item total price
    dishTotalPrice=[dishTotalPrice price(allDish(k))*quantity(k)];
end

% match numbers represent dishes and dishes' names
dishName=[];
for m=1:length(allDish)
    for n=1:length(menu)
        if allDish(m)==n
            dishName=[dishName menu(allDish(m))];
        end
    end
end

% order string mattrix
order=[];
for iii=1:length(dishName)
    % convert nums to string 
    order=[order; dishName(iii), string(quantity(iii)), string(dishTotalPrice(iii)) ];
end

disp(order)
disp(totalCash)
