CC=gcc

hello: 
	$(CC) -o hello hello.c -static 

image:
	docker image build -t hello .

clean:
	docker rmi hello -f
	rm hello

.PHONY : all
all : hello image

