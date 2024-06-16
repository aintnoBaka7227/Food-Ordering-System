clear
clc

% Phase 2: Ordering and storing user orders into a string matrix 

% I.Ordering

% string vector contains dishes
menu=["Vietnamese Coffee", "Espresso", "Americano", "Cappuchino", "Latte", "Hot chocolate", "Tiramisu", "Ham & Cheese Croissant", "French Toast", "Blue berries cake"];
% vector contains each dish's price
price=[8.00 9.50 9.50 10.50 11.00 10.50 11.50 9.90 13.99 12.99];
% vector contain number represent dishes
allDish=[];
% vector contain quantity
quantity=[];

% intruction
    disp("When ordering, enter the dishes'numbers'!")
    disp("E.g: for Vietnamese traditional coffee, enter '1'")
    disp("We don't take more than 9 per dish per time!")

% handle order using while loop
running=0;
while running==0

   % 1. Order dishes
   % take input
   dish=input("Choose your dishes:",'s');
   dish=str2double(dish);
   % choose dish
   rightDish=0;
   while rightDish==0
       % allow input from 1 to 10
       if dish<1 || dish>10 || dish~=round(dish) || isnan(dish)
           disp("Please enter the dish's number again!")
           dish=input("Choose your dishes:","s");
           dish=str2double(dish);
       else
           rightDish=1;
       end
   end
   % store in vector
   allDish =[ allDish dish];

   % 2. Order quantity
   % take input
   numDish=input(" Quantity:","s");
   numDish=str2double(numDish);
   % choose quantity
   integer=0;
   while integer==0
       % allow quantity from 1 to 9
       if numDish<1 || numDish>9 || numDish~=round(numDish) || isnan(numDish)
           disp("Please enter the quantity again!")
           numDish=input(" Quantity: ","s");
           numDish=str2double(numDish);
       else 
           integer=1;
       end
   end
   % store in vector
   quantity=[quantity numDish];

   % 3. Order more ?
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
           running=1;
       end
   end
end

% II. Store order in a matrix 

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

% Phase 3: Bill
% display order
disp("Ordering succesfully!")
fprintf("\n");
disp("|                  ___Here is your order___                  |    ")
disp("            Dish             Quantity          Price         ")
for ii=1:length(dishName)
    fprintf("%22s          %.0f              %.2f\n", dishName(ii),quantity(ii),dishTotalPrice(ii));  
end                
fprintf("\n");                                          
fprintf("           Total                              %.2f\n",totalCash);