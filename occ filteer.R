east <- read.csv('D:/Project/true data/seagrass east.csv')
west <- read.csv('D:/Project/true data/seagrass west.csv')

#Thalassia hemprichii
th.east <- dplyr::filter(east, species=='Thalassia hemprichii')
write.csv(th.east,"D:/Project/th east.csv", row.names = T)
th.west <- dplyr::filter(west, species=='Thalassia hemprichii')
write.csv(th.west,"D:/Project/th west.csv", row.names = T)
th.east.ex <- read.csv('D:/Project/true data/TH/filtered/TH east.csv')
th.west.ex <- read.csv('D:/Project/true data/TH/filtered/TH west.csv')

library('spThin')
th.thinned <- thin(th.east, lat.col = "lat", long.col = "lon", 
                   spec.col = "species", 
                   thin.par = 4, #4 km
                   reps = 25, 
                   locs.thinned.list.return = T,
                   write.files = F, 
                   write.log.file = F)
th.thinned 

th.thinned9 <- thin(th.east, lat.col = "lat", long.col = "lon", 
                   spec.col = "species", 
                   thin.par = 9, #4 km
                   reps = 25, 
                   locs.thinned.list.return = T,
                   write.files = F, 
                   write.log.file = F)
th.thinned9 


#Enhalus acoroides
ea.east <- dplyr::filter(east, species=='Enhalus acoroides')
write.csv(ea.east,"D:/Project/ea east.csv", row.names = T)
ea.west <- dplyr::filter(west, species=='Enhalus acoroides')
write.csv(ea.west,"D:/Project/ea west.csv", row.names = T)
ea.east.ex <- read.csv('D:/Project/true data/EA/filtered/EA east.csv')
ea.west.ex <- read.csv('D:/Project/true data/EA/filtered/EA west.csv')


#Cymodocea serrulata
cs.east <- dplyr::filter(east, species=='Oceana serrulata')
write.csv(cs.east,"D:/Project/cs east.csv", row.names = T)
cs.west <- dplyr::filter(west, species=='Oceana serrulata')
write.csv(cs.west,"D:/Project/cs west.csv", row.names = T)
cs.east.ex <- read.csv('D:/Project/true data/CS/filtered/CS east.csv')
cs.west.ex <- read.csv('D:/Project/true data/CS/filtered/cS west.csv')


#Cymodocea rotundata
cr.east <- dplyr::filter(east, species=='Cymodocea rotundata')
write.csv(cr.east,"D:/Project/cr east.csv", row.names = T)
cr.west <- dplyr::filter(west, species=='Cymodocea rotundata')
write.csv(cr.west,"D:/Project/cr west.csv", row.names = T)
cr.east.ex <- read.csv('D:/Project/true data/CR/filter/CR east.csv')
cr.west.ex <- read.csv('D:/Project/true data/CR/filter/CR west.csv')


#halophila ocalis
ho.east <- dplyr::filter(east, species=='Halophila ovalis')
write.csv(ho.east,"D:/Project/ho east.csv", row.names = T)
ho.west <- dplyr::filter(west, species=='Halophila ovalis')
write.csv(ho.west,"D:/Project/ho west.csv", row.names = T)
ho.east.ex <- read.csv('D:/Project/true data/HO/filter/HO east.csv')
ho.west.ex <- read.csv('D:/Project/true data/HO/filter/HO west.csv')


#halodule pinifolia
hp.east <- dplyr::filter(east, species=='Halodule pinifolia')
write.csv(hp.east,"D:/Project/hp east.csv", row.names = T)
hp.west <- dplyr::filter(west, species=='Halodule pinifolia')
write.csv(hp.west,"D:/Project/hp west.csv", row.names = T)
hp.east.ex <- read.csv('D:/Project/true data/HP/filter/HP east.csv')
hp.west.ex <- read.csv('D:/Project/true data/HP/filter/HP west.csv')



hu.east <- dplyr::filter(east, species=='Halodule uninervis')
write.csv(hu.east,"D:/Project/hu east.csv", row.names = T)
hu.west <- dplyr::filter(west, species=='Halodule uninervis')
write.csv(hu.west,"D:/Project/hu west.csv", row.names = T)
hu.east.ex <- read.csv('D:/Project/true data/HU/filter/HU east.csv')
hu.west.ex <- read.csv('D:/Project/true data/HU/filter/HU west.csv')



si.east <- dplyr::filter(east, species=='Syringodium isoetifolium')
write.csv(si.east,"D:/Project/si east.csv", row.names = T)
si.west <- dplyr::filter(west, species=='Syringodium isoetifolium')
write.csv(si.east,"D:/Project/si west.csv", row.names = T)
si.east.ex <- read.csv('D:/Project/true data/SI/filter/SI east.csv')
si.west.ex <- read.csv('D:/Project/true data/SI/filter/SI west.csv')



tc.east <- dplyr::filter(east, species=='Thalassodendron ciliatum')
write.csv(tc.east,"D:/Project/tc east.csv", row.names = T)
tc.west <- dplyr::filter(west, species=='Thalassodendron ciliatum')
write.csv(tc.west,"D:/Project/tc west.csv", row.names = T)
tc.east.ex <- read.csv('D:/Project/true data/TC/filter/TC east.csv')
tc.west.ex <- read.csv('D:/Project/true data/TC/filter/TC west.csv')

