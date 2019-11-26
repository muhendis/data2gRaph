tabItem(tabName = "CorTab", 
        
        fluidRow(
          column(12,
                 box(title = "Significance level to the correlogram", solidHeader = F, status = "primary", width = 12, collapsible = F,id = "cor",
                     
                     
                     # Input: Select to compute the significance levels ----
                     radioButtons("selectPvalueMethod", "to compute the significance levels for ...",
                                  choices = c(Pearson = "pearson",
                                              Spearman = "spearman"),
                                  selected = "pearson"),
                     
                     plotOutput("corPlot", click = "Significance level to the correlogram")
                     
                     
                     
                     
                 )
          )
        )
)




