module GameState (
  GameState,
  mkGameState,
  initGame
) where

import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map
import Data.Maybe (fromJust)

import Coord
import Tile
import Dungeon

data GameState = GameState
  { dungeon :: Map Coord Tile
  , playerPos  :: Coord
  } deriving (Eq, Show)

mkGameState :: Map Coord Tile -> Coord -> Maybe GameState
mkGameState dungeon playerPos = case Map.lookup playerPos dungeon of
  Just t | walkable t -> Just $ GameState dungeon playerPos
  _ -> Nothing

initGame:: GameState
initGame = fromJust $ mkGameState dungeon $ Coord 5 5 
  where w = 80
        h = 24
        dungeon = mkDungeon w h
