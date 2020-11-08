setwd("C:\\Users\\personal\\Desktop\\MSIT\\IT\\DataScience_2019501026\\Data Mining\\Exam Solutions\\Final exam")
data = read.csv("AprioriData.csv", header = TRUE);
print(data)
data$TID <- NULL
library(arules)

write.csv(data, "FreqItemSets.csv", quote = FALSE, row.names = TRUE)
transactions = read.transactions("FreqItemSets.csv", sep=',', rm.duplicates = TRUE)
inspect(transactions)

frequent_itemsets <- apriori(transactions, parameter = list(sup = 0.03, conf = 0.5,target="frequent itemsets"))

inspect(sort(frequent_itemsets)[1:15])

itemFrequencyPlot(transactions, topN = 5)

