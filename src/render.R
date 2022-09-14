library(rmarkdown)

render_report = function(input_rmd = "", title = "", output_file = "", output_dir = "", ...) {
  args = list(...)

  rmarkdown::render(
    input_rmd,
    params = list(title = title, plot_funct = args$funct),
    output_file = output_file,
    output_dir = output_dir,
  )
}


