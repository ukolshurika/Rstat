a<-c(5.853623, 6.075376, 6.265556, 7.056666, 0.547795, 5.402564, 5.048179, 0.548859, 2.335898, 1.39578, 3.885342, 4.438049, 2.248713, 4.093582, 2.965673, 1.248151, 0.10598, 2.822941, 3.897477, 3.684583, 4.326834, 1.619489, 6.022139, 7.30303, 3.772995)
b<-c(1.020858, 1.450525, 1.482923, 0.967239, 0.513461, 0.553696, 0.032343, 0.637679, 0.388579, 1.70019, 0.831335, 1.489441, 1.228964, 0.817932, 1.624702, 2.038893, 0.766153, 0.927376, 1.510612, 1.35093, 0.787555, 1.129506, 2.419758, 1.208091, 1.433732)

t.test(a, b)
t.test(a, b, alternative="less",var.equal=T)
t.test(a, b, alternative="greater",var.equal=T)

write("H0: alpha > p-value; отвергаем гипотезу", stdout())
write("H1: alpha < p-value; принимаем гипотезу", stdout())
write("H2: alpha > p-value; отвергаем гипотезу", stdout())
