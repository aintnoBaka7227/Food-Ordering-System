clear
clc
% take customer phone number in string
phone=input("Enter customer 's phone number:","s");
% ask customer for the right syntax: 10 digits number
% ask customer for the right syntax: 10 digits number
while isnan(str2double(phone)) || strlength(phone)>10
    phone=input("Enter a real phone number:","s");
end