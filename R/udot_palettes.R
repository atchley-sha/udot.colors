udot_palette <- function(palette = "main", ...) {

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

  palette <- tolower(palette)
  palette <- gsub("grey", "gray", palette)

  return(udot_palettes[[palette]])
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

palette_gen_c <- function() {
  # pal <- penguin_corp_palette(palette)
  #
  # pal <- if (direction >= 0) pal else rev(pal)
  #
  # colorRampPalette(pal, ...)
}
