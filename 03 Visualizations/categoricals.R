categoricals <- eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from HEALTH_EXPENDITURE"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_agc846', PASS='orcl_agc846', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'True'), verbose = TRUE), 1, 2^31-1)))

myplot <- function(df, x) {
  names(df) <- c("x", "n")
  ggplot(df, aes(x=x, y=n)) + geom_point()

l <- list()
for (i in names(categoricals)) { 
  if (i %in% categoricals[[1]]) {
    r <- eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select \\\""i"\\\", count(*) n from HEALTH_EXPENDITURES group by \\\""i"\\\" "'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_agc846', PASS='orcl_agc846', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'True', i=i), verbose = TRUE), 1, 2^31-1)))
    p <- myplot(r,i)
    print(p) 
    l[[i]] <- p
  }
}


png("./03 Visualization/categoricals.png", width = 25, height = 20, units = "in", res = 72)
grid.newpage()
pushViewport(viewport(layout = grid.layout(1, 4)))   

print(l[[1]], vp = viewport(layout.pos.row = 1, layout.pos.col = 1))
print(l[[2]], vp = viewport(layout.pos.row = 1, layout.pos.col = 2))
print(l[[3]], vp = viewport(layout.pos.row = 1, layout.pos.col = 3))
print(l[[4]], vp = viewport(layout.pos.row = 1, layout.pos.col = 4))

dev.off()