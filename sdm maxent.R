# Eastern
library('sdm')
installAll()
east.th9 <- read.csv('D:/Project/th east 9.csv')

east.th9_occur <- data.frame(table(east.th9$lon))

species <- c()
for (i in 1:nrow(east.th9_occur)) {
  species <- c(species, rep(east.th9_occur$Freq[i], east.th9_occur$Freq[i]))
}
east.th9 <- cbind(east.th9, species)
east.th9$species[east.th9$species> 0] <- 1
east.th9

# converting data to spatial points dataframe for sdm
class(east.th9)
coordinates(east.th9) <- ~lon + lat
class(east.th9)
head(east.th9)

# Generate pseudo-absences and sdm data preparation
east.th9.sdm <- sdmData(species~., east.th9, predictors = preds_0.5)

east.th9.sdm# still presence-only, 104 records


# pseudo-absences
east9.preabs <- sdmData(species~., east.th9, predictors = preds_0.5, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

east9.preabs # presence-background 1104, 1000 + 104 (pseudo-absences + real presence), find out numbers required for maxent method

plot(east9.preabs)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


east9.hsm <- sdm(species~., east9.preabs, methods= 'maxent',
              replication=c('boot'), n=10) #find out numbers required for bootstrapping, set the number used for test 
east9.hsm
gui(east9.hsm)

east9.th <- predict(east9.hsm, preds_0.5)

plot(east9.th) # habitat suitability models based on maxent method

#Response curve
rcurve(east9.hsm)


east.avr <- calc(east9.th, mean)
plot(east.avr)
points(ea.data)


#========================================================================================================================

# western
library('sdm')
installAll()
west.th9 <- read.csv('D:/Project/th west 9.csv')

west.th9_occur <- data.frame(table(west.th9$lon))

species <- c()
for (i in 1:nrow(west.th9_occur)) {
  species <- c(species, rep(west.th9_occur$Freq[i], west.th9_occur$Freq[i]))
}
west.th9 <- cbind(west.th9, species)
west.th9$species[west.th9$species> 0] <- 1
west.th9

# converting data to spatial points dataframe for sdm
class(west.th9)
coordinates(west.th9) <- ~lon + lat
class(west.th9)
head(west.th9)

# Generate pseudo-absences and sdm data preparation
west.th9.sdm <- sdmData(species~., west.th9, predictors = preds_0.5)

west.th9.sdm# still presence-only, 58 records

# pseudo-absences
west9.preabs <- sdmData(species~., west.th9, predictors = preds_0.5, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

west9.preabs # presence-background 1058, 1000 + 58 (pseudo-absences + real presence)

plot(west9.preabs)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


west9.hsm <- sdm(species~., west9.preabs, methods= 'maxent',
                 replication=c('boot'), n=10)
west9.hsm
gui(west9.hsm)

west9.th <- predict(west9.hsm, preds_0.5)

plot(west9.th) # habitat suitability models based on maxent method

#Response curve
rcurve(west9.hsm)


west.avr <- calc(west9.th, mean)
plot(west.avr)
points(ea.data)

#========================================================================================================================

# Indonesia
library('sdm')
installAll()
th9 <- read.csv('D:/Project/true data/th.csv')

th9_occur <- data.frame(table(th9$lon))

species <- c()
for (i in 1:nrow(th9_occur)) {
  species <- c(species, rep(th9_occur$Freq[i], th9_occur$Freq[i]))
}
th9 <- cbind(th9, species)
th9$species[th9$species> 0] <- 1
th9

# converting data to spatial points dataframe for sdm
class(th9)
coordinates(th9) <- ~lon + lat
class(th9)
head(th9)

# Generate pseudo-absences and sdm data preparation
th9.sdm <- sdmData(species~., th9, predictors = preds_0.5)

th9.sdm# still presence-only, 162 records

# pseudo-absences
th9.preabs <- sdmData(species~., th9, predictors = preds_0.5, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

th9.preabs # presence-background 1162, 1000 + 162 (pseudo-absences + real presence)

plot(th9.preabs)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


th9.hsm <- sdm(species~., th9.preabs, methods= 'maxent',
                 replication=c('boot'), n=10)
th9.hsm
gui(th9.hsm)

th9 <- predict(th9.hsm, preds_0.5)

plot(th9) # habitat suitability models based on maxent method

#Response curve
rcurve(th9.hsm)

th.avr <- calc(th9, mean)
plot(th.avr)
points(ea.data)
