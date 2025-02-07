CFLAGS =
LDFLAGS =

RayTracer: *.cpp *.h
	g++ $(CFLAGS) -o RayTracer.out *.cpp $(LDFLAGS)

.PHONY: test clean

test: RayTracer
	./RayTracer.out > image.ppm
	nsxiv image.ppm

clean: RayTracer
	rm -rf RayTracer.out
	rm -rf image.ppm
