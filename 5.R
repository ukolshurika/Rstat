my_table <- t(read.table(commandArgs()[2], header = FALSE, sep = ",", dec = "."))
a <- my_table[1:25]
b <- my_table[2:25]

sink(stderr())

t.test(a, b)
t.test(a, b, alternative="less",var.equal=T)
t.test(a, b, alternative="greater",var.equal=T)

write("H0: alpha > p-value; отвергаем гипотезу", stdout())
write("H1: alpha < p-value; принимаем гипотезу", stdout())
write("H2: alpha > p-value; отвергаем гипотезу", stdout())
