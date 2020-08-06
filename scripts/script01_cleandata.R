#-------------------------------------------------------------------------------------#
# Project: switchfoRce
# Purpose: Combine data into general format for plotting
# Author: Artemio Sison III
# R Version: 4.0.1 "See Things Now"
#-------------------------------------------------------------------------------------#

#-------------------------------------------------------------------------------------#
# Load Dependencies
#-------------------------------------------------------------------------------------#
rm(list = ls())
library(dplyr)
library(ggplot2)
library(stringr)
library(tidyr)

#-------------------------------------------------------------------------------------#
# Read data
#-------------------------------------------------------------------------------------#
red_raw <- read.csv("../data/cherry_red.csv")
blue_raw <- read.csv("../data/cherry_blue.csv")
brown_raw <- read.csv("../data/cherry_brown.csv")

#-------------------------------------------------------------------------------------#
# Calculate mean force for Push/Release
#-------------------------------------------------------------------------------------#

# create column for time? X = distance traveled in mm
# red_raw %>% mutate(time = 1:nrow(red_raw)) -> redclean


redclean %>% 
  mutate(ave_press_force = mean(c(press1.x, press2.x, press3.x, press4.x)),
         average_release_force = mean(c(release1.x, release2.x, release3.x, release4.x))) -> redtest
  


red_raw %>% 
  gather(press, distance, starts_with("press"), na.rm = TRUE) %>% 
  select(press, distance) %>%
  separate(press, c("press", "x"), ".")-> redtest


#-------------------------------------------------------------------------------------#
# Transform raw data
#-------------------------------------------------------------------------------------#


#-------------------------------------------------------------------------------------#
# Coerce into general data format
#-------------------------------------------------------------------------------------#



#-------------------------------------------------------------------------------------#
# 
#-------------------------------------------------------------------------------------#
