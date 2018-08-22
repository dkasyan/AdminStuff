import os
import fnmatch 

listof23files = os.listdir('/snetvps23-kvm')
patern = "*.gz"

for entry in listof23files;
	if fnmatch.fnmatch(entry, pattern);
		print(entry)