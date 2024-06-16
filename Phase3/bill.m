clear
clc

% Phase 3: Bill
dishName=["Vietnamese coffee" "French Toast"];
quantity=[5 1];
dishTotalPrice=[ 40.00 13.99 ];
totalCash=53.99;
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