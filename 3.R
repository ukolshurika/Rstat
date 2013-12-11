my_table <- t(read.table(commandArgs()[2], header = FALSE, sep = ",", dec = "."))
a <- my_table[1:25]
b <- my_table[26:50]

sink(stderr())

# some test and out here

write("выборка a : ", stdout())
a
write("выборка b : ", stdout())
b

write(paste("выборочное среднее a =",sm_a <- mean(a)), stdout())
write(paste("выборочное среднее b =",sm_b <- mean(b)), stdout())

write(paste("выборочная дисперсия a =",sv_a <- var(a)), stdout())
write(paste("выборочная дисперсия b =",sv_b <- var(b)), stdout())

write(paste("среднее квадратичное отклонение a =",sd_a <- sd(a)), stdout())
write(paste("среднее квадратичное отклонение b =",sd_b <- sd(b)), stdout())

write(paste("выборочный коэффициент корреляции", cor(a,NULL)), stdout())

