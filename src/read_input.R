read_input <- function(path_to_plot_folder = '', path_to_plot_script = '', ...) {
  args = list(...)
  
  if (path_to_plot_folder) {
    sapply(list.files(path_to_plot_folder, full.names = TRUE), source)
  } else if (path_to_plot_script) {
    source(path_to_plot_script)
  }
}
