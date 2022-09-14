sapply(list.files("./src", full.names = TRUE), source)
sapply(list.files("./layouts", full.names = TRUE), source)

layouts_config = list(
  horizontal_three = list(
    three_plot = list(
      plot1 = p_hor_three,
      plot2 = p_hor_three,
      plot3 = p_hor_three,
      plot_title = '', 
      subtitle = '', 
      caption = '', 
      title_size = 18,
      title_font = 'sans'
    ), 
    three_pdf = list(
      output_file_name = 'test_three',
      output_file_dir = './output',
      pdf_title = ''
    )
  ),
  horizontal_two = list(
    two_plot = list(
      plot1 = p_hor_two,
      plot2 = p_hor_two,
      plot_title = '', 
      subtitle = '', 
      caption = '', 
      title_size = 18, 
      title_font = 'sans'
    ),
    two_pdf = list(
      output_file_name = 'test_two',
      output_file_dir = './output',
      pdf_title = ''
    )
  ),
  one = list(
    one_plot = list(
      plot1 = p_void,
      plot_title = '', 
      subtitle = '', 
      caption = '', 
      title_size = 18, 
      title_font = 'sans'
    ),
    one_pdf = list(
      output_file_name = 'test_one',
      output_file_dir = './output',
      pdf_title = ''
    )
  ),
  one_top_one_bottom = list(
    one_one_plot = list(
      plot1 = p_hor_two,
      plot2 = p_hor_two,
      plot_title = '', 
      subtitle = '', 
      caption = '', 
      title_size = 18, 
      title_font = 'sans'
    ),
    one_one_pdf = list(
      output_file_name = 'test_one_one',
      output_file_dir = './output',
      pdf_title = ''
    )
  ),
  two_top_one_bottom = list(
    two_one_plot = list(
      plot1 = p_hor_two,
      plot2 = p_hor_two,
      plot3 = p_hor_two,
      plot_title = '', 
      subtitle = '', 
      caption = '', 
      title_size = 18, 
      title_font = 'sans'
    ),
    two_one_pdf = list(
      output_file_name = 'test_two_one',
      output_file_dir = './output',
      pdf_title = ''
    )
  )
)

run_plots(layouts_config)
