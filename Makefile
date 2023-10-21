## Makefile to build donut.c to donut.wasm
#
# Usage:
# - make
# - make clean
# - make run
# - make publish
#

all:
	${CC} src/donut.c -o donut.wasm

clean:
	rm -f donut.wasm 

run:
	wasmer donut.wasm

publish:
	wasmer publish
