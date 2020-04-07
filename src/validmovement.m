function isValid = validmovement(sudokuBoard, row, col, value)
%
% Function:
% - validmovement: Checks if a value is valid at position (row, col)
%
% Inputs:
% - sudokuBoard: Sudoku board (9x9 double)
% - row: Row of the value to set (double)
% - col: Col of the value to set (double)
% - value: Desired number to set at (row, col) (double)
% 
% Outputs: 
% – isValid: Returs true if value can be set at (row, col) (logical)
%
% Author: sgalella
% https://github.com/sgalella


% Initialize boolean
isValid = true;

% Check if value exist in row
if ismember(value, sudokuBoard(row, :))
    isValid = false;
end

% Check if value exist in column
if ismember(value, sudokuBoard(:, col))
    isValid = false;
end

% Check if value exist within square
squareRow = floor((row-1)/3)*3;
squareCol = floor((col-1)/3)*3;
for iRow = 1:3
    for iCol = 1:3
        if (sudokuBoard(squareRow+iRow, squareCol+iCol) == value)
            isValid = false;
        end
    end
end

end

