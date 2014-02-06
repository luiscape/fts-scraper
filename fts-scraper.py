from bs4 import BeautifulSoup as Soup
from xml.dom.minidom import parse
import urllib2
import csv
import sys


# If by emergency, please select a country. 
userinput = 'syria'

xmlurl = 'http://fts.unocha.org/'

xmlpath = xmlurl + 'api/v1/Emergency/country/' + str(userinput) + '.xml'

print('Fetching data from:')
print(xmlpath)

xml = urllib2.urlopen(xmlpath).read()

soup = Soup(xml)
id = 'id'

for id in soup.emergency.find_next('id'):
	#id = soup.emergency('id')
	print soup.find('id').string

#for funding in soup.find_all('funding'):
#	print soup.find('funding').string