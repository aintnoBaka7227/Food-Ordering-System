% Student: Do Phong Tran
% ID number: 1873825
% Project name: Interactive cafe menu


% clear window
clear
clc

% Phase 1: Customer basic information and the cafe menu


% program start
disp("------Interactive menu------")

% I. Customer basic information

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


% Phase 2: Ordering and storing customer order into a string matrix

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
   finish=input("Do you want to finish your order? (Yes=y; No=n):","s");
   % allow "y" for yes and "n" for no only
   while finish~="y" && finish~="n"
       disp("Please enter the right systax!");
       finish=input("Do you want to finish your order? (Yes=y; No=n):","s");
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
for i=1:length(quantity)
    % calculate order total money
    totalCash=totalCash+price(allDish(i))*quantity(i);
    % calculate and store each item total price
    dishTotalPrice=[dishTotalPrice price(allDish(i))*quantity(i)];
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

% order string matrix
order=[];
for ii=1:length(dishName)
    % convert nums to string 
    order=[order; dishName(ii), string(quantity(ii)), string(dishTotalPrice(ii)) ];
end

% Phase 3: Bill

% display order
disp("Ordering successfully!")
fprintf("\n");
disp("|                  ___Here is your order___                  |    ")
disp("            Dish             Quantity          Price         ")
for iii=1:length(dishName)
    fprintf("%22s          %.0f              %.2f\n", dishName(iii),quantity(iii),dishTotalPrice(iii));  
end                
fprintf("\n");                                          
fprintf("           Total                               %.2f\n",totalCash);


% Phase 4: Checkout

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
        check=input("Do you want a recipt? (Yes='y', No='n'):","s");
        % allow "y" for yes and "n" for no
        while check~="y" && check~="n"
            disp("Please enter the right systax!")
            check=input("Do you want a recipt? (Yes='y', No='n'):","s");
        end
        % no receipt
        if check=="n"
            fprintf("Thank you for coming, Mr/Mrs %s, please enjoy your meal!\n",name)
        else
            % print receipt
            if check=="y"
                disp("Printing receipt...")
                % function to print receipt
                printReceipt(order, name, phone);
            end
       end
    end
end



% Phase 4.1: Print receipt function
% this function is used for printing receipt as a text file
% take order details 
function []= printReceipt(matrix, name, phone)

% all elements are string
arguments  
    matrix(:,3) string
    name string
    phone string
end

% receipt time
time=datetime("now");

% order total cash
total=0;
% calculate order
for i=1:size(matrix,1)
    total=total+str2double(matrix(i,3));
end

% function for formatting list
orderList = formattingList(matrix);

% prepare a text file 
receiptText = fopen("receipt.txt",'w');
% format text file
fprintf(receiptText, "***************************************************\n" + ...
    "                Morningstars Coffee\n\n\n" + ...
    "                      RECEIPT\n " + ...
    "               %s \n\nCustomer: %s\nContact number: %s\n\n", time, upper(name), phone);
fprintf(receiptText, orderList);
fprintf(receiptText,  "\n\nYour order costs: AUD %.2f\n " + ...
    "                     Thank you!\n" + ...
    "***************************************************", total);
fclose(receiptText);

% record receipt time
fprintf("Saved on %s.txt\n", time);
end




% Phase 4.2: Formatting receipt
% this function formats order list

function [orderList]=formattingList(matrix)
orderList="";

% format the list as a table
for i=1:size(matrix, 1)

    % format dish name 
    blank=23-strlength(matrix(i,1));
    for j=1:blank
        matrix(i,1)=matrix(i,1)+" ";
    end

    % add "x" after quantity
    matrix(i,2)=matrix(i,2)+"x\t";

    % add "AUD" to each dish total price
    matrix(i,3)=sprintf(" AUD %.2f",matrix(i,3));

    % each row contains dish name, quantity and price
    for j= 1:3
        orderList=orderList+matrix(i,j);
    end
    orderList=orderList+"\n";
end
end
