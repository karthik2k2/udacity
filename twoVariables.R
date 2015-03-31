library(ggplot2)
pf <- read.csv("pseudo_facebook.tsv", sep="\t")

#plotting age and friend count
qplot(x=age,y=friend_count,data=pf)

#More formal ggplot syntax
ggplot(aes(x=age,y=friend_count),data=pf)+geom_jitter(alpha=1/20) +
        xlim(13,90)+
        ylim(0,5000)+
        coord_trans(y="sqrt")
