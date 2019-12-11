ui <- dashboardPage(
  dashboardHeader(title = "Provider Metrics"),
  dashboardSidebar(sidebarMenu(
    menuItem("HE Sector", tabName = "hesector", icon = icon("dashboard")),
    menuItem("Country Profile", tabName = "countryprofile", icon = icon("th"))
  )),
  dashboardBody(tabItems(
    tabItem(
      "hesector",
      
      fluidPage(
        
      )
    ),
    tabItem("countryprofile",
            selectInput(
              "provider",
              label = "Choose a provider to examine",
              choices = CountryList,
              #unique(HEIspine$Name.x),
              selected = "Malaysia"
            ),
          box(
            title = "Number of entrants by year",
            solidHeader = TRUE,
            status = "primary",
            plotOutput("plot1", height = 250)
          ),  
          
          valueBox(paste0(6,"%"), "External borrowing", icon = icon("bitcoin"), color = "yellow")
    )
    
  ))
)