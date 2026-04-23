module GameLogic where

import Types

walkable :: Tile -> Bool
walkable Floor = True
walkable Door = True
walkable Wall = False

dirVector :: Direction -> (Int, Int)
dirVector East = (1, 0)
dirVector West = (-1, 0)
dirVector North = (0, -1)
dirVector South = (0, 1)
