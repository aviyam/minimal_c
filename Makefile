CC=gcc

image:
	docker image build -t hello:2 .

clean:
	docker rmi hello:2 -f

.PHONY : all
all : image

