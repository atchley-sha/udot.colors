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


scale_fill_udot_c <- function(
    color = "dark_blue",
    colorend = "white",
    reverse = FALSE,
    palette = NULL,
    ...) {

  pal <- palette_gen_c(
    color = color,
    colorend = colorend,
    reverse = reverse,
    palette = palette
  )

  ggplot2::scale_fill_gradientn(colors = pal(256), ...)
}

scale_colour_udot_c <- function(
    color = "dark_blue",
    colorend = "white",
    reverse = FALSE,
    palette = NULL,
    ...) {

  pal <- palette_gen_c(
    color = color,
    colorend = colorend,
    reverse = reverse,
    palette = palette
  )

  ggplot2::scale_color_gradientn(colors = pal(256), ...)
}
scale_color_udot_c <- scale_colour_udot_c


scale_fill_udot_d <- function(
    palette = "OrDb",
    reverse = FALSE,
    mid = "white",
    ...) {

  pal <- palette_gen_d(palette = palette, reverse = reverse, mid = mid)

  ggplot2::scale_fill_gradientn(colors = pal(256), ...)
}

scale_colour_udot_d <- function(
    palette = "OrDb",
    reverse = FALSE,
    mid = "white",
    ...) {

  pal <- palette_gen_d(palette = palette, reverse = reverse, mid = mid)

  ggplot2::scale_color_gradientn(colors = pal(256), ...)
}
scale_color_udot_d <- scale_colour_udot_d

