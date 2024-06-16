clear
clc

% test case 1
% input matrix
order1=["Cappuchino"       "2"    "21"  
        "Hot chocolate"    "1"    "10.5"
        "Latte"            "3"    "33"]; 
% call function
list=formattingListTest(order1);
% create a text file
receiptText = fopen("format1.txt",'w');
% format text file
fprintf(receiptText, list);
fclose(receiptText);

% test case 2
% input matrix
order2=["Ham & Cheese Croissant"    "3"    "29.7"
        "Cappuchino"                "1"    "10.5"
        "Latte"                     "6"    "66" ]; 
% call function
list=formattingListTest(order2);
% create a text file
receiptText = fopen("format2.txt",'w');
% format text file
fprintf(receiptText, list);
fclose(receiptText);

% test case 3
% input matrix
order3=["Blue berries cake"    "1"    "12.99"
        "Hot chocolate"        "2"    "21" ]; 
% call function
list=formattingListTest(order3);
% create a text file
receiptText = fopen("format3.txt",'w');
% format text file
fprintf(receiptText, list);
fclose(receiptText);


