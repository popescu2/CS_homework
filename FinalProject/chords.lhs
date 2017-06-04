What is this?

> module Chords where

> import Data.Char               
> import Data.List
> import Data.Maybe
> import Chord_parser
> import Text.ParserCombinators.ReadP


----------------List of Chords---------------------------

> chordlistmaj :: [String]
> chordlistmaj = words "A Bb Cb C Db D Eb Fb F Gb G Ab"
> chordlistmaj'= words "A A# B B# C# D D# E E# F# G G#"

> chordlistmin :: [String]
> chordlistmin = words "a bb cb c db d eb fb f gb g ab"
> chordlistmin'= words "a a# b b# c# d d# e e# f# g g#"

> chordlistmajdefault = words "A Bb B C Db D Eb E F Gb G Ab"
> chordlistmindefault = words "a bb b c db d eb e f gb g ab"

---------------------------------------------------------
=========================================================

> normalize :: String -> String
> normalize cs | cs `elem` chordlistmaj = chordlistmajdefault !!
>                    ((fromJust . elemIndex cs) chordlistmaj)
>              | cs `elem` chordlistmin = chordlistmindefault !!
>                    ((fromJust . elemIndex cs) chordlistmin)
>              | cs `elem` chordlistmaj' = chordlistmajdefault !!
>                    ((fromJust . elemIndex cs) chordlistmaj')
>              | cs `elem` chordlistmin' = chordlistmindefault !!
>                    ((fromJust . elemIndex cs) chordlistmin')
>              | otherwise = "--"


---------------------------------------------------------
List of functions to determine what sort of chord it is.
---------------------------------------------------------

> isSharp :: String -> Bool
> isSharp (c:[]) = False
> isSharp (c:d:cs) | d == '#'  = True
>                  | otherwise = False


> isFlat :: String -> Bool
> isFlat (c:[]) = False
> isFlat (c:d:cs) | d == 'b'  = True
>                 | otherwise = False

> isMajorChord :: String -> Bool
> isMajorChord (c:cs) = if fromEnum c >= 65 && fromEnum c <= 71 then True
>                       else False

> isMinorChord :: String -> Bool
> isMinorChord (c:cs) = if fromEnum c >= 97 && fromEnum c <= 103 then True
>                       else False

> isMaj7Chord :: String -> Bool
> isMaj7Chord cs = if isMajorChord cs then
>                      cs `elem` map ( ++ "7") 
>                      (chordlistmaj ++ chordlistmaj')
>                  else False

> isMin7Chord :: String -> Bool
> isMin7Chord cs = if isMinorChord cs then
>                      cs `elem` map ( ++ "7") 
>                      (chordlistmin ++ chordlistmin')
>                  else False

----------------------------------------------------------

-----------------------------------------------------------

> extractnext :: String -> Int -> String
> extractnext cs i 
>      | cs' `elem` chordlistmajdefault = chordlistmajdefault !! 
>                  (((fromJust . elemIndex cs') chordlistmajdefault + i)
>                                 `mod` 12)
>      | cs' `elem` chordlistmindefault = chordlistmindefault !! 
>                  (((fromJust . elemIndex cs') chordlistmindefault + i)
>                                 `mod` 12)
>      | otherwise = "--"
>      where cs' = normalize cs


> transposechords :: String -> Int -> String
> transposechords cs i = let cs' = shiftchords cs i
>                        in cs'

> shiftchords :: String -> Int -> String
> shiftchords cs i = concat $
>                    map (++" ") $
>                    map ( $ i) (map shiftchord' (words cs))

> shiftchord' :: String -> Int -> String
> shiftchord' cs i = 
>                    let clist = readP_to_S chord cs in
>                    if clist == [] then "--"
>                    else
>                       let (x,y) = head $ readP_to_S chord cs
>                       in (extractnext x i) ++ y 



End of file
