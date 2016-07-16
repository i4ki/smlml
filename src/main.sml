(* main *)

structure SmlML =
struct

exception SmlMLExn of string

fun parseArgs nil = raise SmlMLExn ("No command specified")
  | parseArgs (args:string list) =
    case hd (args)
     of "project" => "Option to create new project..."
      | _ => raise SmlMLExn ("Unknown command: " ^ hd (args))

fun processArgs cmd = (print (cmd ^ "\n"); OS.Process.success)

fun main (name, args) =
   let
       val cmd = parseArgs (args)
   in
       (print ("Standard ML Machine Learning tool\n");
        processArgs cmd)
   end
   handle (SmlMLExn s) => (print (s ^ "\n"); OS.Process.failure)
end
