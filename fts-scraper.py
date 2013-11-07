from bs4 import BeautifulSoup as Soup
from xml.dom.minidom import parse
import urllib2
import csv
import sys

xmlurl = 'http://fts.unocha.org/'

xmlpath = xmlurl + 'api/v1/Emergency/country/' + str('syria') + '.xml'

print('Fetching data from:')
print(xmlpath)

xml = urllib2.urlopen(xmlpath).read()

soup = Soup(xml)
id = 'id'

for id in soup.soup.emergency:
	print soup.find('id').string

#for funding in soup.find_all('funding'):
#	print soup.find('funding').string