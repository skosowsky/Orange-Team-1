###Investigation of Customer who died Three Times####
obs.trans<-customer_transactions[which(customer_transactions$Cust_ID=="PSX000148081"),]
obs.med<-customer_medical[which(customer_medical$Cust_ID=="PSX000148081"),]
med.order<-obs.med[order(as.Date(obs.med$Date, format="%m/%d/%Y"),decreasing =F),]
trans.order<-obs.trans[order(as.Date(obs.trans$Date, format="%m/%d/%Y"),decreasing =F),]
multideath.info<-as.data.frame(cbind(trans.order,med.order[,-1]))
setwd("C:\\Users\\Sean\\Documents\\GitHub\\Orange-Team-1")
write.csv(multideath.info,file="multideathinfo.csv")