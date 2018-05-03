-- Homework 2 example 2 TPJ 2018 - uses trees, works with monomorphic type inference

twice f x = f (f x) ;

tree0 = Leaf ;

tree1 = Node 2 (Node 3 Leaf Leaf) Leaf ;

build m n = if m < n+1 then Node m (build (m+m) (n + m-1)) (build (m+m +1) (n + m)) else Leaf ;

tree2 = build 1 4 ;

reflect t = case t of Leaf -> Leaf ; Node x y z -> Node x (reflect z) (reflect y) ;

append l1 l2 = case l1 of [] -> l2 ; x:xs -> x : (append xs l2) ;

traverse t = case t of Leaf -> [] ;
                       Node x t1 t2 -> x : (append (traverse t1) (traverse t2)) ;

list1 = traverse (build 1 8) ;

path p t = case t of Leaf -> [] ;
                     Node x t1 t2 -> x : (if (p x) then (path p t1) else (path p t2)) ;

odd n = if n == 0 then False
        else if n == 1 then True
	else odd (n-2) ;

list2 = path odd (build 1 10) ;

