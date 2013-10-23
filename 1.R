my_table <- t(read.table(commandArgs()[2], header = FALSE, sep = ",", dec = "."))
a <- my_table[1:25]
b <- my_table[2:25]

n1 = length(a)
plot(sort(a), (1:n1)/n1, type="S", col="seagreen", main="F", xlab="S1", ylab="")

n2 = length(b)
plot(sort(b), (1:n2)/n2, type="S", col="blue", main="F", xlab="S2", ylab="")

hist(a, probability = TRUE, freq=FALSE, right=F, main="Histogramm Sample 1", col='seagreen', xlab="S1", ylab="")
hist(b, probability = TRUE, freq=FALSE, right=F, main="Histogramm Sample 2", col='blue', xlab="S2", ylab="")

qqnorm(a, col='seagreen', xlab="S1", ylab="")
qqline(a)
qqnorm(b, col='blue', xlab="S2", ylab="")
qqline(b)
