-- Find the last element of a list.
myLast [] =  Nothing
myLast [x] = Just x
myLast (_ : x) = myLast x

myLast2 = last 

myLast3 = 
    let 
        lastItem x =
            case x of 
                [x] -> Just x
                [] -> Nothing
                _ : rest -> lastItem rest
    in lastItem


-- find the last-but-one (or second-last) element of la list.
myButLast = myLast3 . init 


-- Find the k'th element of a list 

elementAt arr idx = 
    let
        currentIdx = idx -1
    in 
        if currentIdx == 0
            then head arr
            else elementAt (tail arr) currentIdx

-- Find the number of elements in a list
myLength arr = 
    case arr of 
        [] -> 0
        x : rest -> 
           1 + myLength rest





