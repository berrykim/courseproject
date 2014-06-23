#UI
library(shiny)





shinyUI(

        fluidPage(    

                titlePanel("Proof of Central Limit Theorem"),

                sidebarLayout(      

                        sidebarPanel(
                                sliderInput("n", h5("sample size:"), min = 10, max = 1000, value = 20,
                                            step = 10),
                                numericInput("m", label = h5("mean:"), value = 0),
                                radioButtons("sd", label = h5("standard deviation"),
                                             choices = list("1" = 1, "2" = 2, "3" = 3),
                                             selected = 1
                                ),
                                actionButton("goButton", "Draw histogram"),
                                br(),
                                p("A statistical theory that states that given a sufficiently large sample size from a population with a finite level of variance, the mean of all samples from the same population will be approximately equal to the mean of the population. Furthermore, all of the samples will follow an approximate normal distribution pattern, with all variances being approximately equal to the variance of the population divided by each sample's size",
                                  style = "font-family: 'times'; font-si16pt"),
                                p("If you want to see the mathematical proof, click ",
                                  a("CLT(Wiki)", 
                                    href = "http://en.wikipedia.org/wiki/Central_limit_theorem"))
                        ),
                        
                        # Create a spot for the barplot
                        mainPanel(
                                plotOutput("plot1")  
                        )
                        
                )
        )
)










