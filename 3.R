my_table <- t(read.table(commandArgs()[2], header = FALSE, sep = ",", dec = "."))
a <- my_table[1:25]
b <- my_table[26:50]

sink(stderr())

# some test and out here
