module DSA.BST where

data Tree a =  Leaf | Node (Tree a) a (Tree a)
  deriving Show

insert :: (Ord a) => a -> Tree a -> Tree a
insert n Leaf = Node Leaf n Leaf
insert n node@(Node l root r) =
  if n < root then -- for comparison to work, we need Ord on type a
    Node (insert n l) root r
  else if n > root then
    Node l root (insert n r)
  else
    node -- if the element exists in BST, replace it



