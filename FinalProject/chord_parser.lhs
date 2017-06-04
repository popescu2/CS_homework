> module Chord_parser where
> import Text.ParserCombinators.ReadP
> import Data.Char 



> isChord :: Char -> Bool
> isChord c = any ( toUpper c ==) "ABCDEFG"

	> isChord' :: String -> ReadP String
	> isChord' (c:d:rest) = any (toUpper c ==) "ABCDEFG"
	>                       && (any (d == )     "b#"
	>                           || d:rest == "7")

> chordparse :: ReadP Char
> chordparse = satisfy isChord



> isForS :: ReadP Char
> isForS = satisfy (\c -> c == 'b' || c == '#')


> forschord :: ReadP [Char]
> forschord  = do
>     chrd <- forschord'
>     eof
>     return (chrd)

> forschord' :: ReadP [Char]
> forschord'  = do
>     chrd <- count 1 chordparse
>     mod  <- isForS
>     return (chrd ++ [mod]) 

> sevenchord :: ReadP [Char]
> sevenchord = do
>     chrd <- sevenchord'
>     eof
>     return (chrd)

> sevenchord' :: ReadP [Char]
> sevenchord' = do
>     chrd <- choice [forschord', regchord']
>     rest <- look
>     if rest == "7" then return (chrd)
>     else pfail

> regchord :: ReadP [Char]
> regchord  = do
>     chrd <- regchord'
>     eof
>     return chrd

> regchord' :: ReadP [Char]
> regchord'  = do
>     chrd <- chordparse
>     return [chrd]

> chord :: ReadP [Char]
> chord = do
>    chrd <- choice [forschord, regchord, sevenchord']
>    return chrd
