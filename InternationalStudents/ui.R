ui <- dashboardPage(
  dashboardHeader(title="Provider Metrics"),
  dashboardSidebar(),
  dashboardBody(
    
    selectInput("provider",
                label = "Choose a provider to examine",
                choices = CountryList, #unique(HEIspine$Name.x),
                selected = "Malaysia"),
    fluidRow(
      # valueBoxOutput("value1", width = 4),
      # valueBoxOutput("value2", width = 4),
      # valueBoxOutput("value3", width = 4),
      box(title = "Income Breakdown",solidHeader=TRUE,status="primary",plotOutput("plot1", height = 250))
      # valueBox(paste0(6,"%"), "Cash flow", icon = icon("credit-card"), color = "yellow"),
      
      
      # box(title = "cash flow chart", solidHeader=TRUE,width = 4,
      #     plotOutput("plot3",height = 250)),
      # 
      # 
      # box(title = "Total Income", width = 4,
      #     plotOutput("plot4" ,height = 250)),
      # 
      # 
      # valueBox(paste0(6,"%"), "External borrowing", icon = icon("bitcoin"), color = "yellow"),
      # 
      # box(tableOutput('table'),title = "Cost Breakdown", width = 4),
      # 
      # box(title = "Spider diagram", width = 4,
      #     plotOutput("plot5", height = 250))
    )

  )
)