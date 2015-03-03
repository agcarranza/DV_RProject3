myplot1 <- function(df, x) {
  names(df) <- c("x")
  ggplot(df, aes(x=x)) + geom_histogram()
}


l <- list()
for (i in names(categoricals)) { 
  if (i %in% categoricals[[2]]) {
    r <- eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select \\\""i"\\\" from HEALTH_EXPENDITURE where \\\""i"\\\" is not null"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_agc846', PASS='orcl_agc846', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'True', i=i), verbose = TRUE), 1, 2^31-1)))
    p <- myplot1(r,i)
    print(p) 
    l[[i]] <- p
  }
}

png("./03 Visualization/measures.png", width = 25, height = 20, units = "in", res = 72)
grid.newpage()
pushViewport(viewport(layout = grid.layout(1, 1)))   

print(l[[1]], vp = viewport(layout.pos.row = 1, layout.pos.col = 1))

dev.off()