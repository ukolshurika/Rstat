my_table <- t(read.table(commandArgs()[2], header = FALSE, sep = ",", dec = "."))
a <- my_table[1:25]
b <- my_table[26:50]

sink(stderr())

alpha = 0.1

res = var.test(a, b)
res
p1 = res[["p.value"]]

res = var.test(a, b, alternative="less")
res
p2 = res[["p.value"]]

res = var.test(a, b, alternative="greater")
res
p3 = res[["p.value"]]

pretty_write = function(n, chr, a, p, expr){
    write(paste(n, ": alpha [", a, "]", chr, "p-value [", p, "];", ifelse(expr, "принимаем", "отвергаем"), "гипотезу"), stdout())
}

pretty_write("а)", ">", alpha, p1, alpha > p1)
pretty_write("б)", "<", alpha, p2, alpha < p2)
pretty_write("в)", ">", alpha, p3, alpha > p3)
