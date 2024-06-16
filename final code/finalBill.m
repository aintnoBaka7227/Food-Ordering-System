% Phase 3: order check

% display order
disp("Ordering succesfully!")
fprintf("\n");
disp("|                  ___Here is your order___                  |    ")
disp("            Dish             Quantity          Price         ")
for iii=1:length(dishName)
    fprintf("%22s          %.0f              %.2f\n", dishName(iii),quantity(iii),dishTotalPrice(iii));  
end                
fprintf("\n");                                          
fprintf("           Total                               %.2f\n",totalCash);