options(scipen=999)
Concentration <- c(0.000009467789372, 0.00001893557874, 0.00002840336812, 0.00003787115749)  
Absorbance <- c(0.150, 0.272, 0.436, 0.578)
fit <- lm(Concentration+0~Absorbance+0)
summary(fit)

r2 <- round(summary(fit)$adj.r.squared, digits=3)
r2

slope <- 0.0000242

legend1 <- expression(R^2*"=")
legend2 <- "Equation of the line: "

plot( x=Absorbance, y=Concentration, type="p",
      main="Absorbance vs Concentration (M)",
      xlab="Absorbance", ylab="Concentration (M)",
      xlim=c(0,1), ylim=c(0,0.00005)
)
abline(fit)
legend(x=0.6, y=0.00003,legend=c(legend1,legend2))