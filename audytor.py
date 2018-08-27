import os
import re
from collections import defaultdict
from datetime import datetime
import logging

class Backup:
    def __init__(self, number, creation_date, full):
        self.number = number
        self.creation_date = creation_date
        self.full = full

    def __lt__(self, other):
        return self.creation_date < other.creation_date

#
rootdir = "."
prefix = "/backup/kvm/snetvps21-kvm/kvm"

regex = re.compile(prefix + '([0-9]{3}_img_)\d{4}\-(0?[1-9]|1[012])\-(0?[1-9]|[12][0-9]|3[01])*.gz')

kvms = defaultdict(list)

log_name = "remover.log"
logging.basicConfig(filename=log_name, level=logging.DEBUG, format='%(asctime)s %(message)s')
logging.info("starting...")

# zbierz wszystkie backupy dla danego numeru kvm
for root, dirs, files in os.walk(rootdir):
    for file in files:
        if regex.match(file):
            backup_number = re.search('[0-9]{3}', file).group(0)
            backup_date = re.search('\d{4}-\d{2}-\d{2}', file).group(0)
            backup_date_object = datetime.strptime(backup_date, '%Y-%m-%d')

            current_backup = Backup(backup_number, backup_date_object, file)

            kvms[backup_number].append(current_backup)