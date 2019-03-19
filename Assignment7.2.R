#1. Write a program to create barplots for all the categorical columns in mtcars.
library(dplyr)
windows(width=100,height=50)
par(mfrow=c(2,3))
catoMtcars<-select(mtcars,cyl,carb,gear,am,vs)
for (i in 1:length(catoMtcars)){
  barplot(table(catoMtcars[,i]), xlab=colnames(mtcars)[i], 
    main =paste("Barplots for all the categorical column - mtcars$", colnames(catoMtcars)[i]))
}


#2. Create a scatterplot matrix by gear types in mtcars dataset.
mpg = mtcars$mpg      
gearTyp = mtcars$gear         
head(cbind(gearTyp,mpg))
plot( gearTyp,mpg,main="scatterplot matrix by gear types",
       xlab="Gear Type", ylab="Milage")   


#3. Write a program to create a plot density by class variable.
windows()
par(mfrow=c(3,4))
for (i in 1:length(mtcars)){
  d <- density(mtcars[,1])
  plot(d, xlab=colnames(mtcars)[i], main =paste("Density Of mtcars$",
              colnames(mtcars)[i]))
}
