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
#plotting tenure 
ggplot(data=pf,aes(x=tenure/365))+
  geom_histogram(colour='black',fill='#099DD9',binwidth=0.25)+
  scale_x_continuous(limits=c(0,8),breaks=seq(0,8,1))+
  xlab("Number of years using facebook")+
  ylab("Number of users in sample")

#histogram of ages
ggplot(data=pf,aes(x=age))+
  geom_histogram(binwidth=5,colour='black',fill='#099DD9')+
  scale_x_continuous(limits=c(0,120),breaks=seq(0,120,10))+
  theme_igray()+
  scale_colour_tableau()+
  xlab("Age of Facebook Users")+
  ylab("Count of users in the sample")


