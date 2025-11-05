
#' Launch the Shiny App
#' @export
launch_app <- function() {
  app_dir <- system.file('appdir', package = 'myPackage')
  shiny::runApp(app_dir, display.mode = 'normal')
}

