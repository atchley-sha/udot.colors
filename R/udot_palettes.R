udot_palette <- function(palette = "main", list_all = FALSE, ...) {

  udot_palettes <- list(
    `main` = udot_color(
      "light_blue",
      "orange",
      "dark_blue",
      "gray",
      "medium_blue",
      "light_green",
      "dark_gray",
      "turquoise",
      "tacao",
      "brown"
      ),

    `alt` = list(),
    `grayscale` = list(),
    `highlight` = list()
  )

  if (list_all) return(udot_palettes)

  palette <- tolower(palette)
  palette <- gsub("grey", "gray", palette)

  return(udot_palettes[[palette]])
}

udot_palette_d <- function(
    palette = "OrDb",
    list_all = FALSE,
    mid = "white",
    ...) {

  udot_palettes_d <- list(
    `OrDb` = udot_color("orange", mid, "dark_blue"),
    `OrLb` = udot_color("orange", mid, "light_blue")
  )

  if (list_all) return(udot_palettes_d)

  return(udot_palettes_d[[palette]])
}

palette_gen <- function(palette = "main", reverse = FALSE) {

  function(n) {
    if (n > length(udot_palette(palette)))
      warning("Not enough colors in this palette!")
    else {
      all_colors <- udot_palette(palette)
      all_colors <- unname(unlist(all_colors))
      all_colors <- if (reverse) rev(all_colors) else all_colors
      color_list <- all_colors[1:n]
    }
  }
}

palette_gen_c <- function(
    color = "dark_blue",
    colorend = "white",
    reverse = FALSE,
    palette = NULL,
    ...) {

  if (!is.null(palette)) {
    if (!is.null(udot_palette(palette))) pal <- udot_palette(palette)
    if (!is.null(udot_palette_d(palette))) pal <- udot_palette_d(palette)
  } else {
    pal <- udot_color(color, colorend)
  }

  if (reverse) pal <- rev(pal)

  return(colorRampPalette(pal, ...))
}

palette_gen_d <- function(
    palette = "OrDb",
    reverse = FALSE,
    mid = "white",
    ...) {

  pal <- udot_palette_d(palette, mid = mid)

  if (reverse) pal <- rev(pal)

  return(colorRampPalette(pal, ...))

}
