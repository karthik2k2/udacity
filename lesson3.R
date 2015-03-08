pf <- read.delim("pseudo_facebook.tsv")
#load ggplot2
library("ggplot2")
library("ggthemes")
names(pf)
qplot(x=dob_day,data=pf)+
  theme_minimal()+
  scale_color_tableau()+
  scale_x_discrete(breaks=1:31)

# Plotting friend counts
ggplot(data=subset(pf,!is.na(gender)),aes(x=friend_count))+geom_histogram(binwidth=25)+
  scale_x_continuous(limits=c(0,1000),breaks=seq(0,1000,50))+
  facet_wrap(~gender)

#using by command to apply to function by categories to one variable
table(pf$gender)
by(pf$friend_count,pf$gender,summary)

