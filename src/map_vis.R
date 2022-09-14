library(ggplot2)
library(sf)
library(patchwork)
library(viridis)


us_pop_map <- function(data, variable_name = "") {
  ggplot(data = data, aes(fill = variable_name, color = variable_name, geometry = geometry)) +
    geom_sf() +
    theme_minimal()
}

bar_graph <- function(data, x = c(), y = c(), fill = c()) {
  ggplot(data = data, aes(x = x, y = y, fill = fill)) +
    geom_bar(stat = "identity")
}

nico_map_pop <- function(data, vertical_leg = TRUE) {
  if (vertical_leg == FALSE) {
    ggplot(data = data, aes(fill = log10(population), color = log10(population), geometry = geometry)) +
      geom_sf() + 
      annotate("text", -Inf, Inf, label = "Top-left", hjust = 0, vjust = 1) +
      scale_fill_viridis(breaks= c(2,3,4,5,6,7), labels = c("100","1K","10K","100K","1M","10M") ) + 
      scale_color_viridis(breaks= c(2,3,4,5,6,7), labels = c("100","1K","10K","100K","1M","10M")) +
      theme_minimal() + theme(legend.title = element_blank()) +
      theme(legend.box = "horizontal",
            legend.position = "bottom") +
      guides(size=guide_legend(direction='horizontal'))
  } else {
    ggplot(data = data, aes(fill = log10(population), color = log10(population), geometry = geometry)) +
      geom_sf() + 
      annotate("text", -Inf, Inf, label = "Top-left", hjust = 0, vjust = 1) +
      scale_fill_viridis(breaks= c(2,3,4,5,6,7), labels = c("100","1K","10K","100K","1M","10M") ) + 
      scale_color_viridis(breaks= c(2,3,4,5,6,7), labels = c("100","1K","10K","100K","1M","10M")) +
      theme_minimal() + theme(legend.title = element_blank())
  }
  
}







