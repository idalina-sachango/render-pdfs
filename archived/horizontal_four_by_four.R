horizontal_four_by_four <- function(plot1, plot2, 
                                    plot3, plot4,
                                    plot_title = '', subtitle = '', 
                                    caption = '', title_size = 18, 
                                    title_font = 'sans', ...) {
  layout <- " 
  AAAAAAAA
  AAAAAAAA
  BBBBBBBB
  BBBBBBBB
  "

  p <- (plot1 | plot2 )
  p_last <- (plot3 | plot4) 
  
  p <- (p / p_last) + plot_layout(design = layout)

  p + plot_annotation(
    title = plot_title,
    subtitle = subtitle,
    caption = caption,
    theme = theme(plot.title = element_text(size = 18))
  ) & theme(text = element_text(title_font))
}
