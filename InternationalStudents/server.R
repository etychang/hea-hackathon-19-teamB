server <- function(input, output) {
  chartdata1 <- reactive({
    sr_chart_6 %>% 
      filter(`Country of domicile` == input$provider)
    # data.frame(
    #   group = c("teaching","research","other"),
    #   value = c(input$provider[[1]],
    #             input$provider[[1]],
    #             input$provider[[1]])
    # )
  })
  
  
  output$plot1 <- renderPlot({
    ggplot(chartdata1(),aes(x=`Academic year`,y=Number))+
      geom_bar(aes(),stat="identity")+
      ylab(label='Student Numbers') +
      xlab(label="Year") +
      scale_fill_manual(values=c("orange","darkblue","darkgreen"),name = " ")
  })
}

