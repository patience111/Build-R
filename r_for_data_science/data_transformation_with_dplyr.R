library(nycflights13)
library(tidyverse)
#filter rows with filter()
##select all flights on January 1st
filter(flights,month==1,day==1)
jan1 <- filter(flights,month==1,day==1)
(dec25 <- filter(flights,month==12,day==25))
##finds all flights departed in 11 or 12
filter(flights,month==11|month==12)
nov_dec<-filter(flights,month %in% c(11,12))
##find all flights had an arrival delay of two or more hours
(a<-filter(flights,arr_delay>=120))
## find all flights that flew to huston 
(b<-filter(flights,dest=='IAH'|dest=='HOU'))
## find all flights that were operated by United, American, or Delta
(c<-filter(flights,carrier %in% c('AA','UA','DL')))
#flights$carrier
##depart in summer
(d<-filter(flights,month %in% c(7,8,9)))
##arrive two hours late but didn't leave late
(e<-filter(flights,arr_delay>=120 & dep_delay<=0))
##Were delayed by at least an hour, but made up over 30 minutes in flight
(f<-filter(flights, !is.na(dep_delay),dep_delay >= 60, dep_delay - arr_delay > 30))
##Departed between midnight and 6 a.m. (inclusive)
(g<-filter(flights,dep_time<=600 | dep_time==2400))
