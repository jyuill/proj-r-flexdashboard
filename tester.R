## for testing

library(ggplot2)

str(mtcars)
mt <- mtcars
mt$cars <- row.names(mt)
row.names(mt) <- c(1:nrow(mt))

ggplot(mt, aes(x=disp, y=mpg))+geom_point()+
  facet_grid(.~gear)

library(highcharter)
