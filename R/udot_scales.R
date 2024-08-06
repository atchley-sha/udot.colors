scale_fill_udot <- function(palette = "main", reverse = FALSE, ...) {
  ggplot2::discrete_scale(
    aesthetics = "fill",
    palette = palette_gen(palette, reverse),
    ...
  )
}

scale_colour_udot <- function(palette = "main", reverse = FALSE, ...) {
  ggplot2::discrete_scale(
    aesthetics = "colour",
    palette = palette_gen(palette, reverse),
    ...
  )
}
scale_color_udot <- scale_colour_udot


scale_fill_udot_c <- function(palette, reverse = FALSE) {
  pal <- palette_gen_c(palette = palette, reverse = reverse)

  scale_color_gradientn(colors = pal(256), ...)
}
