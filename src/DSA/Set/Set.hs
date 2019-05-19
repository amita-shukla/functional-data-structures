{-# LANGUAGE MultiParamTypeClasses #-}
module DSA.Set.Set where

class Set s a where -- a type class Set, where s is the set and a is the type of set
  empty :: s a
  insert :: a -> s a -> s a
  member :: a -> s a -> Bool

--type Set = Tree
--
--member :: Ord a => a -> Set a -> Bool
--member a Leaf = False
--member a (Node l b r) = if a<b then member a l else if a>b then member a r else True
--
--insert :: Ord a => a -> Set a -> Set a
--insert = DSA.BST.insert
