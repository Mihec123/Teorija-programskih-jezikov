-- Homework 2 example 3 TPJ 2018 - uses trees, requires polymorphic type inference


-- basic polymorphism tests

list1 = let z = [] in let w = 0:z in True:z ;

twice f x = f (f x) ;

fourtimes = twice twice ;


-- a more complex example


odd n = if n == 0 then False
        else if n == 1 then True
	else odd (n-2) ;

greatest l =
  case l of [] -> 0 ;
            x:xs -> let y = greatest xs
	              in if x < y then y else x ;

build m n = if m < n+1 then Node m (build (m+m) (n + m-1)) (build (m+m +1) (n + m)) else Leaf ;

path p t = case t of Leaf -> [] ;
                     Node x t1 t2 -> x : (if (p x) then (path p t1) else (path p t2)) ;

maptree f t = case t of Leaf -> Leaf ;
                        Node x t1 t2 -> Node (f x) (maptree f t1) (maptree f t2) ;

subtrees t = case t of Leaf -> Leaf ;
                       Node x t1 t2 -> Node (Node x t1 t2) (subtrees t1) (subtrees t2) ;

append l1 l2 = case l1 of [] -> l2 ; x:xs -> x : (append xs l2) ;

traverse t = case t of Leaf -> [] ;
                       Node x t1 t2 -> x : (append (traverse t1) (traverse t2)) ;

list2 = traverse (maptree greatest (maptree (path odd) (subtrees (build 1 6)))) ;



