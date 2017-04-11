Matthew Popescu
CS 457
Homework Assignment 1
Professor: Mark Jones

----------------------------
Question 1:
-----------



----------------------------
Question 2:
-----------

> dup   :: (a -> a -> a) -> a -> a
> dup f x = f x x

    The following functions will be defined later, at the 
    end of this question.

    double  :: Integer -> Integer
    double n = 2 * n

    square :: Integer -> Integer
    square n = n * n

The function dup takes in a function, of type (a -> a -> a), 
which receives an input of type 'a', and returns a function 
that receives another type 'a', and finally will output a type 'a'.

That was the first argument to the function 'dup'. The above 
description specifies what the first part of "dup" does. It 
essentially will return a function that is described by the last
part of the type: .... -> a -> a

It basically takes a function that requires two things of the
same type, but assumes the programmer will only give them one
of those things. It then applies that function again.

In easier English: It allows one to duplicate an argument for 
a function that requires two arguments of the same type.

For example, the function (+) requires 2 inputs: any two Integers will do.

Our function "double" can be rewritten as follows:

        // double rewritten with dup
        dup (+) n     <- where 'n' is any Integer
        
> double n = dup (+) n

The function "square" can be similarly changed:

        // square rewritten with dup
        dup (*) n     <- where 'n' is any Integer

> square n = dup (*) n



-------------------------------------------------------------
Question 3:
-----------

> powerOfTwo :: Int -> Integer
> powerOfTwo n = product (take n [2,2..]) 

   ]> powerOfTwo 3 
   ]> 8

   ]> powerOfTwo 5
   ]> 32

   ]> powerOfTwo 20
   ]> 1048576


> logTwo :: Integer -> Int
> logTwo v = length (takeWhile (v>) [ powerOfTwo x | x <- [0,1..]])  

   ]> logTwo 1
   ]> 0

   ]> logTwo 2
   ]> 1

   ]> logTwo 63
   ]> 6

   ]> logTwo 64
   ]> 6

   ]> logTwo 65
   ]> 7

   ]> logTwo (-55)
   ]> 0


> copy :: Int -> a -> [a]
> copy n x = [x | y <- [1..n]]

   ]> copy 3 True
   ]> [True,True,True]

   ]> copy 5 2
   ]> [2,2,2,2,2]

   ]> copy 3 "hello"
   ]> ["hello","hello","hello"]

   ]> copy 0 "hello"
   ]> []

> multiApply :: (a -> a) -> Int -> a -> a
> multiApply f n x = iterate f x !! n 



> q f n m x = multiApply (multiApply f n) m x

The type of the function above is...
    
    ]> :t q 
    ]> q :: (a -> a) -> Int -> Int -> a -> a

    the function 'q' does the following: 

    It takes in a function 'f' and a number 'n', and it forms a function
    out of these two things. The function it makes will apply the function 'f'
    'n' times. 

    Next, it takes another number 'm'. It takes the previous function that was
    formed and applies that *newly created function* 'm' times.

    For example, let's say that we decided to use the function q as follows:

    ]> q (+1) 1 2 0

    So, the function takes (+1) and the number 1, and forms a new function out 
    of these arguments. Specifically, apply the function (+1) once. Nothing too
    interesting here. Next, it takes the number 2, and applies the previously 
    created function '2' times.

    So, the function is now "add 1 one time, but do that twice." in very simple
    English. In more mathematical terms, this is multiplying the effect of 
    multiApply. I will explain this in more detail at the end.

    Next, the function q needs to know what it is adding to. I specified above 
    that we will be adding to the number 0.

    Essentially, you can replicate the function q (+1) 1 2 0 by multiplying the
    first 2 arguments together, and just have that be the second argument to
    multiApply.


    The following pairs of function calls have the same results.

    q           (+1)    1       2       0 
    multiApply  (+1)            (2*1)   0

    q           square  3       4       2
    multiApply  square          (3*4)   2

    q           (*5)    3       5       5
    multiApply  (*5)            (3*5)   5   


-------------------------------------------------------------------------------
Question 4:
-----------

> revindex :: [a] -> Int -> a
> revindex l n = (reverse l) !! n
    


-------------------------------------------------------------------------------
Question 5:
-----------

> strange xs = head (head (reverse (takeWhile notnull (iterate twirl xs))))
> notnull xs = not (null xs)
> twirl xs   = reverse (tail xs)

Let list A = [1,2,3,4,5]


This function essentially creates a list of lists. It first "takes" the
original list.

    so far... [[1,2,3,4,5]]    <- note, this is a list of lists.


next, it reverses the tail of this list, and "takes" the result.

    so far... [[1,2,3,4,5],[5,4,3,2]]


It continues to reverse the tail of each modified list, until the final
"tail" function returns the empty list.

    so far... [[1,2,3,4,5],[5,4,3,2],[2,3,4],[4,3],[3]]


Next, we reverse the entire list, and take the "head" of the list.

    so far... [3]


Finally, we call "head" one last time, extracting the value out of the list

    final result: 3

This functional, essentially, returns the "middle" element of the list, where
the index will be rounded down.

So, if the length of the list is 8, it will return index 4.
If the length of the list is 9, it will return index 4.

So, this function can be modified to calculate this value in a more intuitive
way.

> strange_better xs = xs !! floor( fromIntegral((length xs)) /2)


To ensure correctness, here are a few test situations I created.
I made sure the outputs of both functions were the same in various
situations.

    ]> strange [1..5] 
    ]> 3

    ]> strange_better [1..5]
    ]> 3

    ]> strange [2,4..23]
    ]> 12

    ]> strange_better [2,4..23]
    ]> 12

    ]> strange [1]
    ]> 1

    ]> strange_better [1]
    ]> 1

    ]> strange "hello there"
    ]> ' '

    ]> strange_better "hello there"
    ]> ' '

    





















