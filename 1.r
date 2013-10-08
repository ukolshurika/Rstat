a <- c(4.038936, -0.845193, -0.374326,  2.88263, 2.728097, -0.532304, -0.954105, -0.954693, 2.470045, 1.051909, -0.636919, 2.384277, -0.918446, 4.832128, 2.678184, 3.971682, 3.221193, 3.207647, 0.668328, 2.151152, 3.733077, 0.021115, 4.68056, 2.256548, 4.49062)
b <- c(13.19468, -11.22596, -8.871629, 7.413148, 6.640484, -9.66152, -11.77052, -11.77347, 5.350227, -1.740456, -10.1846, 4.921383, -11.59223, 17.16064, 6.39092, 12.85841, 9.105963, 9.038234, -3.658359, 3.755759, 11.66538, -6.894424, 16.4028, 4.282738, 15.4531)

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
