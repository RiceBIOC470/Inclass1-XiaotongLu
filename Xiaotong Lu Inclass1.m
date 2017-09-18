% AW: Looks good. See my comments below. 0.95/1. 

%InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1; 
y = x + x

% Xiaotong Lu: The type of x is number so it can be used to do calculation. And y =2.
%%
a = '1';
b = a+a

%Xiaotong Lu: In this sections, a is assigned the character which means
%the type of a is character. Characters cannot be added. That's why b
%doesn't give a sensible result.

%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]

a2 = [a a];

x2b = [x; x]

%Xiaotong Lu: x2 is an array which contains one row, two column. But the a2 is another
%characters.x2b is an array which contaions two rows, one column. x2b and
%x2 has different direction of array. And the command ";" makes the array a
%2 row, one column one.

%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b
a = b;
a == b

%Xiaotong Lu: The first == commands compares the a and b and decide whether they are
%equal. Beacuse a is 1 and b is 2, they are not equal. So the result is
%false. In the next commmand, a is assign by b which means a is equal to b
%now. So when the == command values whether the a and b are equal, the
%result is true.

%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b

%Xiaotong Lu: Due to the a and b are both array, when we use the == command 
% to compare a and b, the command will compare every two corresponding
% numbers in a and b. So the result will show 0, 1, 0. The first zero means the number 
% in the first row and first column of a is not equal to the number in the first row 
% and first column of b. So the answer is false. The second 1 means the number 
% in the first row and second column of a is equal to the number in the first row 
% and second column of b. So the answer is true. The 3rd zero means the number 
% in the first row and 3rd column of a is not equal to the number in the first row 
% and 3rd column of b. So the answer is false.

%explain why this gives an error:

b = [2, 3];
a == b

% Xiaotong Lu: In order to compare two arrays, the two arrays should have the same
% matrix dimensions. In this question, the matrix dimension of b is not
% equal to a, so they cannot be compared to each other. 
%explain why this does not give an error
b = 2;
a == b 

%Xiaotong Lu: In this question, b is assigh a number so the type of b change to the
%number. In that case, number b can be compared with every number in array a and then give 
%the result 0,1,0 which means b is not equal to the number in the 1st row,
%1st column and the 1st row, 3rd column of a but equal to the number in the 1st row, 2rd column of a. 


%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]

%Xiaotong Lu: In the second line, the command oneToTen+10 means every number in the
%oneToTen is added by 10. And the whole command [oneToTen, oneToTen+10] put
%the two array together and combine them to one array which means the result shows
%the first array[1:10] and the second array[11:20] in the same one.

% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

%AW: these below don't use the oneToTen array. e.g. the first one could be 2*oneToTen. -0.05. 
% 1. even numbers from two to twenty
%Xiaotong Lu: m=2:2:20;
%             m=[2:2:10];m=[m,m+10]
% 2. odd numbers from one to nineteen
%Xiaotong Lu: m=1:2:19
%             m=[1:2:19];m=[m,m+10]
% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)
%Xiaotong Lu: m=20:-2:2
%             m=[20:-2:12];m=[m,m-10]    

% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)

%Xiaotong Lu: In the first command, oneToTen' has already changed the direction of oneToTen which performed a
%90¡ãvertical rotation in the oneToTen. The command fliplr can realize the
%horizontal flip of oneToTen, however, this array has become a upright one
%which contains only one column but 10 rows. The command fliplr can not turn it over. 

%Xiaotong Lu: In order to get the right result, we may use this command:
% oneToTen=oneToTen'; fliplr(rot90(oneToTen))

%AW: Ok, see also flipud. 

%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
m1.*m2

%Xiaotong Lu: The first command m1*m2 means the array m1 is multiplied
%by m2. And the counting process should obey the rules of matrix multiplication and each number
% in the new array should be 4. However, the second command m1*m2 means
% each number in the matrix m1 is only multiplied by the corresponding
% number which has the same coordinate in the matrix m2. So each number in
% the result should be 2.

%explain this command:
m2./m1

%Xiaotong Lu: This command means every number in the matrix m2 is devided
%by the corresponding number owning the same coordinate in the matrix m1.

%extra credit: explain why this command gives a warning:
m2/m1
 
%Xiaotong Lu£ºIn matrix, only if the matrix is the muliple result of other 2
%matrix and one of the 2 matrix have its inverse matrix can the matrix be
%devided by the other of the two matrix.

%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);

%explain what is being done in each of the following lines

rand_nums(2,3)

%Xiaotong Lu: This command gives the number in the 2nd row, 3rd column in
%the matrix rand_nums.

rand_nums(2:4,3)

%Xiaotong Lu: This command gives the 3 number in the 3rd column, in the  2nd,
%3rd and 4th row of the matrix rand_nums.


rand_nums(1:2,3:4)
%Xiaotong Lu: This command gives the 4 numbers in the 1st and 2nd row, the
%3rd and 4th column of the matrix rand_nums. 

rand_nums(:,2)

%Xiaotong Lu: This command gives the all the numbers in the 2nd column.

rand_nums(1,:)

%Xiaotong Lu:This command gives the all the numbers in the 1st row.

rand_nums(:,[1 3 5])

%Xiaotong Lu: This command gives the all the numbers in the 1st, 3rd and 5th column.
