module DSA.Stack where

-- A stack is a list, but i am deliberately creating a new list here in the form of stack... for the sake of... practice

data Stack a = Nil | Cons a (Stack a) -- Creating a list without pattern matching on cons operator(i.e. (:)) ?
  deriving (Show)

push :: a -> Stack a -> Stack a
push a Nil = Cons a Nil
push a cons =  Cons a cons

pop :: Stack a -> Maybe (Stack a)
pop Nil = Nothing
pop (Cons h t) = Just t

isEmpty :: Stack a -> Bool
isEmpty Nil = True

