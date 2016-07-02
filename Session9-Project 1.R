getwd()
setwd("E:\\Acadgild\\Assignments\\Session 9 - Project1\\iris_dat\\iris")
#changed working directory

read.delim('001.dat',header = F, sep=",",dec = ".", comment.char = "@" )
#trying to load first file

dat_files<-dir("E:\\Acadgild\\Assignments\\Session 9 - Project1\\iris_dat\\iris")
class(dat_files)
typeof(dat_files)
dat_files<-as.vector(dat_files)
typeof(dat_files)
#imported all files ito 1 data frame


  read.delim(data_files,header = F,sep=",",dec = ".",comment.char = "@")


