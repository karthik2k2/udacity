library(ggplot2)
pf <- read.csv("pseudo_facebook.tsv", sep="\t")

#plotting age and friend count
qplot(x=age,y=friend_count,data=pf)

#theme setting
library(ggthemr)
ggthemr("flat")

#More formal ggplot syntax
ggplot(diamonds, aes(x=price, fill=cut)) +
        geom_histogram(position="dodge", binwidth=1000) +
        scale_fill_brewer(palette = "Greens")+
        ylab("Number of diamonds")+theme_economist(base_size=12)+
        theme(legend.text = element_text(size = 15),
              legend.title = element_text(size = 12))
              # Some new changes are added
head(pf)