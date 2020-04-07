function printboard(sudokuBoard, title)
%
% Function:
% - print_board: Prints the sudoku on the command window
%
% Inputs:
% - sudokuBoard: Sudoku board (9x9 double)
% - title: Title of the board
%
% Author: sgalella
% https://github.com/sgalella


if ~exist('title', 'var') 
    title = "Sudoku Board";
end

fprintf("\n%s\n",pad(title, 23, 'both', ' '))

fprintf("\n");
for iRow = 1:size(sudokuBoard,1) 
    fprintf(" ");
    for iCol = 1:size(sudokuBoard, 2)
        if sudokuBoard(iRow, iCol) == 0
            fprintf("· ", sudokuBoard(iRow, iCol));
        else
            fprintf("%d ", sudokuBoard(iRow, iCol));
        end
        if mod(iCol, 3) == 0 && iCol ~= size(sudokuBoard, 2)
           fprintf("| "); 
        end
    end
    if mod(iRow, 3) == 0 && iRow ~= size(sudokuBoard, 1)
       fprintf("\n%s",pad('-', 23, 'both', '-'))
    end
    fprintf("\n");
end
fprintf("\n");


end

