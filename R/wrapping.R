# wrapping functions


#' Saving PNG image for potrait A4
#' 
#'  This is only a wraping for ggsave function. With default png, width 9,
#'  height 6, dpi 350, and positions of 2 parameters `plot` and `file` are exchanged
#'  If there is no file name given, it will take the plot parameter as name
#'  
#' @export
save_polder <- function(plot, filename = NULL,
            device = "png", width = 9, height = 6, dpi = 350
            , ...){
  f_args <- match.call(expand.dots = FALSE)
  if (is.null(filename)) filename <- paste(f_args$plot, ".png", sep = "")
  ggsave(filename = filename, plot = plot,
         device = device, width = width, height = height, dpi = dpi, ...)
}


#' Saving PNG image for landscape A4
#' 
#'  This is only a wraping for ggsave function. With default png, width 15,
#'  height 10, dpi 350, and positions of 2 parameters `plot` and `file` are exchanged.
#'  If there is no file name given, it will take the plot parameter as name
#'  
#' @export
save_profile <- function(plot, filename = NULL,
                        device = "png", width = 15, height = 10, dpi = 350
                        , ...){
  f_args <- match.call(expand.dots = FALSE)
  if (is.null(filename)) filename <- paste(f_args$plot, ".png", sep = "")
  ggsave(filename = filename, plot = plot,
         device = device, width = width, height = height, dpi = dpi, ...)
}
