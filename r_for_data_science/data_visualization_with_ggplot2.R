library(tidyverse)
library(nycflights13)
#install.packages(c('gapminder','lahman'))
tidyverse_update()
ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ,y=hwy))
ggplot(data=mpg)
str(mtcars)
?mpg
ggplot(mpg)+
  geom_point(aes(x=cyl,y=hwy))
ggplot(mpg)+
  geom_point(aes(x=class,y=drv))
mpg$class
ggplot(mpg)+
  geom_point(aes(x=displ,y=hwy,size=class))
ggplot(mpg)+
  geom_point(aes(x=mpg$displ,y=mpg$hwy,alpha=class))
ggplot(mpg)+
  geom_point(aes(x=mpg$displ,y=mpg$hwy,shape=class))
ggplot(mpg)+
  geom_point(aes(x=mpg$displ,y=mpg$hwy),color='blue')
?mpg
mpg
glimpse(mpg)
ggplot(mpg)+
  geom_point(aes(x=mpg$displ,y=mpg$hwy))+
  facet_wrap(~class,nrow=3)
ggplot(mpg)+
  geom_point(aes(x=mpg$displ,y=mpg$hwy))+
  facet_grid(drv~cyl)
ggplot(mpg)+
  geom_point(aes(x=mpg$displ,y=mpg$hwy))+
  facet_grid(.~cyl)
ggplot(mpg)+
  geom_smooth(aes(x=mpg$displ,y=mpg$hwy))
ggplot(mpg,aes(x=displ,y=hwy))+
  geom_point(aes(color=class))+
  geom_smooth(data=filter(mpg,class=='subcompact'),se=F)
ggplot(mpg,aes(x=displ,y=hwy,color=drv))+
  geom_point()+
  geom_smooth(se=F)
ggplot(mpg,aes(x=mpg$displ,y=mpg$hwy))+
  geom_point()+
  geom_smooth(se=F)
ggplot(mpg,aes(x=mpg$displ,y=mpg$hwy))+
  geom_point()+
  geom_smooth(aes(group=mpg$drv),se=F)
ggplot(mpg,aes(x=displ,y=hwy,color=drv))+
  geom_point()+
  geom_smooth(se=F)
ggplot(mpg,aes(x=displ,y=hwy))+
  geom_point(aes(color=drv))+
  geom_smooth(se=F)
ggplot(mpg,aes(x=displ,y=hwy))+
  geom_point(aes(color=drv))+
  geom_smooth(aes(linetype=drv),se=F)
ggplot(mpg,aes(x=displ,y=hwy))+
  geom_point(color='white',size=4)+
  geom_point(aes(color=drv))
demo<-tribble(~a,      ~b,
             'bar_1', 20,
             'bar_2', 30,
             'bar_3', 40)
demo
ggplot(demo)+
  geom_bar(aes(x=a,y=b),stat='identity')
ggplot(diamonds)+
  geom_bar(aes(x=cut,y=..prop..,group=1))
str(diamonds)
ggplot(diamonds)+
  stat_summary(aes(x=cut,y=depth),fun.ymin = min,fun.ymax = max,fun.y = median)
ggplot(diamonds)+
  geom_pointrange(aes(x=cut,y=depth),stat='summary')
ggplot(diamonds)+
  geom_pointrange(aes(x=cut,y=depth),stat='summary',fun.ymin=min,fun.ymax=max,fun.y=median)
ggplot(diamonds,aes(x=cut,fill=clarity))+
  geom_bar(alpha=1/5,position = 'identity')
ggplot(diamonds,aes(x=cut,color=clarity))+
  geom_bar(fill=NA,position = 'identity')
ggplot(diamonds,aes(x=cut,fill=clarity))+
  geom_bar(position = 'dodge')
ggplot(mpg,aes(x=class,y=hwy))+
  geom_boxplot()
ggplot(mpg,aes(x=class,y=hwy))+
  geom_boxplot()+
  coord_flip()
mpg
factor(1)
