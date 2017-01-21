%% Basic Arithmetic
1 + 3
5 - 4
4 / 9
9 * 8

%% Basic Comparisons
1 == 1 % True, Octave outputs 1
2 == 3 % False, Octave outputs 0

%% Ranges
x = 1:10 % [1, 2, 3, ... 10]

%% rand zeros eye
R = rand(3, 3)
Z = zeros(3, 3)
E = eye(3)

%% load data 
% note: hello.mat is a file you should have saved previously
load hello.mat

% show variables in the workspace
whos

% display A
disp(A)

% first row of A
A(1, :)

% third column of A
A(:, 3)

% make A a single vector
A(:)

%% Matrix Operations
A = [1 2 3 ; 4 5 6 ; 7 8 9]
B = [1 1 1 ; 1 1 1 ; 1 1 1]
A + B
A * B
A - B

% Transpose rotates the matrix
A'
B'

%% while and for loops
i = 0;
while i < 4,
  i = i + 1;
  for j = 1:4,
    if i > j,
      disp([i j])
    end;
  end;
end;

%% Unvectorized
x = [1 1 ; 2 2; 3 3; 0 9];
theta = [2 3; 4 5; 6 7; 5 4];

% x and theta have been defined.
% to get the size of x and theta, you can use the size function
size(x)

% save the first dimension into n
n = size(x, 1);

% try to vectorize the following code
% recall that the semi-colon ";" suppresses output
prediction = 0.0;
for j = 1:n,
  prediction = prediction + theta(j) * x(j);
end;

% display prediction
prediction

%% Vectorized
% x and theta have been defined.
% to get the size of x and theta, you can use the size function
size(x)

% save the first dimension into n
n = size(x, 1);

% select first column of both theta and x and calculate the inner product
prediction = theta(:, 1)' * x(:, 1);


% display prediction
prediction
