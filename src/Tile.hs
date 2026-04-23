module Tile where

data Tile = Wall | Floor | Door deriving (Eq, Show)

walkable :: Tile -> Bool
walkable Floor = True
walkable Door = True
walkable Wall = False
