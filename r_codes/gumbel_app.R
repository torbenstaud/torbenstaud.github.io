library(evd)
library(shiny)

m <- 100
r <- 365
set.seed(1194)
obs <- rexp(m*r)

dbs <- RcppRoll::roll_max(obs, n = r, by = r)

hist(dbs, breaks = 20, freq = F)
curve(dgumbel(x, loc = 5.89272, 1.02496), add = T, col = "red")
curve(dnorm(x, 6.47030857, 1.27763065) , add = T, col = "blue")


#create shiny for Gumbel DoA application
##constants
r <- 365

# UI: Oberflächengestaltung
ui <- fluidPage(
  titlePanel("Convergence to Gumbel"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("r", "Blocksize:", min = 1, max = 500, value = 92),
      sliderInput("m", "Number of Years:", min = 100, max = 5000, value = 1000),
      actionButton("resample")
    ),
    
    mainPanel(
      plotOutput("histPlot"),
      verbatimTextOutput("summaryStats")
    )
  )
)

# Server-Logik
server <- function(input, output) {
  
  samples <- reactiveVal(NULL)
  
  observeEvent(input$resample, {
    # Exponentielle Verteilung simulieren
    sim_data <- replicate(input$m, {
      max(rexp(input$r, rate = 1))  # Stichprobenmittelwerte
    })
    samples(sim_data)
  }, ignoreNULL = FALSE)
  
  output$histPlot <- renderPlot({
    req(samples())
    ggplot(data.frame(means = samples()), aes(x = means)) +
      geom_histogram(aes(y = ..density..), bins = 40, fill = "#00BFC4", alpha = 0.6, color = "black") +
      stat_function(fun = dnorm, 
                    args = list(mean = 1, sd = 1 / sqrt(input$n)), 
                    color = "red", linewidth = 1.2) +
      labs(
        title = paste("Verteilung der Stichprobenmittelwerte (n =", input$n, ")"),
        x = "Stichprobenmittelwert", y = "Dichte"
      ) +
      theme_minimal(base_size = 16)
  })
  
  output$summaryStats <- renderPrint({
    req(samples())
    summary(samples())
  })
}

# Starte die App
shinyApp(ui = ui, server = server)

