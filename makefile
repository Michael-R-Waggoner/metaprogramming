cflags = -g3 -Wall -Werror -O2

.phony: all, clean 

all: c rust go

c:
	gcc $(cflags) c.c -o c
	./c

rust:
	rustc rust.rs 
	./rust 

go:
	go run go.go

clean:
	rm c 
	rm rust 
