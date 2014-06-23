#shinyServer


shinyServer(function(input, output) {
        output$plot1 <- renderPlot({
                input$goButton
                
                # Use isolate() to avoid dependency on input$n
                isolate({
                        hist(rnorm(input$n, as.numeric(input$m), as.numeric(input$sd)),
                             xlab= "sample", ylab="frequency", main="Histogram", col="yellow")
                })
        })
})


