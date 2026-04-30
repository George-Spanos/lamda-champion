module GameState (
  GameState,
  mkGameState,
) where

import Coord
import Tile
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map

data GameState = GameState
  { dungeon :: Map Coord Tile
  , playerPos  :: Coord
  } deriving (Eq, Show)

mkGameState :: Map Coord Tile -> Coord -> Maybe GameState
mkGameState dungeon playerPos = case Map.lookup playerPos dungeon of
  Just t | walkable t -> Just $ GameState dungeon playerPos
  _ -> Nothing
