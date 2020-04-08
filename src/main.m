%%%%% Main %%%%%
%
% Creates and solves a sudoku
%
% Author: sgalella
% https://github.com/sgalella

% Clear command window
clear;
clc;

% Initialize board (Easy)
sudokuBoard = [5 3 0 0 7 0 0 0 0;
               6 0 0 1 9 5 0 0 0;
               0 9 8 0 0 0 0 6 0;
               8 0 0 0 6 0 0 0 3;
               4 0 0 8 0 3 0 0 1;
               7 0 0 0 2 0 0 0 6;
               0 6 0 0 0 0 2 8 0;
               0 0 0 4 1 9 0 0 5;
               0 0 0 0 8 0 0 7 9];

% Initialize board (Hard)
% sudokuBoard = [0 0 0 0 5 0 0 0 9;
%                0 0 0 0 0 0 0 8 0;
%                6 8 3 0 0 0 4 0 0;
%                0 0 0 0 0 0 9 0 0;
%                0 0 8 0 7 0 0 6 1;
%                7 0 0 0 2 0 0 0 5;
%                0 5 0 0 4 0 0 0 0;
%                0 0 9 0 0 1 6 0 0;
%                0 7 0 0 0 6 0 0 3];

% Print initial board
printboard(sudokuBoard)

% Initialize cell to store solutions
global solutions
solutions = {};

% Solve board
sudokusolver(sudokuBoard);

% Print solutions
for iSolution = 1:length(solutions)
     printboard(solutions{iSolution}, "Solution " + num2str(iSolution));
end
