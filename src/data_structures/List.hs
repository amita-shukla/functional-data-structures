module List where

import Prelude hiding ((++))

data List a = Nil | Cons a (List a)
  deriving Show

(++) :: List a -> List a -> List a
(++) Nil ys = ys
-- (++) xs Nil = xs
(++) (Cons h t) ys = Cons h (t ++ ys)

update :: List a -> Int -> a -> List a
update Nil _ _ = Nil
update (Cons h t) i x =
  if i == 0 then
    Cons x t
  else
    -- update t (i-1) x
    (Cons h $ update t (i-1) x)


