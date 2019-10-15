# install.packages("readxl")
if(!require("devtools")) {
  install.packages("devtools")
  library("devtools")
}

library("devtools")
devtools::install_github("mdscheuerell/muti")
#install.packages("readxl")
library(readxl)
library(muti)
# install.packages("caret")
# install.packages("klaR")
library(caret)
library(klaR)

data <- read_excel("Integrated Data.xlsx")
attach(data)
# muti(data$`Stomach ache history`,data$IgM)
cor.test(Stomach_ache_history,IgM)
cor.test(Stomach_ache_history,IgA)
cor.test(Stomach_ache_history,IgG)
cor.test(FBS,IgM)
cor.test(FBS,IgA)
cor.test(FBS,IgG)

# l =lm(Helicobacter~ Diabetes , data= data)
# summary(l)
# plot(Helicobacter~ Diabet)
# abline(lm)
# ?abline()

sum(Diabetes != Helicobacter)

sum(Gender != 1)

cor.test(Diabetes,IgM)
cor.test(Diabetes,IgA)
cor.test(Diabetes,IgG)



cor.test(Diabetes, Helicobacter)
cor.test(Diabetes, Gender)
cor.test(Diabetes, age)
cor.test(Diabetes, FBS)

cor.test(age, FBS)
cor.test(age, Helicobacter)
cor.test(age, Gender)

cor.test(Gender,Helicobacter)
cor.test(Gender,FBS)

cor.test(FBS,Helicobacter)

data <- read_excel("Diabetes patients.xlsx")
attach(data)
cor(data)
cor.test(data$`Hb A1C(Normalized)`,data$IgA)
cor.test(data$`Hb A1C(Normalized)`,data$IgG)
cor.test(data$`Hb A1C(Normalized)`,data$IgM)

