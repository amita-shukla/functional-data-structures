module Exercises.ListEx where

-- suffixes of type list a -» list list a that takes a
-- list xs and returns a list of all the suffixes of xs in decreasing order of length.
-- suffixes [1,2,3,4] = [[1,2,3,4], [2,3,4], [3,4], [4], [ ] ]
suffixes :: [a] -> [[a]]
suffixes xs = suffixesUtil xs [] where
  suffixesUtil [] zs = zs
  suffixesUtil ys@(h:t) zs = suffixesUtil t (zs ++ [ys]) -- append instead of prepend
  -- suffixesUtil ys@(h:t) zs = suffixesUtil t (ys : zs) -- this outputs by increasing order of length
  -- suffixesUtil ys zs = suffixesUtil (init ys) (ys : zs) -- haha, this is finding prefix
