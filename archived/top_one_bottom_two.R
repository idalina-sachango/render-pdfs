top_one_bottom_two <- function(plot1, plot2, plot3,
                               plot_title = '', subtitle = '', 
                               caption = '', title_size = 18, 
                               title_font = 'sans', ......) {
  
  p <- p3 / (p1 + p2)
  p + plot_annotation(
    title = plot_title,
    subtitle = subtitle,
    caption = caption,
    theme = theme(plot.title = element_text(size = 18))
  ) & theme(text = element_text(title_font))
}