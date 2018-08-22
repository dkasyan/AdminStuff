import glob
import os

poh = 50000

print('Sprawdzam dyski pod kątem błędów i liczby {} godzin'.format(poh))
print('Podaj hasło administratora##################################################################################')
#print("Sprawdzam dyski pod kontem {poh} godzin")

#os.system('sudo smartctl -a /dev/sda > testda.txt ')


#dyski hitahi Device Model:     ST3000DM001-1CH166





with open('testaa.txt','r') as f:                                 #Otwiera tekstgit
    for line in f:
        k = line.find('Reallocated_Sector_Ct')
        p = line.find('Power_On_Hours')
        sn = line.find('Serial Number:') 
        if k > 0:
            words = str(line)
            words = line.split(" ")
            #words = words[35]
            kwalue = words[35]    
            continue 

        if p > 0:
            del words
            words = str(line)
            words = line.split(" ")
            #words = words[35]
            pwalue = words[35]
            print(pwalue)               
            

                


                

  

                    

        


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