quickSort :: Ord a => [a] -> [a] --Function declaration
quickSort [] = [] --Base case
quickSort (pivot:xs) = quickSort lesser ++ [pivot] ++ quickSort greater --Recursive case
    where 
         --Filter array contents into a new array of everything less than pivot
        lesser = filter(<pivot) xs
        --Filter array contents into a new array ov everything greater than pivot
        greater = filter(>=pivot) xs
