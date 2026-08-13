% ==============================================
% Practical 1: Matrix Operations and Functions
% Course: Digital Image Processing
% Topics: Matrix creation, indexing, slicing,
%         concatenation, and built-in matrix functions
% ==============================================

%% Matrix Creation and Indexing
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];

% Accessing elements
element = A(2, 3);  % Gets element at row 2, column 3 (value: 6)

% Accessing rows and columns
row2 = A(2, :);     % Gets second row: [4, 5, 6]
col3 = A(:, 3);     % Gets third column: [3; 6; 9]

% Submatrices
subA = A(1:2, 2:3); % Gets 2x2 submatrix: [2, 3; 5, 6]

% Append
B = [A; [10, 11, 12]];  % Vertical
C = [A, [13; 14; 15]];  % Horizontal

%% Matrix Functions
A = [1, 2; 3, 4];
det_A = det(A);            % Determinant
inv_A = inv(A);            % Inverse
[V, D] = eig(A);           % Eigenvalues and eigenvectors
[U, S, V] = svd(A);        % Singular value decomposition
rank_A = rank(A);          % Rank
trace_A = trace(A);        % Trace (sum of diagonal elements)
t = A';                    % Transpose

%% Creating Special Matrices
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
B = zeros(3);      % 3x3 matrix of zeros
C = ones(2, 4);    % 2x4 matrix of ones
D = eye(3);        % 3x3 identity matrix
E = rand(2, 3);    % 2x3 matrix of random values (0 to 1)
F = randn(3, 2);   % 3x2 matrix of normally distributed random values

%% Colon Operator for Creating Vectors
x = 1:5;        % Creates [1, 2, 3, 4, 5]
y = 1:0.5:3;    % Creates [1, 1.5, 2, 2.5, 3]
