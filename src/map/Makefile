m.out: m.cpp
	$(CC) $(CFLAGS) m.cpp -o m.out

install: m.out
	cp m.out $(INSTALL_BIN)/hi

run: m.out
	./m.out $(args)

debug: m.out
	$(DEBUG) ./m.out $(args)

clean:
	rm -f m.out
