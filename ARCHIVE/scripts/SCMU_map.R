## SCMU SBI map 
## A. DuVall ajduvall@uw.edu
## Created 03/07/2021
## Updated 05/14/2021, 10/24/2021

## load libraries
library(here)
library(tidyverse)
library(ggplot2)
library(rgdal)
library(sf)
library(sp)
library(rgeos)
library(raster)
library(ggridges)
library(ggpubr)
library(cowplot)
library(wesanderson)
library(ggrepel)
library(ggsflabel)
library(viridis)
library(ggsn)
library(stringr)
library(ncdf4)
library(reshape2)
library(ggplot2)
library(mapdata)
library(maptools)
library(sp)

## load colors
pal <- wes_palette("Zissou1", 5, type = "discrete")

## load data
egg <- read_csv(here("ARCHIVE", "data", "SCMU_egg_data.csv"))
plots <- read_csv(here("ARCHIVE", "data", "plots.csv"))
plots_sf <- st_as_sf(plots, coords = 
                         c("Long", "Lat"), crs = "+proj=longlat +datum=WGS84")
## load CI shp
ci <- readOGR(here("ARCHIVE", "data", "CI", "ChannelIslands_poly.shp"))
ci_crs <- crs(ci) 
#plot(ci)

## convert to sf
cisf <- st_as_sf(ci)
# plot(ci)

#============= SBI Map
## get extent for SBI map area
x.min <- st_bbox(cisf)$xmin+130700
x.max <- st_bbox(cisf)$xmax-67000
y.min <- st_bbox(cisf)$ymin +72500
y.max <- st_bbox(cisf)$ymax-64800


## plot map
main <- ggplot() +
  geom_sf(data = cisf, fill = "burlywood3", size = 0.5, color = "grey34") +
  geom_sf(data = plots_sf, aes(geometry = geometry), 
          shape = 21, fill = "yellow", color = "black", size = 3) + 
  geom_sf_label_repel(data = plots_sf, 
                     aes(label = Plot_Name, geometry = geometry, fontface = "bold"), 
                     box.padding = 1) + 
  coord_sf() +
  xlim(x.min, x.max) +
  ylim(y.min, y.max) +
  xlab("Longitude") + ylab("Latitude") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90)) +
  scalebar(data = NULL, dist = 250, dist_unit = "m",
           transform = FALSE, st.size = 3, height = 0.2, st.dist = 0.2,
           x.min = 90000, x.max = 92000,
           y.min = -505600, y.max = -505200,
           anchor = c(x = 91000, y = -505400)) +
  north(data = NULL, scale = 1, symbol = 10, 
        x.min = 90000, x.max = 92000,
        y.min = -505600, y.max = -505200,
        anchor = c(x = 91800, y = -504900))
main

## output map
ggsave(filename = "results/map.png", plot = main)

#============= Map with bathymetry
library(marmap)

ci.bath <- getNOAA.bathy(lon1 = -122, lon2 = -116.8, lat1 = 30, lat2 = 35, 
                  resolution = 1)

## add coastline
if (!rgeosStatus()) gpclibPermit()

# path to the GSHHS maps on my computer
gshhs.f.b <- here("ARCHIVE", "data", "gshhg-bin-2.3.7", "gshhs_f.b")
shore <- getRgshhsMap(gshhs.f.b, xlim = c(-122, -116.8), ylim = c(30, 35))
shore <- fortify(shore)
head(shore)

## get extent for SBI map area
x.min <- st_bbox(shore)$xmin
x.max <- st_bbox(cisf)$xmax-67000
y.min <- st_bbox(cisf)$ymin +72500
y.max <- st_bbox(cisf)$ymax-64800

# plot it:
# ggplot(ci.bath,  aes(x=x, y=y)) +
#   coord_quickmap() +
#   geom_polygon(data = shore, aes(x=long, y = lat, group = group), color = "black", fill = "grey80") +
#   xlab("Longitude") + ylab("Latitude")

autoplot.bathy(ci.bath, geom=c("tile","contour")) +
  scale_fill_gradient2(low="dodgerblue4", mid="gainsboro", high="darkgreen") +
  geom_polygon(data = shore, aes(x= long, y = lat, group = group), color = "black", fill = "burlywood3") +
  xlab("Longitude") + ylab("Latitude") +
  theme(legend.position = "none") +
  scale_x_continuous(limits = c(-119.1, -119))+
  scale_y_continuous(limits = c(33.45, 33.52)) 
  geom_sf(data = plots_sf, aes(geometry = geometry), 
          shape = 21, fill = "yellow", color = "black", size = 3) + 
  geom_sf_label(data = plots_sf, aes(label = Plot_Name, geometry = geometry, fontface = "bold")) + 
  theme_minimal()

