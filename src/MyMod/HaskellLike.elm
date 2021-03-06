module MyMod.HaskellLike exposing (..)

($) : (a -> b) -> a -> b
($) = (<|)

(.) : (b -> c) -> (a -> b) -> (a -> c)
(.) = (<<)

zipWith : (a -> b -> c) -> List a -> List b  -> List c
zipWith = List.map2

foldl : (a -> b -> a) -> a -> List b -> a
foldl f e xs = List.foldl (flip f) e xs

flat : List(List a) -> List a
flat = List.concat

last : List a -> a
last l = case l of
  x :: [] -> x
  _ :: xs -> last xs
  _       -> Debug.crash "A last element has not found"