module Types where 

import Data.Map.Strict (Map)

data Tile = Wall | Floor | Door deriving (Eq, Show)

data Direction = North | South | East | West deriving (Eq, Show)

data Coord = Coord {x :: Int, y :: Int} deriving (Eq, Show, Ord)

data GameState = GameState
  { dungeon :: Map Coord Tile
  , playerPos  :: Coord
  } deriving (Eq, Show)
