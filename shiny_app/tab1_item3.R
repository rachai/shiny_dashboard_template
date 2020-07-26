#Define a list to wrap ui/server
tab1_item3 <- list()

#Define ui
tab1_item3$ui <- fluidRow(
  #Content box
  box(
    title = "Content",
    status = "primary",
    solidHeader = TRUE,
    width = 4
  )
)

#Define server
tab1_item3$server <- function(input, output){}