## for testing

library(ggplot2)

str(mtcars)
mt <- mtcars
mt$cars <- row.names(mt)
row.names(mt) <- c(1:nrow(mt))

ggplot(mt, aes(x=disp, y=mpg))+geom_point()+
  facet_grid(.~gear)

library(highcharter)
hchart(mt, "scatter", hcaes(x = disp, y = mpg, group = gear))

library(rCharts)

p1 <- rPlot(data=mt, disp ~ mpg | gear, color='gear', type='point')
p1 

library(ggvis)
mt %>% ggvis(x=~ disp, y=~mpg) %>% layer_points()
mt %>% ggvis(x=~ disp, y=~mpg, fill=~factor(gear)) %>% layer_points()
## you can add interaction but requires shiny
mt %>% ggvis(x=~ disp, y=~mpg, fill=~factor(gear)) %>% layer_points() %>%
  add_tooltip(function(df) paste("disp: ",df$disp,", mpg: ",df$mpg, sep=""))