## R script - data download and clean

####Libraries 
library(readr)
library(dplyr)
library(ggplot2)
library(rgdal)
library(tmap)
library(ggmap)
library(sp)


####Importing Data 

#Import Fire Data - Downloaded from NASA
fire_raw <- read.csv("fire_archive_M6_20907.csv")


#Import NSW LGA Map 
#Download File
download.file("https://data.gov.au/dataset/f6a00643-1842-48cd-9c2f-df23a3a1dc1e/resource/696e169d-5749-4a15-a0a9-79e637e7c391/download/nswlgapolygonshp.zip", destfile="NSWLGA.zip")
unzip("NSWLGA.zip")
#Read Shapefile
NSWLGA <- readOGR(dsn = "NSW_LGA_POLYGON_shp", layer = "NSW_LGA_POLYGON_shp")

#NSW Lanuse map
download.file("https://datasets.seed.nsw.gov.au/dataset/f77e43c8-eb46-4f5c-807f-2a6ef33a7306/resource/52fb8a3d-0dab-4335-aa92-de5bc5c432a1/download/landnswlanduse2013.zip", destfile="NSWLU.zip")
unzip("NSWLU.zip")
#Read Shapefile
NSWLGA <- readOGR(dsn = "NSW_LGA_POLYGON_shp", layer = "NSW_LGA_POLYGON_shp")
