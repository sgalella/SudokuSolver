function sudokusolver(sudokuBoard)
%
% Function:
% - sudoku_solver: Solves the sudoku using backtracking
%
% Inputs:
% - sudokuBoard: Sudoku board (9x9 double)
%
% Author: sgalella
% https://github.com/sgalella

% Backtracking algorithm
for iRow = 1:size(sudokuBoard, 1)
    for iCol = 1:size(sudokuBoard, 2)
        if sudokuBoard(iRow, iCol) == 0
           for iNum = 1:9
               if validmovement(sudokuBoard, iRow, iCol, iNum)
                  sudokuBoard(iRow, iCol) = iNum;
                  sudokusolver(sudokuBoard);
                  sudokuBoard(iRow, iCol) = 0;  % Backtracking
               end
           end
           return 
        end
    end
end

% Store the solution into a cell
global solutions
solutions{end+1} = sudokuBoard;

end

