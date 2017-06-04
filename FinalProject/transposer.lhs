> import Chords
> import Data.Char
> import Control.Monad

> requestint = "\nPlease enter a shift amount (a number): "

> requestchords = "\nEnter a series of chords.\n" ++
>                 "Accepted chord formats: \n" ++
>                 "    Major Chords: A,  B#,  Eb ...\n" ++
>                 "    Minor Chords: a,  b#,  eb ...\n" ++
>                 "    Major 7th:    A7, B#7, Eb7...\n" ++
>                 "    Minor 7th:    a7, b#7, eb7...\n" 

> readInt = do
>     i <- getLine
>     let int = takeWhile isDigit i in
>         if int == "" then return 0
>         else return (read int::Int)

> showresult :: String -> IO ()
> showresult cs = do putStr "\n  Transposed chords: "
>                    putStrLn (cs ++ "\n\n")

> evalmenuinput cs | cs == "q" = return ()
>                  | cs == "1" = transposermenu2
>                  | otherwise = transposermenu

> transposermenu  = do putStrLn "Welcome to the Chord Transposer!"
>                      putStrLn "Press [1] to transpose chords."
>                      putStrLn "Press [2] to quiz yourself."
>                      putStr "Press [q] to quit.\n> "
>                      i <- getLine 
>                      evalmenuinput i



> transposermenu2 = do putStrLn requestchords 
>                      putStr   "> "
>                      crds <- getLine
>                      i <- shiftamountmenu
>                      showresult $ shiftchords crds i
>                      transposermenu

> shiftamountmenu = do putStr requestint
>                      i <- readInt
>                      return i 


