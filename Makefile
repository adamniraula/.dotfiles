# The 'linux' target depends on 'clean', meaning it will run 'clean' first
linux: clean
	./bin/linux.sh

clean:
	./bin/cleanup.sh
