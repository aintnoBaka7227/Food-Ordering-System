% vector contain number represent dishes
allDish=[];
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
disp(allDish)