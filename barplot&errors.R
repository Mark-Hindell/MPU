
c13.mean <- tapply(dat$dC13, list(dat$Year, dat$Age), mean)
c13.sd <- tapply(dat$dC13, list(dat$Year, dat$Age), sd)
c13.n <- tapply(dat$dC13, list(dat$Year, dat$Age), length)
c13.se <- c13.sd/sqrt(c13.n)
c13.95 <- c13.se*2
upbar <- c13.mean+c13.95
lobar <- c13.mean-c13.95

ebar <- barplot(c13.mean, beside=T,
col = c("lightblue", "mistyrose"),
 legend = rownames(c13.mean),
 ylab="Delta c13",
 xlab="Age",
 ylim= c(0,-25),
 main = "C13 values by Age and Year", font.main = 4,
 )
arrows(ebar, upbar, ebar, lobar, , col = "black", angle=90, code=3,lwd = 1)

