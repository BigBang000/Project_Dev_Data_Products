quad <- function(x, A, B, C) A*x*x + B*x + C

shinyServer(
  function(input, output){
    ##output$inputValue    <- renderPrint( {input$glucose})
    output$y     <- renderPrint( {quad(input$x, input$A, input$B, input$C)})
    
  }
  )