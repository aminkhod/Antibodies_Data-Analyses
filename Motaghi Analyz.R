#install.packages("readxl")
# if(!require("devtools")) {
#   install.packages("devtools")
#   library("devtools")
# }

# library("devtools")
# devtools::install_github("mdscheuerell/muti")
library("readxl")
# library(muti)

data <- read_excel("Integrated Data.xlsx")
# muti(data$`Stomach ache history`,data$IgM)
cor.test(data$`Stomach ache history`,data$IgM)
cor.test(data$`Stomach ache history`,data$IgA)
cor.test(data$`Stomach ache history`,data$IgG)
cor.test(data$FBS,data$IgM)
cor.test(data$FBS,data$IgA)
cor.test(data$FBS,data$IgG)
