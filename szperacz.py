import glob
import os

print("czytam co i jak")
#f = open('test.txt', 'r')
#pliczek = (f.read())
#f.close
with open('test.txt','r') as f:
        for line in f:
            p = line.find('Reallocated_Sector_Ct')
            if p > 0:
               # slowa = str(line) 
                slowa = line.split(" ")
                ile = slowa.count("")
                if slowa[35] > 0:
                    print("dysk do wyrzucenia"
                else:
                    print("dysk smiga")

                print(ile)
                print(slowa)
                print(slowa[35])
            
                    
                   
                  
f.close
#print(f.readline())
#f.close()

#for file in glob.glob("*.txt"): 
 #       ppp = open('file','r+')
#        print(ppp)
