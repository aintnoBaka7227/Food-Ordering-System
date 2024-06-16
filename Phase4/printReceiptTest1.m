
% this function is used for printing receipt as a text file

% take order details 
function []= printReceiptTest1(matrix, name, phone)

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



% prepare a text file 
receiptText = fopen("receiptTest1.txt",'w');
% format text file
fprintf(receiptText, "***************************************************\n" + ...
    "                Morningstars Coffee\n\n\n" + ...
    "                      RECEIPT\n " + ...
    "               %s \n\nCustomer: %s\nContact number: %s\n\n", time, upper(name), phone);
fprintf(receiptText,"%s" ,matrix);
fprintf(receiptText,  "\n\nYour order costs: AUD %.2f\n " + ...
    "                     Thank you!\n" + ...
    "***************************************************", total);
fclose(receiptText);

% record receipt time
fprintf("Saved on %s.txt\n", time);
end
