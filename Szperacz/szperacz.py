import glob
import os

poh = 50000

print('Sprawdzam dyski pod kątem błędów i liczby {} godzin'.format(poh))
print('Podaj hasło administratora##################################################################################')
#print("Sprawdzam dyski pod kontem {poh} godzin")

#os.system('sudo smartctl -a /dev/sda > testda.txt ')


#with open('testaa.txt','r') as f:                                 #Otwiera tekstgit
        for line in f:
            k = line.find('Reallocated_Sector_Ct')
            p = line.find('Power_On_Hours')

        logic == True;

            if k > 0:
                slowa = str(line)
                slowa = line.split(" ")
                ile = line.count("")
                ilei = int(ile)
                slowai = int(slowa[35])
                print("")
                if slowai > 0:
                    print("Znacznik false")
                

                else:
                    print("Znacznik true")
                    relsec = True
                del slowa
                del slowai
                del ile
                del ilei
            
            if p > 0:
                slowa = str(line)
                slowa = line.split(" ")
                ile = line.count("")
                ilei = int(ile)
                print("doszlo")
                slowai = int(slowa[10])
                print("")
                if slowai > 0:
                    print("Znacznik false")
                    timemax = False

                else:
                    print("Znacznik true")
                    timemax = True

                
                
                
                print("jolo")
            else:
                






                    

        


############################# Sprawdzanie godzin ###############################
#with open('testda.txt','r') as f:                                 #Otwiera tekstgit
#        for line in f:
#            k = line.find('Power_On_Hours')
#            if k > 0:
#                del slowa
#                del slowai
#                del ile
#                del ilei
#                slowa = str(line)
#                slowa = line.split(" ")
#
 #               ile = slowa.count("")
                #print(slowa[43])

                #ilei = int(ile)
 #               slowai = int(slowa[43])

            #    print(ilei)
#                if slowai >= poh:
#                    powoh = False
#                else:
#                    powoh = True
########################## Podsumowanie ################################################
#koniec = False
#if powoh == True:
#    if relsec == True:
#        koniec = True
#    else:
#        koniec = False
#else:
#    koniec = False
#if koniec == True:
#    os.system('sudo ')
#    print("Wszystko ok")

        #        print(slowa)
#        print(slowa[35])