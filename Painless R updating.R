# This suggestion was contained in the comments and is what I've been using recently. 
# First you install the new version, then run this in the old version:

#--run in the old version of R
setwd("C:/Users/Felipe/Desktop")
packages <- installed.packages()[,"Package"]
save(packages, file="Rpackages")

# Followed by this in the new version:

#--run in the new version
setwd("C:/Users/Felipe/Desktop")
load("Rpackages")
for (p in setdiff(packages, installed.packages()[,"Package"]))
install.packages(p)
