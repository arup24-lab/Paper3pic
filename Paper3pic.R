getwd()

getwd()

read.csv("File2_Pf_6_samples.txt", header = TRUE, sep = "\t", quote = "\"",
          dec = ",", fill = TRUE, comment.char = "")
df1<-read.csv("File2_Pf_6_samples.txt", header = TRUE, sep = "\t", quote = "\"",
              dec = ",", fill = TRUE, comment.char = "")
df2<-read.csv("File3_Pf_6_fws.txt", header = TRUE, sep = "\t", quote = "\"",
         dec = ",", fill = TRUE, comment.char = "")
head(df1)
head(df2)
df3merge <- merge(df1, df2, by ="Sample")
summary(df3merge)
unique(df3merge$QC.pass)
df3merge
filterdf3= subset(df3merge, select=c(Population,Fws))
#boxplot(Fws~Population, data = filterdf3)                
#class(df3merge$Fws)
#class(df3merge$Population)

df3merge$Fws<-as.numeric(df3merge$Fws)
boxplot(Fws~Population, data = df3merge)  
boxplot(Fws~Population, data = df3merge, outline=FALSE) 
boxplot(Fws~Population, data = df3merge, outline=FALSE, col = c("lightgreen", "red", "blue", "pink", "green", "yellow", "orange", "black"))
