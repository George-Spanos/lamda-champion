module Types where 

data Tile = Wall | Floor | Door deriving (Eq, Show)

data Direction = DirUp | DirDown | DirRight | DirLeft deriving (Eq, Show)

