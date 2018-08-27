import glob
import re

rootdir = "."
prefix = "kvm"

regex = re.compile(prefix + '([0-9]{3}_img_)\d{4}\-(0?[1-9]|1[012])\-(0?[1-9]|[12][0-9]|3[01])*.gz')

nowekurwy = glob.glob("/backup/kvm/snetvps21-kvm/*.gz")

print(nowekurwy)