horizontal_two_layout <- function(plot1, plot2, 
                                  plot_title = '', subtitle = '', 
                                  caption = '', title_size = 18, 
                                  title_font = 'sans', ...) {
  # Caption size 9, character Length must be 41 characters long 
  # for caption, title, subtitle
  
  
  layout <- " 
  AAAABBBB
  AAAABBBB
  AAAABBBB
  "
  
  p <- (plot1 | plot2) + patchwork::plot_layout(design = layout)
  p + plot_annotation(
    title = plot_title,
    subtitle = subtitle,
    caption = caption,
    theme = theme(plot.title = element_text(size = 18))
  ) & theme(text = element_text(title_font))
  
}

horizontal_two_inset <- function(plot1, plot2, 
                               plot_title = '', subtitle = '', 
                               caption = '', title_size = 18, 
                               title_font = 'sans',
                               position = 'top right', ...) {
  " Size for caption, title, subtitle must be 7"
  
  # top right
  if (position == 'top right') {
    layout <- c(
      area(t = 1, l = 1, b = 4, r = 4),
      area(t = 1, l = 5, b = 2, r = 7)
    )

  } else if (position == 'top left') {
    layout <- c(
      area(t = 1, l = 5, b = 4, r = 8),
      area(t = 1, l = 1, b = 2, r = 3)
    )
  } else if (position == 'bottom left') {
    layout <- c(
      area(t = 1, l = 5, b = 4, r = 8),
      area(t = 3, l = 1, b = 4, r = 3)
    )
  } else if (position == 'bottom right') {
    layout <- c(
      area(t = 1, l = 1, b = 4, r = 4),
      area(t = 3, l = 5, b = 4, r = 7)
    )
  }

  p <- (plot1 / plot2) + patchwork::plot_layout(design = layout)
  p + plot_annotation(
    title = plot_title,
    subtitle = subtitle,
    caption = caption,
    theme = theme(plot.title = element_text(size = 18))
  ) & theme(text = element_text(title_font))
  
}
