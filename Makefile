FC=gfortran
FFLAGS=-c -std=f2008 -fcheck=all -Wall -Wextra

SRCS=src/rand.f90 src/genatoms.f90
OBJS=$(SRCS:*.f90=*.o)

PROG=genatoms

$(PROG): $(OBJS)
	$(FC) -o $(PROG) $^

%.o: %.f90
	$(FC) $(FFLAGS) $<

clean:
	rm $(PROG) *.mod src/*.o 2>/dev/null
