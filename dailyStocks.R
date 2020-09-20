#install.packages("BatchGetSymbols")
library(BatchGetSymbols)
##########################################

OutPath<-'C:/Users/power/Desktop/stock.prices.csv'


df.sp500 <- GetSP500Stocks()
tickers <- df.sp500$Tickers
result <- BatchGetSymbols(tickers,first.date =Sys.Date() - 1850,last.date = Sys.Date()+2,do.cache = FALSE)
result <- as.data.frame(result$df.tickers)
#write(result,file="stock.prices.csv",append=TRUE)
#write.csv(result,file="stock.prices.csv",append=TRUE)
#########
#old working
#write.csv(result,file = 'stock.prices.csv')
#######
write.csv(result,file = OutPath)


#write.csv(df.sp500,file = "500Tickers.csv")


# execute daily query
#result.recent <- BatchGetSymbols(tickers,first.date =Sys.Date() - 1,last.date = Sys.Date())
#headresult.recent <- as.data.frame(result.recent$df.tickers)
#write.table(result.recent, "stock.prices.csv", sep = ",", col.names = !file.exists("stock.prices.csv"), append = T).