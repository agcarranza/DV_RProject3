lifedf <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select YEAR, COUNTRY, WORLD_BANK_INCOME_GROUP from LIFE_EXPECTANCY where INDICATOR like \\\'%birth%\\\' and (YEAR LIKE \\\'%2012%\\\') and SEX like \\\'%Both%\\\'"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_agc846', PASS='orcl_agc846', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

healthdf <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select YEAR, COUNTRY, WHO_REGION from HEALTH_EXPENDITURE where (YEAR LIKE \\\'%2012%\\\')"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_agc846', PASS='orcl_agc846', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

#head(lifedf)
#head(healthdf)
