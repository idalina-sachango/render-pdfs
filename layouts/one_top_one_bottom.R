one_top_one_bottom = function(plot1, plot2, plot_title = '',
                                       subtitle = '', caption = '',
                                       title_size = 18, title_font = 'sans', ...) {
  # Caption Size 9, Character Length must be 27 characters long 
  # for caption, title, and subtitle
  
  args = list(...)
  layout <- "
    AAAAAAAA
    AAAAAAAA
    AAAAAAAA
    ########
    BBBBBBBB
    BBBBBBBB
    BBBBBBBB
    "
  
  p <- (plot1 / plot2) + patchwork::plot_layout(design = layout)
  p + plot_annotation(
    title = plot_title,
    subtitle = subtitle,
    caption = caption,
    theme = theme(plot.title = element_text(size = 11),
                  plot.caption = element_text(size = 11),
                  plot.subtitle = element_text(size = 11))
  ) & theme(text = element_text(title_font))
  
}
