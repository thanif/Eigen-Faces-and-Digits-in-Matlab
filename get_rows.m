function [ rows ] = get_rows(X,labels,digit)

    ind = find(labels==digit);		%indices of rows for the digit
	rows = X(ind,:);
    
end

