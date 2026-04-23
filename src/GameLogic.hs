module GameLogic where

import Types

walkable :: Tile -> Bool
walkable Floor = True
walkable Door = True
walkable Wall = False

dirVector :: Direction -> (Int, Int)
dirVector DirRight = (1, 0)
dirVector DirLeft = (-1, 0)
dirVector DirUp = (0, -1)
dirVector DirDown = (0, 1)
