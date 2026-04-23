module GameState where

import Coord
import Tile
import Data.Map.Strict (Map)

data GameState = GameState
  { dungeon :: Map Coord Tile
  , playerPos  :: Coord
  } deriving (Eq, Show)
