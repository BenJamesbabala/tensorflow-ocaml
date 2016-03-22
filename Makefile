load.native: .FORCE
	ocamlbuild examples/load.native

simple.native: .FORCE
	ocamlbuild examples/simple.native

var.native: .FORCE
	ocamlbuild examples/var.native

gradient.native: .FORCE
	ocamlbuild examples/gradient.native

gen.native: .FORCE
	ocamlbuild src/gen_ops/gen.native

src/graph/ops.ml: gen.native
	LD_LIBRARY_PATH=./lib:$(LD_LIBRARY_PATH) ./gen.native

run: simple.native var.native load.native gradient.native
	LD_LIBRARY_PATH=./lib:$(LD_LIBRARY_PATH) ./load.native
	LD_LIBRARY_PATH=./lib:$(LD_LIBRARY_PATH) ./simple.native
	LD_LIBRARY_PATH=./lib:$(LD_LIBRARY_PATH) ./var.native
	LD_LIBRARY_PATH=./lib:$(LD_LIBRARY_PATH) ./gradient.native

.FORCE:
