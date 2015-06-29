setwd("C://Users//Sean//Documents//R//Data//OT1//Original Data//CSV")
filelist<-as.list(list.files("C:\\Users\\Sean\\Documents\\R\\Data\\OT1\\Original Data\\CSV",pattern=".csv"))
filenames<-list.files("C:\\Users\\Sean\\Documents\\R\\Data\\OT1\\Original Data\\CSV",pattern=".csv")
for (i in 1:length(filenames)) assign(substr(filenames,1,nchar(filenames)-4)[i], read.csv(filenames[[i]]))
for (i in 1:length(filelist)){ filelist[[i]]<-as.data.frame(substr(filenames,1,nchar(filenames)-4)[i])}
filenames<-substr(filenames,1,nchar(filenames)-4)


