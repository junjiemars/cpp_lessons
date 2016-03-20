hi.out: hi.cpp
	$(CC) $(CFLAGS) hi.cpp -o hi.out

install: hi.out
	cp hi.out $(INSTALL_BIN)/hi

run: hi.out
	./hi.out $(args)

debug: hi.out
	$(DEBUG) ./hi.out $(args)

clean:
	rm -f hi.out
