require(ggplot2)
require(plyr)
require(grid)
require(RCurl)
require(reshape2)
require(tidyr)
require(dplyr)
require(jsonlite)
require(ggthemes)
require(extrafont)

life <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from LIFE_EXPECTANCY"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_agc846', PASS='orcl_agc846', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

health <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from HEALTH_EXPENDITURE"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_agc846', PASS='orcl_agc846', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))
