pf <- read.delim("pseudo_facebook.tsv")
names(pf)
qplot(x=dob_day,data=pf)+
  theme_minimal()+
  scale_color_tableau()+
  scale_x_discrete(breaks=1:31)