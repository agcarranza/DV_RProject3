
avgExpenditures <- healthExpenses  %>% group_by(WHO_REGION)  %>% summarise(AVERAGE_EXPENDITURE=mean(EXPENDITURE))

group <- worldIncomeGroup %>% group_by(WHO_REGION) %>% summarise(INCOME_GROUP=first(WORLD_BANK_INCOME_GROUP))

p2 <- healthExpenses %>% group_by(WHO_REGION) %>% summarise(avg=mean(EXPENDITURE), std=sd(EXPENDITURE))

d2 <- right_join(group, p2)

g2 <- ggplot(d2, aes(x=WHO_REGION, y=avg, fill=WHO_REGION)) + geom_bar(stat="identity")

g2 + ggtitle("Average Health Expenditure per WHO Region") + theme(plot.title=element_text(size=18, face='bold', vjust=2)) + labs(x="WHO Region", y="Average Expenditure (PPP)") + theme(axis.text.x=element_text(size=12, angle=20), axis.text.y=element_text(size=14)) + scale_colour_tableau() + coord_flip()



