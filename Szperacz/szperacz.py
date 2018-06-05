import glob
import os

poh = 50000

print('Sprawdzam dyski pod kątem błędów i {} godzin'.format(poh))
print('Podaj hasło administratora')
#print("Sprawdzam dyski pod kontem {poh} godzin")

#os.system('sudo smartctl -a /dev/sda > testt.txt ')


with open('testt.txt','r') as f:                                 #Otwiera tekstgit
        for line in f:
            p = line.find('Reallocated_Sector_Ct')

            if p > 0:
                slowa = str(line)
                slowa = line.split(" ")
                ile = slowa.count("")
                ilei = int(ile)
                slowai = int(slowa[35])
                print(ile)
                if slowai > 0:
                    print("dysk do wyrzucenia")
                else:
                    print("dysk smiga")

############################# Sprawdzanie godzin ###############################
with open('testt.txt','r') as f:                                 #Otwiera tekstgit
        for line in f:
            k = line.find('Power_On_Hours')
            if k > 0:
                del slowa
                del slowai
                del ile
                del ilei
                slowa = str(line)
                slowa = line.split(" ")
                print(slowa)
                ile = slowa.count("")
                print(slowa[44])
                print()
                #ilei = int(ile)
                #slowai = int(slowa[44])

            #    print(ilei)
            #    if slowai >= poh:
                #    print("dysk do wyrzucenia")
                #else:
                #    print("dysk smiga")
########################## Testy################################################

        #        print(ile)
        #        print(slowa)
        #        print(slowa[35])
