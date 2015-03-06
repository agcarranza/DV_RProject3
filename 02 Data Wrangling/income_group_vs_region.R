income_group_region <- left_join(lifedf, healthdf, by = "COUNTRY") %>% group_by(WHO_REGION);income_group_region$YEAR.x <- NULL; uniques <- unique(income_group_region); 

uniques %>% ggplot(aes(x = COUNTRY, y = WHO_REGION)) + geom_point(aes(size = YEAR.y, color = WORLD_BANK_INCOME_GROUP)) + ggtitle("Income Groups and Region") + theme(plot.title=element_text(size=20, face="bold", vjust=2)) + labs(x="Country", y="Region") + theme(axis.text.x=element_blank()) + theme(axis.text.y=element_text(size=15)) + theme(axis.ticks.x=element_blank()) + theme(legend.title=element_blank()) + guides(colour=guide_legend(override.aes=list(size=4)), show_guide=FALSE)

