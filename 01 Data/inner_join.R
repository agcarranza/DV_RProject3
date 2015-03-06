life_exp <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select COUNTRY, LIFE_EXPECTANCY, SEX from LIFE_EXPECTANCY where INDICATOR like \\\'%Life expectancy at birth%\\\' and YEAR like \\\'%2000%\\\'"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_agc846', PASS='orcl_agc846', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

ppp1 <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select COUNTRY, EXPENDITURE from HEALTH_EXPENDITURE where INDICATOR like \\\'%total expenditure on health (PPP%\\\' and YEAR like \\\'%2000%\\\'"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_agc846', PASS='orcl_agc846', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

head(life_exp)
head(ppp1)