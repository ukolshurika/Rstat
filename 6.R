my_table <- t(read.table(commandArgs()[2], header = FALSE, sep = ",", dec = "."))
a <- my_table[1:25]
b <- my_table[2:25]

sink(stderr())

var.test(a, b)
var.test(a, b, alternative="less")
var.test(a, b, alternative="greater")

write("a): alpha > p-value; отвергаем гипотезу", stdout())
write("б): alpha < p-value; принимаем гипотезу", stdout())
write("в): alpha > p-value; отвергаем гипотезу", stdout())
