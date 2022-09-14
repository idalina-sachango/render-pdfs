world1 <- sf::st_as_sf(maps::map('france', fill = TRUE))

make_plots <- function(dataset) {
  assign("p_blank", ggplot() + 
    geom_sf(data = dataset), 
    envir = .GlobalEnv)
  
  assign("p_void",ggplot() + 
    geom_sf(data = dataset) +
    theme_void(), 
    envir = .GlobalEnv)
  
  assign("p",ggplot() + 
    geom_sf(data = dataset) + 
    theme_void() + 
    labs(title = '',
         subtitle = '',
         caption = '') +
    theme(plot.title = element_text(size = 12, hjust = 0.5, family = 'sans'),
          plot.subtitle = element_text(size = 12, hjust = 0.5, family = 'sans'),
          plot.caption = element_text(size = 12, hjust = 0.5, family = 'sans')), 
    envir = .GlobalEnv)
  
  
  assign("p_hor_three",ggplot() + 
    geom_sf(data = dataset) + 
    theme_void() + 
    labs(title = '',
         subtitle = '',
         caption = '') +
    theme(plot.title = element_text(size = 9, hjust = 0.5, family = 'sans'),
          plot.subtitle = element_text(size = 9, hjust = 0.5, family = 'sans'),
          plot.caption = element_text(size = 9, hjust = 0.5, family = 'sans')), 
    envir = .GlobalEnv)
  
  assign("p_hor_small",ggplot() + 
    geom_sf(data = dataset) + 
    theme_void() + 
    labs(title = '',
         subtitle = '',
         caption = '') +
    theme(plot.title = element_text(size = 9, hjust = 0.5, family = 'sans'),
          plot.subtitle = element_text(size = 9, hjust = 0.5, family = 'sans'),
          plot.caption = element_text(size = 9, hjust = 0.5, family = 'sans')), 
    envir = .GlobalEnv)
  
  assign("p_hor_two",ggplot() + 
    geom_sf(data = dataset) + 
    theme_void() + 
    labs(title = '',
         subtitle = '',
         caption = '') +
    theme(plot.title = element_text(size = 9, hjust = 0.5, family = 'sans'),
          plot.subtitle = element_text(size = 9, hjust = 0.5, family = 'sans'),
          plot.caption = element_text(size = 9, hjust = 0.5, family = 'sans')), 
    envir = .GlobalEnv)
  
  
  assign("p_vert",ggplot() + 
    geom_sf(data = dataset) + 
    theme_void() + 
    labs(title = '',
         subtitle = '',
         caption = '') +
    theme(plot.title = element_text(size = 7, hjust = 0.5, family = 'sans'),
          plot.subtitle = element_text(size = 7, hjust = 0.5, family = 'sans'),
          plot.caption = element_text(size = 7, hjust = 0.5, family = 'sans')), 
    envir = .GlobalEnv)
}

make_plots(world1 %>% filter(ID == "Nord"))
