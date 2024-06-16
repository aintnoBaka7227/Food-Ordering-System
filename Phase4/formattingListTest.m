% this function formats order list

function [orderList]=formattingListTest(matrix)
orderList="";

% format the list as a table
for i=1:size(matrix, 1)

    % format dish name 
    blank=23-strlength(matrix(i,1));
    for j=1:blank
        matrix(i,1)=matrix(i,1)+" ";
    end

    % add "x" after quantity
    matrix(i,2)=matrix(i,2)+"x"+" ";

    % add "AUD" to each dish total price
    matrix(i,3)=sprintf(" AUD %.2f",matrix(i,3));

    % each row contains dish name, quantity and price
    for k=1:3
    orderList=orderList+matrix(i,k);
    end
    orderList=orderList+"\n";
end
end

