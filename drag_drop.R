library(DiagrammeR)
library(htmltools)
library(sortable)
html_print(tagList(
  tags$p("You can drag and drop the diagrams to switch order:"),
  tags$div(
    id = "aUniqueId",
    tags$div(
      style = "border: solid 0.2em gray; float:left; margin: 5px",
      mermaid("graph LR; S[SortableJS] -->|sortable| R ",
              height = 250, width = 300)
    ),
    tags$div(
      style = "border: solid 0.2em gray; float:left; margin: 5px",
      mermaid("graph TD; JavaScript -->|htmlwidgets| R ",
              height = 250, width = 150)
    )
  ),
  sortable_js("aUniqueId") # the CSS id
))