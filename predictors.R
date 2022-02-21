library('raster')
setwd('D:/Project/env predictors/correlated')
e <- extent(93, 150, -15, 10) # bounding box

# cropping
# temperature
#surface
temp.sur.mean <- raster('D:/Project/env predictors/temperature/surface/Present.Surface.Temperature.Mean.asc')
temp.sur.mean <- crop(temp.sur.mean, e)
plot(temp.sur.mean)
writeRaster(temp.sur.mean,'sstmean', format = 'GTiff')

temp.sur.max <- raster('D:/Project/env predictors/temperature/surface/Present.Surface.Temperature.Max.asc')
temp.sur.max <- crop(temp.sur.max, e)
plot(temp.sur.max)
writeRaster(temp.sur.max,'sstmax', format = 'GTiff')

temp.sur.min <- raster('D:/Project/env predictors/temperature/surface/Present.Surface.Temperature.Min.asc')
temp.sur.min <- crop(temp.sur.min, e)
plot(temp.sur.min)

temp.sur.range <- raster('D:/Project/env predictors/temperature/surface/Present.Surface.Temperature.Range.asc')
temp.sur.range <- crop(temp.sur.range, e)
plot(temp.sur.range)

#benthic
temp.ben.mean <- raster('D:/Project/env predictors/temperature/benthic/Present.Benthic.Mean.Depth.Temperature.Mean.asc')
temp.ben.mean <- crop(temp.ben.mean, e)
plot(temp.ben.mean)

temp.ben.max <- raster('D:/Project/env predictors/temperature/benthic/Present.Benthic.Mean.Depth.Temperature.Max.asc')
temp.ben.max <- crop(temp.ben.max, e)
plot(temp.ben.max)

temp.ben.min <- raster('D:/Project/env predictors/temperature/benthic/Present.Benthic.Mean.Depth.Temperature.Min.asc')
temp.ben.min <- crop(temp.ben.min, e)
plot(temp.ben.min)

temp.ben.range <- raster('D:/Project/env predictors/temperature/benthic/Present.Benthic.Mean.Depth.Temperature.Range.asc')
temp.ben.range <- crop(temp.ben.range, e)
plot(temp.ben.range)

#=============================================================================================================================

# salinity
#surface
sal.sur.mean <- raster('D:/Project/env predictors/salinity/surface/Present.Surface.Salinity.Mean.asc')
sal.sur.mean <- crop(sal.sur.mean, e)
plot(sal.sur.mean)
writeRaster(sal.sur.mean,'s sal mean', format = 'GTiff')

sal.sur.max <- raster('D:/Project/env predictors/salinity/surface/Present.Surface.Salinity.Max.asc')
sal.sur.max <- crop(sal.sur.max, e)
plot(sal.sur.max)

sal.sur.min <- raster('D:/Project/env predictors/salinity/surface/Present.Surface.Salinity.Min.asc')
sal.sur.min <- crop(sal.sur.min, e)
plot(sal.sur.min)

sal.sur.range <- raster('D:/Project/env predictors/salinity/surface/Present.Surface.Salinity.Range.asc')
sal.sur.range <- crop(sal.sur.range, e)
plot(sal.sur.range)

#benthic
sal.ben.mean <- raster('D:/Project/env predictors/salinity/benthic/Present.Benthic.Mean.Depth.Salinity.Mean.asc')
sal.ben.mean <- crop(sal.ben.mean, e)
plot(sal.ben.mean)

sal.ben.max <- raster('D:/Project/env predictors/salinity/benthic/Present.Benthic.Mean.Depth.Salinity.Max.asc')
sal.ben.max <- crop(sal.ben.max, e)
plot(sal.ben.max)

sal.ben.min <- raster('D:/Project/env predictors/salinity/benthic/Present.Benthic.Mean.Depth.Salinity.Min.asc')
sal.ben.min <- crop(sal.ben.min, e)
plot(sal.ben.min)

sal.ben.range <- raster('D:/Project/env predictors/salinity/benthic/Present.Benthic.Mean.Depth.Salinity.Range.asc')
sal.ben.range <- crop(sal.ben.range, e)
plot(sal.ben.range)

#=============================================================================================================================

#Nitrate
#surface
nit.sur.mean <- raster('D:/Project/env predictors/nitrate/surface/Present.Surface.Nitrate.Mean.asc')
nit.sur.mean <- crop(nit.sur.mean, e)
plot(nit.sur.mean)
writeRaster(nit.sur.mean,'s nit mean', format = 'GTiff')

nit.sur.max <- raster('D:/Project/env predictors/nitrate/surface/Present.Surface.Nitrate.Max.asc')
nit.sur.max <- crop(nit.sur.max, e)
plot(nit.sur.max)

nit.sur.min <- raster('D:/Project/env predictors/nitrate/surface/Present.Surface.Nitrate.Min.asc')
nit.sur.min <- crop(nit.sur.min, e)
plot(nit.sur.min)

nit.sur.range <- raster('D:/Project/env predictors/nitrate/surface/Present.Surface.Nitrate.Range.asc')
nit.sur.range <- crop(nit.sur.range, e)
plot(nit.sur.range)

#benthic
nit.ben.mean <- raster('D:/Project/env predictors/nitrate/benthic/Present.Benthic.Mean.Depth.Nitrate.Mean.asc')
nit.ben.mean <- crop(nit.ben.mean, e)
plot(nit.ben.mean)

nit.ben.max <- raster('D:/Project/env predictors/nitrate/benthic/Present.Benthic.Mean.Depth.Nitrate.Max.asc')
nit.ben.max <- crop(nit.ben.max, e)
plot(nit.ben.max)

nit.ben.min <- raster('D:/Project/env predictors/nitrate/benthic/Present.Benthic.Mean.Depth.Nitrate.Min.asc')
nit.ben.min <- crop(nit.ben.min, e)
plot(nit.ben.min)

nit.ben.range <- raster('D:/Project/env predictors/nitrate/benthic/Present.Benthic.Mean.Depth.Nitrate.Range.asc')
nit.ben.range <- crop(nit.ben.range, e)
plot(nit.ben.range)
writeRaster(nit.ben.range,'b nit range', format = 'GTiff')

#=============================================================================================================================

#Phosphate
#surface
pho.sur.mean <- raster('D:/Project/env predictors/phosphate/surface/Present.Surface.Phosphate.Mean.asc')
pho.sur.mean <- crop(pho.sur.mean, e)
plot(pho.sur.mean)

pho.sur.max <- raster('D:/Project/env predictors/phosphate/surface/Present.Surface.Phosphate.Max.asc')
pho.sur.max <- crop(pho.sur.max, e)
plot(pho.sur.max)

pho.sur.min <- raster('D:/Project/env predictors/phosphate/surface/Present.Surface.Phosphate.Min.asc')
pho.sur.min <- crop(pho.sur.min, e)
plot(pho.sur.min)

pho.sur.range <- raster('D:/Project/env predictors/phosphate/surface/Present.Surface.Phosphate.Range.asc')
pho.sur.range <- crop(pho.sur.range, e)
plot(pho.sur.range)
writeRaster(pho.sur.mean,'s pho range', format = 'GTiff')

#benthic
pho.ben.mean <- raster('D:/Project/env predictors/phosphate/benthic/Present.Benthic.Mean.Depth.Phosphate.Mean.asc')
pho.ben.mean <- crop(pho.ben.mean, e)
plot(pho.ben.mean)

pho.ben.max <- raster('D:/Project/env predictors/phosphate/benthic/Present.Benthic.Mean.Depth.Phosphate.Max.asc')
pho.ben.max <- crop(pho.ben.max, e)
plot(pho.ben.max)

pho.ben.min <- raster('D:/Project/env predictors/phosphate/benthic/Present.Benthic.Mean.Depth.Phosphate.Min.asc')
pho.ben.min <- crop(pho.ben.min, e)
plot(pho.ben.min)

pho.ben.range <- raster('D:/Project/env predictors/phosphate/benthic/Present.Benthic.Mean.Depth.Phosphate.Range.asc')
pho.ben.range <- crop(pho.ben.range, e)
plot(pho.ben.range)

#=============================================================================================================================

#current velocity
#surface

cv.sur.mean <- raster('D:/Project/env predictors/current velocity/surface/Present.Surface.Current.Velocity.Mean.asc.BOv2_1.asc')
cv.sur.mean <- crop(cv.sur.mean, e)
plot(cv.sur.mean)
writeRaster(cv.sur.mean,'s cuve mean', format = 'GTiff')

cv.sur.max <- raster('D:/Project/env predictors/current velocity/surface/Present.Surface.Current.Velocity.Max.asc')
cv.sur.max <- crop(cv.sur.max, e)
plot(cv.sur.max)

cv.sur.min <- raster('D:/Project/env predictors/current velocity/surface/Present.Surface.Current.Velocity.Min.asc.BOv2_1.asc')
cv.sur.min <- crop(cv.sur.min, e)
plot(cv.sur.min)

cv.sur.range <- raster('D:/Project/env predictors/current velocity/surface/Present.Surface.Current.Velocity.Range.asc.BOv2_1.asc')
cv.sur.range <- crop(cv.sur.range, e)
plot(cv.sur.range)

#benthic

cv.ben.mean <- raster('D:/Project/env predictors/current velocity/benthic/Present.Benthic.Mean.Depth.Current.Velocity.Mean.asc.BOv2_1.asc')
cv.ben.mean <- crop(cv.ben.mean, e)
plot(cv.ben.mean)
writeRaster(cv.ben.mean,'b cuve mean', format = 'GTiff')

cv.ben.max <- raster('D:/Project/env predictors/current velocity/benthic/Present.Benthic.Mean.Depth.Current.Velocity.Max.asc.BOv2_1.asc')
cv.ben.max <- crop(cv.ben.max, e)
plot(cv.ben.max)

cv.ben.min <- raster('D:/Project/env predictors/current velocity/benthic/Present.Benthic.Mean.Depth.Current.Velocity.Min.asc.BOv2_1.asc')
cv.ben.min <- crop(cv.ben.min, e)
plot(cv.ben.min)

cv.ben.range <- raster('D:/Project/env predictors/current velocity/benthic/Present.Benthic.Mean.Depth.Current.Velocity.Range.asc.BOv2_1.asc')
cv.ben.range <- crop(cv.ben.range, e)
plot(cv.ben.range)

#=============================================================================================================================

#diffuse attenuation
#surface
da.sur.mean <- raster('D:/Project/env predictors/DA/Present.Surface.Diffuse.attenuation.Mean.asc')
da.sur.mean <- crop(da.sur.mean, e)
plot(da.sur.mean)
writeRaster(da.sur.mean,'s da mean', format = 'GTiff')

da.sur.min <- raster('D:/Project/env predictors/DA/Present.Surface.Diffuse.attenuation.Min.asc')
da.sur.min <- crop(da.sur.min, e)
plot(da.sur.min)

da.sur.max <- raster('D:/Project/env predictors/DA/Present.Surface.Diffuse.attenuation.Max.asc')
da.sur.max <- crop(da.sur.max, e)
plot(da.sur.max)

#=============================================================================================================================

#photosynthetically active radiation (PAR)
#surface

par.sur.mean <- raster('D:/Project/env predictors/PAR/Present.Surface.Par.Mean.asc.asc')
par.sur.mean <- crop(par.sur.mean, e)
plot(par.sur.mean)
writeRaster(par.sur.mean,'s par mean', format = 'GTiff')

par.sur.max <- raster('D:/Project/env predictors/PAR/Present.Surface.Par.Max.asc.asc')
par.sur.max <- crop(par.sur.max, e)
plot(par.sur.max)

#=============================================================================================================================

#depth
dep <- raster('D:/Project/env predictors/depth/gb_depth.asc')
dep <- crop(dep, e)
plot(dep)

#=============================================================================================================================

#slope
slo <- raster('D:/Project/env predictors/slope/gb_slope.asc')
slo <- crop(slo, e)
plot(slo)

#=============================================================================================================================

# coerce to a SpatialPolygons object
p <- as(e, 'SpatialPolygons') 

#assign crs
projection(p) <- crs(preds)

#function to mask the raster
mask_raster <- function(raster, shape){
  outr <- crop(raster, extent(shape))
  outr <- mask(outr, p)
  return(outr)
}

#apply function
slo <- mask_raster(raster= slo, shape = p)

dep <- mask_raster(raster= dep, shape = p)

#Stacking
preds <- stack(temp.sur.mean,
               temp.sur.max,
               temp.sur.min,
               temp.sur.range,
               temp.ben.mean,
               temp.ben.max,
               temp.ben.min,
               temp.ben.range,
               sal.sur.mean,
               sal.sur.max,
               sal.sur.min,
               sal.sur.range,
               sal.ben.mean,
               sal.ben.max,
               sal.ben.min,
               sal.ben.range,
               nit.sur.mean,
               nit.sur.max,
               nit.sur.min,
               nit.sur.range,
               nit.ben.mean,
               nit.ben.max,
               nit.ben.min,
               nit.ben.range,
               pho.sur.mean,
               pho.sur.max,
               pho.sur.min,
               pho.sur.range,
               pho.ben.mean,
               pho.ben.max,
               pho.ben.min,
               pho.ben.range,
               cv.sur.mean,
               cv.sur.max,
               cv.sur.min,
               cv.sur.range,
               cv.ben.mean,
               cv.ben.max,
               cv.ben.min,
               cv.ben.range,
               da.sur.mean,
               da.sur.max,
               da.sur.min,
               par.sur.mean,
               par.sur.max)

preds_0.5 <- stack(temp.sur.mean,
                   temp.sur.max,
                   sal.sur.mean,
                   nit.sur.mean,
                   nit.ben.range,
                   pho.sur.range,
                   cv.sur.mean,
                   cv.ben.mean,
                   da.sur.mean,
                   par.sur.mean)

#Correlation between layers
cor <- layerStats(preds, 'pearson', na.rm = T)
corr_matrix <- cor$'pearson correlation coefficient'


library('Hmisc')
res <- rcorr(as.matrix(preds))
resp <- round(res$P, 3)
resr <- round(res$r, 3)
var.cor <- as.data.frame(resr)
write_xlsx(var.cor, 'D:/Project/env predictors.correlation.xlsx')
var.p <- as.data.frame(resp)
write_xlsx(var.p, 'D:/Project/pval.correlation.xlsx')


library('writexl')
var.cor <- as.data.frame(corr_matrix)


pval.cor <- as.data.frame(pval_matrix)

















