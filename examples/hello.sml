(* Simple program to learn SML *)


fun banner _ =  let
    val msgs = [
        "Learning Machine Learning and SML\n",
        "Author: Tiago Natel de Moura\n",
        "\n"
    ]
in
    app print msgs
end;

fun main [] = banner()
| main args = app (fn s => (print s; print "\n")) args;

val _ = main (CommandLine.arguments());
