library(shiny)
shinyServer(
        function(input, output) {
                
                Add <- function(x,y){
                        z <- 0
                        if (x > y){z <- (x-y)}
                        z
                }
                
                output$oid1 <- renderText({
                        
                        if (input$gender == 1)
                                paste(as.character(52 + 1.9*Add(input$height,60)), "Kg") 
                        else
                                paste(as.character(49 + 1.7*Add(input$height,60)), "Kg")  
                        
                        })
                
                output$oid2 <- renderText({
                        
                        if (input$gender == 1)
                                paste(as.character(56.2 + 1.41*Add(input$height,60)), "Kg") 
                        else
                                paste(as.character(53.1 + 1.36*Add(input$height,60)), "Kg")  
                        
                })
                
                output$oid3 <- renderText({
                        
                        if (input$gender == 1)
                                paste(as.character(50 + 2.3*Add(input$height,60)), "Kg") 
                        else
                                paste(as.character(45.5 + 2.3*Add(input$height,60)), "Kg")  
                        
                })
                
                output$oid4 <- renderText({
                        
                        if (input$gender == 1)
                                paste(as.character(48 + 2.7*Add(input$height,60)), "Kg") 
                        else
                                paste(as.character(45.5 + 2.2*Add(input$height,60)), "Kg")  
                        
                })
        })