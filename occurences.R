getwd()
setwd('D:/Project')
data <- read.csv('data-occurence-00.csv')

TH <- dplyr::filter(data, species=='Thalassia hemprichii')
View(TH)

#divided into 4 clusters
Th1 <-dplyr::filter(TH, cluster=='Th1')
Th2 <-dplyr::filter(TH, cluster=='Th2')
Th3 <-dplyr::filter(TH, cluster=='Th3')
Th4 <-dplyr::filter(TH, cluster=='Th4')

# Thalassia hemprichii
# loading occurence dataset from obis
library('robis')
library('rgbif')
library('leaflet')
th.obis <- occurrence("Thalassia hemprichii", 
                      geometry = "POLYGON ((93 -15, 150 -15, 150 10, 93 10, 93 -15))",
                      startdate = "2010-01-01") #1470 records
str(th.obis)
head(th.obis)
tail(th.obis)
map_leaflet(th.obis) #1470

# loading occurence dataset from gbif
th.gbif <- occ_search(scientificName = "Thalassia hemprichii", 
                      geometry ="POLYGON ((93 -15, 150 -15, 150 10, 93 10, 93 -15))",
                      basisOfRecord = "HUMAN_OBSERVATION",
                      limit = 1000,) # data started from 2014, limited the data to 1000
View(th.gbif$data)
th.gbif.data <- th.gbif$data #1000
map_leaflet(th.gbif.data)

# import data from JaLTER
th.jalter <- read.csv('D:/Kuliah/Thesis/datasets/LIPI/JaLTER occ TH.csv')

#write to csv
data_th_obis <- th.obis[, c('scientificName', 'decimalLongitude', 'decimalLatitude')]
data_th_gbif <- th.gbif.data[, c('species', 'decimalLongitude', 'decimalLatitude')]
data_th_jalter <- th.jalter[, c('TH', 'Long', 'Lat')]

write.csv(data_th_obis,"D:/Project/occ th obis.csv", row.names = T)
write.csv(data_th_gbif,"D:/Project/occ th gbif.csv", row.names = T)
write.csv(data_th_jalter,"D:/Project/occ th jalter.csv", row.names = T)


# OBIS
ea.obis <- occurrence("Enhalus acoroides", 
                      geometry = "POLYGON ((93 -15, 150 -15, 150 10, 93 10, 93 -15))",
                      startdate = "2010-01-01") #597 records
str(th.obis)
head(th.obis)
tail(th.obis)
map_leaflet(th.obis) #1470

# loading occurence dataset from gbif
ea.gbif <- occ_search(scientificName = "Enhalus acoroides", 
                      geometry ="POLYGON ((93 -15, 150 -15, 150 10, 93 10, 93 -15))",
                      basisOfRecord = "HUMAN_OBSERVATION",
                      limit = 1000,) # data started from 2014, limited the data to 1000
View(ea.gbif$data)
ea.gbif.data <- ea.gbif$data #1000
map_leaflet(ea.gbif.data)

# import data from JaLTER
ea.jalter <- read.csv('D:/Kuliah/Thesis/datasets/LIPI/JaLTER occ EA.csv')

#write to csv
data_ea_obis <- ea.obis[, c('scientificName', 'decimalLongitude', 'decimalLatitude')]
data_ea_gbif <- ea.gbif.data[, c('species', 'decimalLongitude', 'decimalLatitude')]
data_ea_jalter <- ea.jalter[, c('EA', 'Long', 'Lat')]

write.csv(data_ea_obis,"D:/Project/occ ea obis.csv", row.names = T)
write.csv(data_ea_gbif,"D:/Project/occ ea gbif.csv", row.names = T)
write.csv(data_ea_jalter,"D:/Project/occ ea jalter.csv", row.names = T)

# OBIS
cr.obis <- occurrence("Cymodocea rotundata", 
                      geometry = "POLYGON ((93 -15, 150 -15, 150 10, 93 10, 93 -15))",
                      startdate = "2010-01-01") #817 records

# loading occurence dataset from gbif
cr.gbif <- occ_search(scientificName = "Cymodocea rotundata", 
                      geometry ="POLYGON ((93 -15, 150 -15, 150 10, 93 10, 93 -15))",
                      basisOfRecord = "HUMAN_OBSERVATION",
                      limit = 1000,) # data started from 2014, limited the data to 1000
View(cr.gbif$data)
cr.gbif.data <- cr.gbif$data #1000
map_leaflet(cr.gbif.data)

# import data from JaLTER
cr.jalter <- read.csv('D:/Kuliah/Thesis/datasets/LIPI/JaLTER occ CR.csv')

#write to csv
data_cr_obis <- cr.obis[, c('scientificName', 'decimalLongitude', 'decimalLatitude')]
data_cr_gbif <- cr.gbif.data[, c('species', 'decimalLongitude', 'decimalLatitude')]
data_cr_jalter <- cr.jalter[, c('CR', 'Long', 'Lat')]

write.csv(data_cr_obis,"D:/Project/occ cr obis.csv", row.names = T)
write.csv(data_cr_gbif,"D:/Project/occ cr gbif.csv", row.names = T)
write.csv(data_cr_jalter,"D:/Project/occ cr jalter.csv", row.names = T)


# OBIS
hp.obis <- occurrence("Halodule pinifolia", 
                      geometry = "POLYGON ((93 -15, 150 -15, 150 10, 93 10, 93 -15))",
                      startdate = "2010-01-01") #49 records

# loading occurence dataset from gbif
hp.gbif <- occ_search(scientificName = "Halodule pinifolia", 
                      geometry ="POLYGON ((93 -15, 150 -15, 150 10, 93 10, 93 -15))",
                      basisOfRecord = "HUMAN_OBSERVATION",
                      limit = 1000,) # data started from 2014, limited the data to 1000
View(cr.gbif$data)
hp.gbif.data <- hp.gbif$data #39
map_leaflet(cr.gbif.data)

# import data from JaLTER
hp.jalter <- read.csv('D:/Kuliah/Thesis/datasets/LIPI/JaLTER occ HP.csv')

#write to csv
data_hp_obis <- hp.obis[, c('scientificName', 'decimalLongitude', 'decimalLatitude')]
data_hp_gbif <- hp.gbif.data[, c('species', 'decimalLongitude', 'decimalLatitude')]
data_hp_jalter <- hp.jalter[, c('HP', 'Long', 'Lat')]

write.csv(data_hp_obis,"D:/Project/occ hp obis.csv", row.names = T)
write.csv(data_hp_gbif,"D:/Project/occ hp gbif.csv", row.names = T)
write.csv(data_hp_jalter,"D:/Project/occ hp jalter.csv", row.names = T)


# OBIS
hu.obis <- occurrence("Halodule uninervis", 
                      geometry = "POLYGON ((93 -15, 150 -15, 150 10, 93 10, 93 -15))",
                      startdate = "2010-01-01") #810 records

# loading occurence dataset from gbif
hu.gbif <- occ_search(scientificName = "Halodule uninervis", 
                      geometry ="POLYGON ((93 -15, 150 -15, 150 10, 93 10, 93 -15))",
                      basisOfRecord = "HUMAN_OBSERVATION",
                      limit = 1000,) # data started from 2014, limited the data to 1000
View(hu.gbif$data)
hu.gbif.data <- hu.gbif$data #1000
map_leaflet(cr.gbif.data)

# import data from JaLTER
hu.jalter <- read.csv('D:/Kuliah/Thesis/datasets/LIPI/JaLTER occ HU.csv')

#write to csv
data_hu_obis <- hu.obis[, c('scientificName', 'decimalLongitude', 'decimalLatitude')]
data_hu_gbif <- hu.gbif.data[, c('species', 'decimalLongitude', 'decimalLatitude')]
data_hu_jalter <- hu.jalter[, c('HU', 'Long', 'Lat')]

write.csv(data_hu_obis,"D:/Project/occ hu obis.csv", row.names = T)
write.csv(data_hu_gbif,"D:/Project/occ hu gbif.csv", row.names = T)
write.csv(data_hu_jalter,"D:/Project/occ hu jalter.csv", row.names = T)


# OBIS
ho.obis <- occurrence("Halophila ovalis", 
                      geometry = "POLYGON ((93 -15, 150 -15, 150 10, 93 10, 93 -15))",
                      startdate = "2010-01-01") #978 records

# loading occurence dataset from gbif
ho.gbif <- occ_search(scientificName = "Halophila ovalis", 
                      geometry ="POLYGON ((93 -15, 150 -15, 150 10, 93 10, 93 -15))",
                      basisOfRecord = "HUMAN_OBSERVATION",
                      limit = 1000,) # data started from 2014, limited the data to 1000
ho.gbif.data <- ho.gbif$data #1000

# import data from JaLTER
ho.jalter <- read.csv('D:/Kuliah/Thesis/datasets/LIPI/JaLTER occ HO.csv')

#write to csv
data_ho_obis <- ho.obis[, c('scientificName', 'decimalLongitude', 'decimalLatitude')]
data_ho_gbif <- ho.gbif.data[, c('species', 'decimalLongitude', 'decimalLatitude')]
data_ho_jalter <- ho.jalter[, c('HO', 'Long', 'Lat')]

write.csv(data_ho_obis,"D:/Project/occ ho obis.csv", row.names = T)
write.csv(data_ho_gbif,"D:/Project/occ ho gbif.csv", row.names = T)
write.csv(data_ho_jalter,"D:/Project/occ ho jalter.csv", row.names = T)

# OBIS
cs.obis <- occurrence("Cymodocea serrulata", 
                      geometry = "POLYGON ((93 -15, 150 -15, 150 10, 93 10, 93 -15))",
                      startdate = "2010-01-01") #418 records

# loading occurence dataset from gbif
cs.gbif <- occ_search(scientificName = "Cymodocea serrulata", 
                      geometry ="POLYGON ((93 -15, 150 -15, 150 10, 93 10, 93 -15))",
                      basisOfRecord = "HUMAN_OBSERVATION",
                      limit = 1000,) # data started from 2014, limited the data to 1000
cs.gbif.data <- cs.gbif$data #1000

# import data from JaLTER
cs.jalter <- read.csv('D:/Kuliah/Thesis/datasets/LIPI/JaLTER occ CS.csv')

#write to csv
data_cs_obis <- cs.obis[, c('scientificName', 'decimalLongitude', 'decimalLatitude')]
data_cs_gbif <- cs.gbif.data[, c('species', 'decimalLongitude', 'decimalLatitude')]
data_cs_jalter <- cs.jalter[, c('CS', 'Long', 'Lat')]

write.csv(data_cs_obis,"D:/Project/occ cs obis.csv", row.names = T)
write.csv(data_cs_gbif,"D:/Project/occ cs gbif.csv", row.names = T)
write.csv(data_cs_jalter,"D:/Project/occ cs jalter.csv", row.names = T)

# OBIS
si.obis <- occurrence("Syringodium isoetifolium", 
                      geometry = "POLYGON ((93 -15, 150 -15, 150 10, 93 10, 93 -15))",
                      startdate = "2010-01-01") #392 records

# loading occurence dataset from gbif
si.gbif <- occ_search(scientificName = "Syringodium isoetifolium", 
                      geometry ="POLYGON ((93 -15, 150 -15, 150 10, 93 10, 93 -15))",
                      basisOfRecord = "HUMAN_OBSERVATION",
                      limit = 1000,) # data started from 2014, limited the data to 1000
si.gbif.data <- si.gbif$data #1000

# import data from JaLTER
si.jalter <- read.csv('D:/Kuliah/Thesis/datasets/LIPI/JaLTER occ SI.csv')

#write to csv
data_si_obis <- si.obis[, c('scientificName', 'decimalLongitude', 'decimalLatitude')]
data_si_gbif <- si.gbif.data[, c('species', 'decimalLongitude', 'decimalLatitude')]
data_si_jalter <- si.jalter[, c('SI', 'Long', 'Lat')]

write.csv(data_si_obis,"D:/Project/occ si obis.csv", row.names = T)
write.csv(data_si_gbif,"D:/Project/occ si gbif.csv", row.names = T)
write.csv(data_si_jalter,"D:/Project/occ si jalter.csv", row.names = T)

# OBIS
tc.obis <- occurrence("Thalassodendron ciliatum", 
                      geometry = "POLYGON ((93 -15, 150 -15, 150 10, 93 10, 93 -15))",
                      startdate = "2010-01-01") #266 records

# loading occurence dataset from gbif
tc.gbif <- occ_search(scientificName = "Thalassodendron ciliatum", 
                      geometry ="POLYGON ((93 -15, 150 -15, 150 10, 93 10, 93 -15))",
                      basisOfRecord = "HUMAN_OBSERVATION",
                      limit = 1000,) # data started from 2014, limited the data to 1000
tc.gbif.data <- tc.gbif$data #1000

# import data from JaLTER
tc.jalter <- read.csv('D:/Kuliah/Thesis/datasets/LIPI/JaLTER occ TC.csv')

#write to csv
data_tc_obis <- tc.obis[, c('scientificName', 'decimalLongitude', 'decimalLatitude')]
data_tc_gbif <- tc.gbif.data[, c('species', 'decimalLongitude', 'decimalLatitude')]
data_tc_jalter <- tc.jalter[, c('TC', 'Long', 'Lat')]

write.csv(data_tc_obis,"D:/Project/occ tc obis.csv", row.names = T)
write.csv(data_tc_gbif,"D:/Project/occ tc gbif.csv", row.names = T)
write.csv(data_tc_jalter,"D:/Project/occ tc jalter.csv", row.names = T)


