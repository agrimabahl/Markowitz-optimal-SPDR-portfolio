#Efficient Frontier
mydata = read.table("output.txt")
x<-c(mydata$V3[2],mydata$V3[4],mydata$V3[6],mydata$V3[8],mydata$V3[10],mydata$V3[12],mydata$V3[14],mydata$V3[16],mydata$V3[18],mydata$V3[20],mydata$V3[22],mydata$V3[24],mydata$V3[26],mydata$V3[28])
y<-c(mydata$V3[1],mydata$V3[3],mydata$V3[5],mydata$V3[7],mydata$V3[9],mydata$V3[11],mydata$V3[13],mydata$V3[15],mydata$V3[17],mydata$V3[19],mydata$V3[21],mydata$V3[23],mydata$V3[25],mydata$V3[27])
plot(x,y, xlim=c(0, 0.09), ylim=c(0, 1.4),type="l",xlab="Standard Deviation", ylab="Expected Return")

#With Max Sharpe Ratio line
data_sharpe = read.csv("Sharpe_Ratio.csv",header=TRUE)
max_ratio = max(data_sharpe$SharpeRatio,na.rm=TRUE)
stdDev = subset(data_sharpe$StdDev,data_sharpe$SharpeRatio == max_ratio)
expRet = subset(data_sharpe$ExpReturn,data_sharpe$SharpeRatio == max_ratio)
risk_free = (1+0.01)^(1/12)-1

lines(x=c(0,stdDev_sharpe),y=c(risk_free*100,expRet_sharpe),colo)
 
