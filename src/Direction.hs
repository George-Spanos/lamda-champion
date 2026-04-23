module Direction where

data Direction = North | South | East | West deriving (Eq, Show)

dirVector :: Direction -> (Int, Int)
dirVector East = (1, 0)
dirVector West = (-1, 0)
dirVector North = (0, -1)
dirVector South = (0, 1)
