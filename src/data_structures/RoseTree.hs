module RoseTree where

-- A multiway tree or rose tree, is a data structure having a root,
-- and unbounded number of branches per node
data Rose a = Rose a [Rose a]

-- todo :: define some operations on rose tree

