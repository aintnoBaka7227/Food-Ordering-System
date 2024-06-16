
% take input
name=input("Enter name:","s");
phone=input("Enter phone number:","s");
total=input("Enter a random number:");
% receipt time
time=datetime("now");

% function for formating list
receiptText = fopen("background.txt",'w');
fprintf(receiptText, "***************************************************\n" + ...
    "                Morningstars Coffee\n\n\n" + ...
    "                      RECEIPT\n " + ...
    "               %s \n\nCustomer: %s\nContact number: %s\n\n", time, upper(name), phone);
fprintf(receiptText,  "\n\nYour order costs: AUD %.2f\n " + ...
    "                     Thank you!\n" + ...
    "***************************************************", total);
fclose(receiptText);
