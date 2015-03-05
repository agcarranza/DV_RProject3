income_group_region <- left_join(lifedf, healthdf, by = "COUNTRY") %>% group_by(WHO_REGION)

income_group_region$YEAR.x <- NULL

income_group_region$YEAR.y <- NULL

uniques <- unique(income_group_region)

