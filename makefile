cflags = -g3 -Wall -Werror -O2

.phony: all, clean 

all: c rust go

rant: rant.py 
	python rant.py 

c: c.c
	gcc $(cflags) c.c -o c
	./c

rust: rust.rs
	rustc rust.rs 
	./rust 

go: go.go
	go run go.go

clean:
	rm c 
	rm rust 
