module Dungeon (mkDungeon ) where 

import Coord
import Tile
import Data.Map.Strict (Map, fromList)

mkDungeon:: Int -> Int -> Map Coord Tile
mkDungeon w h = fromList [ (Coord x y, t) | x <- [0..w-1], y <- [0..h-1], let t = if x ==0 || x == w-1 || y == 0 || y == h-1 then Wall else Floor]

