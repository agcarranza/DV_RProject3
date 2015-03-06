life_exp[1] <- lapply(life_exp[1], as.character)
ppp1[1] <- lapply(ppp1[1], as.character)

p1 <- inner_join(ppp1, life_exp)


g1 <- ggplot(p1, aes(x=LIFE_EXPECTANCY, y=EXPENDITURE, color=SEX)) + geom_point(size=5)
g1 + ggtitle("Life Expectancy vs. Health Expenditure") + theme(plot.title=element_text(size=18, face='bold', vjust=2)) + labs(x="Life Expectancy (years)", y="Expenditure (PPP)") + theme(axis.text.x=element_text(size=14), axis.text.y=element_text(size=14)) + scale_colour_tableau() + guides(colour = guide_legend(override.aes = list(size = 6))) 
