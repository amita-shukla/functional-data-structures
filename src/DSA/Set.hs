module DSA.Set where

import DSA.BST (Tree(..), insert)

type Set = Tree

member :: Ord a => a -> Set a -> Bool
member a Leaf = False
member a (Node l b r) = if a<b then member a l else if a>b then member a r else True

insert :: Ord a => a -> Set a -> Set a
insert = DSA.BST.insert
