vertical_two_layout <- function(plot1, plot2, 
                                plot_title = '', subtitle = '', 
                                caption = '', title_size = 18, 
                                title_font = 'sans', ...) {
  " Size for caption, title, subtitle must be 7"

  layout <- " 
  AAAAAAAA
  AAAAAAAA
  AAAAAAAA
  AAAAAAAA
  ########
  BBBBBBBB
  BBBBBBBB
  BBBBBBBB
  BBBBBBBB
  "
  
  p <- (plot1 / plot2) + patchwork::plot_layout(design = layout)
  p + plot_annotation(
    title = plot_title,
    subtitle = subtitle,
    caption = caption,
    theme = theme(plot.title = element_text(size = 18))
  ) & theme(text = element_text(title_font))
  
}



