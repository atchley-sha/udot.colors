udot_color <- function(...) {

  primary_cols <- c(
    `light_blue`= "#5A87C6",
    `orange`= "#E86924",
    `dark_blue`= "#0B2444"
  )

  secondary_cols <- c(
    `light_green`= "#ABC746",
    `mustard`= "#F5A31B",
    `medium_blue`= "#09549C",
    `tan`= "#C7A25A",
    `turquoise`= "#55CCD4",
    `red`= "#E8261A" #Only use to highlight something strong or negative
  )

  tertiary_cols <- c(
    `red_rock`= "#C7776D",
    `brown`= "#7A5B1F",
    `tacao`= "#F7AA74",
    `purple`= "#8A52A1",
    `dark_green`= "#6B7A31",
    `yellow`= "#DED843"
  )

  grays <- c(
    `dark_gray`= "#454545",
    `gray`= "#888888",
    `light_gray`= "#EEEEEE"
  )

  udot_colors_list <- list(
    primary = primary_cols,
    secondary = secondary_cols,
    tertiary = tertiary_cols,
    grays = grays
  )

  udot_colors_vec <- c(primary_cols, secondary_cols, tertiary_cols, grays)

  cols <- c(...)
  cols <- tolower(cols)
  cols <- gsub("grey", "gray", cols)

  red_msg <- "Only use red to highlight something strong or negative"

  if (is.null(cols) || length(cols) < 1) {
    print(red_msg)
    return (udot_colors_list)
  }

  if (any(cols %in% c("primary", "secondary", "tertiary", "grays"))) {
    if (any(cols %in% c("secondary"))) print(red_msg)
    return(udot_colors_list[cols])
  }

  if("red" %in% cols) print(red_msg)
  return(udot_colors_vec[cols])
}
