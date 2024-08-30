open Fmt

type t =
  { annotid : string
  ; items : Sexp.t
  }

type 'a annot =
  | Contract of 'a Contract.t
  | Annot of t

val pp_annot : formatter -> 'a annot -> unit

val record_annot : string -> Sexp.t -> unit

val get_annots : unit -> t list
