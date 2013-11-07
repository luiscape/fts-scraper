FTS Scraper 
===========

This scraper is built to extract data from OCHA's Financial Tracking Service (http://fts.unocha.org) using its API (http://fts.unocha.org/api/Files/APIUserdocumentation.htm). 

The idea is to start extracting the data into CSVs using first the emergency as a criteria, then the other XMl tags. 

[This is an experiment.]


Python and its Dependencies
---------------------------

It is writen in `Python3` and uses the following packages: 
	
	-> `urlib2`
	-> `lxml`
	-> `BeautifulSoup4`
	-> `csv`

