a <- c(
    0.069561,
    4.545139,
    0.552098,
    -0.886509,
    3.032795,
    1.169333,
    -0.931019,
    1.167449,
    3.915041,
    1.544734,
    3.006294,
    0.471658,
    0.226231,
    2.330501,
    3.669682,
    1.689294,
    0.262492,
    4.014576,
    1.169399,
    5.210953,
    2.148061,
    2.016021,
    2.482155,
    3.149169,
    4.025686
)
b <- c(
    2.860878,
    -6.090278,
    1.895804,
    4.773018,
    -3.06559,
    0.661333,
    4.862039,
    0.665103,
    -4.830082,
    -0.089468,
    -3.012589,
    2.056684,
    2.547539,
    -1.661003,
    -4.339364,
    -0.378588,
    2.475016,
    -5.029152,
    0.661201,
    -7.421906,
    -1.296122,
    -1.032041,
    -1.96431,
    -3.298339,
    -5.051371
)

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

