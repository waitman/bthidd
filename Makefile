
all: bthidd

bthidd:

	yacc -d -o parser.c parser.y
	cc -O2 -pipe   -I/usr/home/waitman/bthidd -g -std=gnu99 -fstack-protector   -Qunused-arguments -c bthidd.c
	cc -O2 -pipe   -I/usr/home/waitman/bthidd -g -std=gnu99 -fstack-protector   -Qunused-arguments -c client.c
	cc -O2 -pipe   -I/usr/home/waitman/bthidd -g -std=gnu99 -fstack-protector   -Qunused-arguments -c hid.c
	cc -O2 -pipe   -I/usr/home/waitman/bthidd -g -std=gnu99 -fstack-protector   -Qunused-arguments -c kbd.c
	lex  -olexer.c lexer.l
	cc -O2 -pipe   -I/usr/home/waitman/bthidd -g -std=gnu99 -fstack-protector   -Qunused-arguments -c lexer.c
	cc -O2 -pipe   -I/usr/home/waitman/bthidd -g -std=gnu99 -fstack-protector   -Qunused-arguments -c parser.c
	cc -O2 -pipe   -I/usr/home/waitman/bthidd -g -std=gnu99 -fstack-protector   -Qunused-arguments -c server.c
	cc -O2 -pipe   -I/usr/home/waitman/bthidd -g -std=gnu99 -fstack-protector   -Qunused-arguments -c session.c
	cc -O2 -pipe   -I/usr/home/waitman/bthidd -g -std=gnu99 -fstack-protector   -Qunused-arguments  -o bthidd bthidd.o client.o hid.o kbd.o lexer.o parser.o server.o session.o -lbluetooth -lusbhid

clean:
	rm -f *.o
	rm -f bthidd
