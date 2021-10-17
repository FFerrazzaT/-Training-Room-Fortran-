program TemperatureConverter
implicit none

real:: f, k

write(*,*) "What is the temperature in Fahrenheit: "
read(*,*) f

k = ((5./9)*(f-32.)) + 273.15

write(*,*) "k=", k


end program 
