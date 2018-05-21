import glob
import os

print("czytam co i jak")
#f = open('test.txt', 'r')
#pliczek = (f.read())
#f.close

with open('test.txt','r') as f:                                 #Otwiera tekstgit
        for line in f:
            p = line.find('Reallocated_Sector_Ct')
            if p > 0:
               # slowa = str(line) 
                slowa = line.split(" ")
                ile = slowa.count("")
                if slowa[35] > 0:
                    print("dysk do wyrzucenia")
                else:
                    print("dysk smiga")
                    #### Sprawdzanie godzin
        for line in f:
            p = line.find('Power_On_Hours')
            if p > 0:
                

                print(ile)
                print(slowa)
                print(slowa[35])
            
                    
                   
                  
f.close
#print(f.readline())
#f.close()

#for file in glob.glob("*.txt"): 
 #       ppp = open('file','r+')
#        print(ppp)


sudo python3.6 smart-gab-remover.py 