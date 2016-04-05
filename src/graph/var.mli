val create
  :  int list
  -> type_:'a Node.Type.t
  -> init:'a Node.t
  -> 'a Node.t

val float : int list -> init:([ `float ] Node.t) -> [ `float ] Node.t
val double : int list -> init:([ `double ] Node.t) -> [ `double ] Node.t
val f : int list -> float -> [ `float ] Node.t
val d : int list -> float -> [ `double ] Node.t
val normalf : int list -> stddev:float -> [ `float ] Node.t
val normald : int list -> stddev:float -> [ `double ] Node.t
val truncated_normalf : int list -> stddev:float -> [ `float ] Node.t
val truncated_normald : int list -> stddev:float -> [ `double ] Node.t
val load_f : int list -> filename:string -> tensor:string -> [ `float ] Node.t
val load_d : int list -> filename:string -> tensor:string -> [ `double ] Node.t

val get_init : Node.p -> Node.p option
