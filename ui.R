library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Ideal Weight Predictor"),
        sidebarPanel(
                h2('Enter your data'),
                numericInput("height", 'Height (inches)', 70, min = 20, max = 100, step = 1, 
                             width = NULL),
                radioButtons("gender", "Gender",
                             c("Male" = 1,
                               "Female" = 2)),
                submitButton('Submit')
        ),
        mainPanel(
                h2("Discover your ideal weight in a second!" ),
                p(strong("Welcome to the Ideal Weight Predictor App! Enter your height 
                         (in inches) and gender in the left panel and click on the 
                         Submit button to  discover your ideal weight according to four 
                         popular formulas.")),
                p(" "),
                p(strong("Note: These formulas are only valid for adults, age 18 or older.")),
                p(" "),
                p(strong("Based on the Robinson formula, your ideal weight is")),
                verbatimTextOutput("oid1"),
                p(strong("Based on the Miller formula, your ideal weight is")),
                verbatimTextOutput("oid2"),
                p(strong("Based on the Devine formula, your ideal weight is")),
                verbatimTextOutput("oid3"),
                p(strong("Based on the Hamwi formula, your ideal weight is")),
                verbatimTextOutput("oid4")
        )
))