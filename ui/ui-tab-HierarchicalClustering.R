
tabItem(tabName = "HcTab", 
        
        fluidRow(
          column(12,
                 box(title = "Cluster dendrogram", solidHeader = F, status = "primary", width = 12, collapsible = F,
                     
                     textInput("hcK", label = h3("Number of boxes :"), value = "4"),
                     
                     hr(),
                     
                     plotOutput("hcPlot", click = "Cluster dendrogram")
                     
                     
                     
                     
                 )
          )
        )
)