# -Training-Room-Fortran-
A training repository for Fortran things





## Compilation

Because it has a base equal to the C language, Fortan uses a GCC extension called gfortran, which can be downloaded into arch linux by the original repositorio via pacman.

```shell
~$ sudo pacman -S gcc-fortran
```

Compiling any file requires the gfortran framework to call the compiler. The use of GNU MakeFiles causes the process of saving writing time. Fortran files have final .f90 by default, and after compiled they see .x as file indexers.

```shell
~$ gfortan file.f90 -o compilatedfile.x
```



## Basic structure

```fortran
program NameOfProgram
implicit none

(....)
Comand1
Comand2
(....)

end program
```



### Primitive Types

```reStructuredText
INTEGER : max 2147483647

REAL : 3.1415, -100.876

CHARACTER : Features string function

COMPLEX : 3.0 – 5.0i

LOGICAL : Variable Booleans TRUE and False.
```



### Aritimetic Operators

```reStructuredText
= : Sends the number to the variable, example: A receives(=) command.

+ :  Addition

- :  Subtraction

* : Multiplication

** : Potentiation

/ : Division
```



### Specific commands

STOP <number or message>: For the program and can list a number or message, widely used in debugging.

IMPLICIT NONE: Forces the specification of all the variables used, avoiding bugs and data loss, if not used, it will compile even with typos, giving error in calculations.

! : Using the exclamation at the beginning of a sentence will generate a comment.

& : Concatenates the bottom line with the current one.



### HelloWorld

```fortran
PROGRAM helloWorld
implicit none

write(*,*) "Hello World"

end program
```



## Declaration of variables

```fortran
PROGRAM helloWorld
implicit none

!Declarations
INTEGER:: r = 1
REAL:: j = 1.25

!Write in terminal
write(*,*) "Integer =", r
write(*,*) "Real =", j

end program
```



### Number conversion

```fortran
PROGRAM helloWorld
implicit none

!Declarations
INTEGER:: a = 2, b = 3

!Write in terminal
write(*,*) "a+b=", a+b !return the a+b=5
write(*,*) "a-b=", a-b !return the a-b=-1
write(*,*) "a*b=", a*b !return the a*b=6
write(*,*) "a**b=", a**b !return the a**b=8
write(*,*) "a/b=", a/b !return the a/b=0, because its integer

end program
```

By placing the calculation (following the mathematical logic) with the desired variation on the front, the output number will be modified according to the new type.

```fortran
PROGRAM helloWorld
implicit none

!Declarations
INTEGER:: a = 2, b = 3

!Write in terminal
write(*,*) "a/b=", a/b !return the a/b=0, because its integer
write(*,*) "a/b=", real(a)/b !return the a/b=0.666666687, because turns to real

end program
```



### Rounding

```fortran
PROGRAM helloWorld
implicit none

!Declarations
REAL:: a = 2.643

!Write in terminal
write(*,*) "A=", nint(a) !Return A=3, variable more close
write(*,*) "A=", ceiling(a) !Return A=3, variable more close upward
write(*,*) "A=", floor(a) !Return A=2, variable more close down

end program
```



### Reading numbers via terminal

```fortran
PROGRAM helloWorld
implicit none

!Declarations
REAL:: a

!Write in terminal
write(*,*) "Write a value"
read(*,*) a
write(*,*) "A=", a !It may be possible not to appear the exact number, being necessary rounding

write(*,*) "A=", nint(a) !Closer rounded number

end program
```

