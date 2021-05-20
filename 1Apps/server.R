shinyServer(
  function(input, output, session){
    
  output$myPlot <- renderPlot({
    
    distType <- input$Distrubution
    size <- input$sampleSize
    
    if(distType=="Normal"){
      randonVec <- rnorm(size, mean = as.numeric(input$mean) , sd = as.numeric(input$sd)) 
      
      }
    else {
      
      randonVec <- rexp(size, rate=1/ as.numeric(input$lamba))
    }
    
    hist(randonVec, col = "purple",)
    
  })
  
  
})