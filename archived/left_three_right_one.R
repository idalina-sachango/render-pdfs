left_three_right_one <- function(plot1, plot2, 
                                 plot3, plot4,
                                 plot_title = '', subtitle = '', 
                                 caption = '', title_size = 18, 
                                 title_font = 'sans', ...) {
  "For caption size 9, character length must be no more than 18 characters"
  
  layout <- "
  AAAAABBBB
  AAAAABBBB
  AAAAABBBB
  AAAAABBBB
  "
  p <- (plot1 / plot2 / plot3)

  p <- (p | plot4) + plot_layout(design = layout)

  p + plot_annotation(
    title = plot_title,
    subtitle = subtitle,
    caption = caption,
    theme = theme(plot.title = element_text(size = 18))
  ) & theme(text = element_text(title_font))
}
