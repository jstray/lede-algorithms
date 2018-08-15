# Process Lending Club loan.csv, taking about 1/10 of original rows
# obtained from https://www.kaggle.com/wendykan/lending-club-loan-data
import csv
import numpy as np

reader = csv.DictReader(open('loan.csv', 'r'))
writer = csv.DictWriter(open('loan-subset.csv', 'w'), fieldnames=reader.fieldnames)
writer.writeheader()

# Keep only loans that have concluded: paid or defaulted
for row in reader:
	status = row['loan_status']
	if status=='Fully Paid':
	 	if np.random.uniform() < 0.25:
	 		writer.writerow(row)
	elif status=='Charged Off' or status=='Default':
		writer.writerow(row)
	
