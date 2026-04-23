module Types where 

import Data.Map.Strict

data Tile = Wall | Floor | Door deriving (Eq, Show)

data Direction = DirUp | DirDown | DirRight | DirLeft deriving (Eq, Show)

data Coord = Coord {x :: Int, y :: Int} deriving (Eq, Show, Ord)

data GameState = GameState
  { dungeon :: Map Coord Tile
  , playerPos  :: Coord
  } deriving (Eq, Show)
