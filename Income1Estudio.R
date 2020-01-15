datos<-read.csv("Income1.csv")
dim(datos)
datos<-datos[,-1]
head(datos)
plot(datos,ylab="Ingreso",xlab="Educacion",main="INGRESO VS EDUCACION",col="red")
datos.educacion=datos$Education
datos.ingreso=datos$Income
reglineal<-lm(datos.ingreso~datos.educacion)
abline(reglineal)
m<-reglineal$coefficients[2]
b<-reglineal$coefficients[1]
summary(reglineal)
predict(reglineal)

nuevos<-datos[1:2,c(1,2)]
nuevos[1,1]<-9
nuevos[2,1]<-8
