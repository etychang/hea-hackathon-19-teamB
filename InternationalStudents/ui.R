ui <- dashboardPage(
  dashboardHeader(title = "International Students"),
  dashboardSidebar(sidebarMenu(
    menuItem("HE Sector", tabName = "hesector", icon = icon("dashboard")),
    menuItem("Country Profile", tabName = "countryprofile", icon = icon("th"))
  )),
  dashboardBody(tabItems(
    tabItem(
      "hesector",
      
      fluidPage(
        column(width = 6,
               box(
                 title = "Number of entrants by year",
                 solidHeader = TRUE,
                 status = "primary",
                 width = 12,
                 plotOutput("plotNumbersByCountry", height = 300)
          )
        ),
        column(width = 6,
          DTOutput('eg_tbl')
        )
      )
    ),
    tabItem("countryprofile",
            selectInput(
              "provider",
              label = "Choose a country to examine",
              choices = CountryList,
              selected = "China"
            ),
          fluidPage(
            title = "Number of entrants by year",
            solidHeader = TRUE,
            status = "primary",
            plotOutput("plot1", height = 500)
          ),  
          
          valueBox(paste0(6,"%"), "Latest year", icon = icon("bitcoin"), color = "yellow"),
          valueBox(paste0(27,"%"), "This year", icon = icon("bitcoin"), color = "purple"),
          valueBox(paste0(183,"%"), "Random borrowing", icon = icon("bitcoin"), color = "blue")
    )
    
  ))
)

