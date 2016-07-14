


(* matrix examples *)

fun printLine nil = unit
  | printLine (x::nil) = print (Int.toString x)
  | printLine (x::y) = ((print (Int.toString x));
                        printLine (y))
fun pmatrix nil = []
  | pmatrix (x::[]) = printLine x
  | pmatrix (x::y) = (printLine x; printLine (hd y));

val _ =
    let
        val matrix : (int list list) = [
            [0, 0, 0],
            [0, 0, 0]
        ]
    in
        pmatrix matrix
    end
