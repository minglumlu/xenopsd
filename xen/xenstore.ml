(*
 * Copyright (C) Citrix Systems Inc.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation; version 2.1 only. with the special
 * exception on linking described in file LICENSE.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *)
open Xenops_utils

module D = Debug.Make(struct let name = "xenstore" end)
open D

type domid = int

module Xs = struct

	type xsh = {
(*
        debug: string list -> string;
        directory : string -> string list;
*)
        read : string -> string;
(*
        readv : string -> string list -> string list;
*)
        write : string -> string -> unit;
(*
        writev : string -> (string * string) list -> unit;
        mkdir : string -> unit;
*)
        rm : string -> unit;
(*
        getperms : string -> perms;
        setperms : string -> perms -> unit;
        setpermsv : string -> string list -> perms -> unit;
        introduce : domid -> nativeint -> int -> unit;
        release : domid -> unit;
        resume : domid -> unit;
*)
        getdomainpath : domid -> string;
(*
        watch : string -> string -> unit;
        unwatch : string -> string -> unit;
*)
}


	let daemon_open _ = failwith "daemon_open"

	let close _ = failwith "close"

	let getdomainpath _ _ = failwith "getdomainpath"
end