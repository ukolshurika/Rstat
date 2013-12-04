my_table <- t(read.table(commandArgs()[2], header = FALSE, sep = ",", dec = "."))
a <- my_table[1:25]
b <- my_table[2:25]

sink(stderr())

alpha = 0.1

res = t.test(a, b)
res
p1 = res[["p.value"]]

res = t.test(a, b, alternative = "less", var.equal = T)
res
p2 = res[["p.value"]]

res = t.test(a, b, alternative = "greater", var.equal = T)
res
p3 = res[["p.value"]]

pretty_write = function(n, chr, a, p, expr){
    write(paste(n, ": alpha [", a, "]", chr, "p-value [", p, "];", ifelse(expr, "принимаем", "отвергаем"), "гипотезу"), stdout())
}

pretty_write("H0", ">", alpha, p1, alpha > p1)
pretty_write("H1", "<", alpha, p2, alpha < p2)
pretty_write("H2", ">", alpha, p3, alpha > p3)
