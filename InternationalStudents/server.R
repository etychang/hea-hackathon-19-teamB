server <- function(input, output) {
  chartdata1 <- reactive({
    tbl <- sr_table_28_clean %>% 
      group_by(`Academic Year`, `Country of domicile`, `Mode of study`) %>% 
      summarise(Number = sum(Number)) %>% 
      ungroup()
    
    tbl %>%
      filter(`Country of domicile` == input$provider)
    # data.frame(
    #   group = c("teaching","research","other"),
    #   value = c(input$provider[[1]],
    #             input$provider[[1]],
    #             input$provider[[1]])
    # )
  })
  
  
  output$plot1 <- renderPlot({
    ggplot(chartdata1(),aes(x=`Academic Year`,y = Number))+
      geom_line(aes(colour = `Mode of study`),stat="identity") +
      ylab(label='Student Numbers') +
      xlab(label="Year") 
      # scale_fill_manual(values=c("orange","darkblue","darkgreen"),name = " ")
  })
  
  output$eg_tbl = renderDT(
    sr_table_28_clean %>% 
      group_by(`Academic Year`, `Country of domicile`) %>% 
      summarise(Number = sum(Number)) %>% 
      ungroup(), options = list(lengthChange = FALSE)
  )
  
  output$plotNumbersByCountry <- renderPlot({
    tbl <- sr_table_28_clean %>% 
      group_by(`Academic Year`, `Country of domicile`) %>% 
      summarise(Number = sum(Number)) %>% 
      ungroup()
    
    tbl %>%  
    filter(`Country of domicile` %in% c("China", "India", "Germany", "United States")) %>%
    ggplot(aes(x = `Academic Year`, y = Number, colour = `Country of domicile`)) + 
    geom_line()
  })
}

