{-# LANGUAGE MultiParamTypeClasses #-} -- Set takes more then 1 type parameter
{-# LANGUAGE FlexibleInstances #-} -- To allow Set instance have arbitrary nested types
{-# LANGUAGE InstanceSigs #-} -- Allow putting instance  signatures in type instances
  

module DSA.Set.UnbalancedSet where

import DSA.BST (Tree(..), insert)
import DSA.Set.Set

--data UnbalancedSet a = Leaf | Node  (UnbalancedSet a) a (UnbalancedSet a)
type UnbalancedSet = Tree

instance Ord a => Set UnbalancedSet a where -- make UnbalancedSet an instance of Set, with the constraint on a as Ordered
  empty :: UnbalancedSet a
  empty = Leaf

  insert :: a -> UnbalancedSet a -> UnbalancedSet a
  insert = DSA.BST.insert
  
  member :: a -> UnbalancedSet a -> Bool
  member a Leaf = False
  member a (Node l b r) = if a<b then member a l else if a>b then member a r else True

