run_plots = function(layout_config, ...) {
  args = list(...)
  root = normalizePath("./")
  
  # render horizontal three landscape
  if ("horizontal_three" %in% names(layout_config)) {
      hor_three_settings = layout_config$horizontal_three$three_plot
      hor_three_plot = do.call(horizontal_three_layout, hor_three_settings)
      render_settings_three = list(
        input_rmd = paste0(root, "/landscape.Rmd"),
        funct = hor_three_plot,
        title = layout_config$horizontal_three$three_pdf$pdf_title,
        output_file = paste0(layout_config$horizontal_three$three_pdf$output_file_name, ".pdf"),
        output_dir = layout_config$horizontal_three$three_pdf$output_file_dir
      )
      do.call(render_report, render_settings_three)
  }
  
  # render horizontal two landscape
  if ("horizontal_two" %in% names(layout_config)) {
    hor_two_settings = layout_config$horizontal_two$two_plot
    hor_two_plot = do.call(horizontal_two_layout, hor_two_settings)
    render_settings_two = list(
      input_rmd = paste0(root, "/landscape.Rmd"),
      funct = hor_two_plot,
      title = layout_config$horizontal_two$two_pdf$pdf_title,
      output_file = paste0(layout_config$horizontal_two$two_pdf$output_file_name, ".pdf"),
      output_dir = layout_config$horizontal_two$two_pdf$output_file_dir
    )
    do.call(render_report, render_settings_two)
  }

  # render one landscape
  if ("one" %in% names(layout_config)) {
      render_settings_one = list(
        input_rmd = paste0(root, "/landscape.Rmd"),
        #funct = #,
        title = layout_config$one$one_pdf$pdf_title,
        output_file = paste0(layout_config$one$one_pdf$output_file_name, ".pdf"),
        output_dir = layout_config$one$one_pdf$output_file_dir
      )
      do.call(render_report, render_settings_one)
  }

  # render vertical landscape
  if ("one_top_one_bottom" %in% names(layout_config)) {
      vertical_settings = layout_config$one_top_one_bottom$one_one_plot
      vertical_plot = do.call(one_top_one_bottom, vertical_settings)
      render_settings_vert = list(
        input_rmd = paste0(root, "/landscape.Rmd"),
        funct = vertical_plot,
        title = layout_config$one_top_one_bottom$one_one_pdf$title,
        output_file = paste0(layout_config$one_top_one_bottom$one_one_pdf$output_file_name, ".pdf"),
        output_dir = layout_config$one_top_one_bottom$one_one_pdf$output_dir
      )
      do.call(render_report, render_settings_vert)
  }

  # render two top one bottom landscape
  if ("two_top_one_bottom" %in% names(layout_config)) {
      two_one_settings = layout_config$two_top_one_bottom$two_one_plot
      two_one_plot = do.call(two_top_one_bottom, two_one_settings)
      render_settings_two_one = list(
        input_rmd = paste0(root, "/landscape.Rmd"),
        funct = two_one_plot,
        title = layout_config$two_top_one_bottom$two_one_pdf$title,
        output_file = paste0(layout_config$two_top_one_bottom$two_one_pdf$output_file_name, ".pdf"),
        output_dir = layout_config$two_top_one_bottom$two_one_pdf$output_dir
      )
      return(do.call(render_report, render_settings_two_one))
  }
}


