library(shiny)

# Define UI ----
ui <- fluidPage(
  titlePanel(strong("Jenna's Shiny App")),

  sidebarLayout(position = "left", # default
    sidebarPanel(h2("Installation"),
                 p("Shiny is available on CRAN, so you can install it in the usual way from your R console:"),
                 code('install.packages("shiny")'),
                 br(),
                 br(),
                 img(src = "rstudio.png", height = 70, width = 200),
                 br(),
                 "Shiny is a product of",
                 span("Rstudio", style = "color:blue")),
    mainPanel(
      h1("Intoducing Shiny"),
      p("Shiny is a new package from RStudio that makes it easy to build interactive web applications with R."),
      br(),
      p("For an introduction and live examples, visit the ",
        a("Shiny homepage.",
          href = "https://shiny.rstudio.com")),
      h2("Features"),
      p("- Build useful web applications with only a few lines of code - no JavaScript required"),
      p('- Shiny applications are automatically "live" in the same way that spreadsheets are live. Outputs change instantly as users modify inputs, without requiring a reload of the browser.')
    )
  )
)

# Define server logic ----
server <- function(input, output) {

}

# Run the app ----
shinyApp(ui = ui, server = server)
