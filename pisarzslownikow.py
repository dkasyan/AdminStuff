import itertools  #Liberary to iteratiron
import glob
import os #Biblioteka sluzaca do

from itertools import product

###########Podaj wszystkie stringi########################
c = 'Dr@gonAge1234567890!@#$%^&*()'
lenght = len(c)
licznik = 0

#os.system('sudo touch slownik.txt')

print("Do liczenia pozycji")
print(lenght)
while licznik <= lenght:
    wynik = map(''.join, product(c, repeat=licznik))
    for i in wynik:
        #print(i)

    #    wpis = str(i)
    #    command = 'sudo echo"' wpis '">> slownik.txt'
    #    os.system(command)
        with open('slownik.txt', 'a') as f:
            f.write(i+'\n')
            f.close()

            # f.write("This is line %d\r\n" % (i+1))
    print("Jestem przy")
    print(licznik)
    licznik += 1  # Ma to taki sam efekt jak licznik = licznik + 1







###################Wyniki konkretne ########################
#wynik = map(''.join, product(c, repeat=6))

#for i in wynik:
#    print(i)
