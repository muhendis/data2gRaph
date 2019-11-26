
tabItem("aboutTab", 
        
        tags$p(
          class = "text-justify",
          tags$img(class = "img-responsive img-rounded center-block", src = "pix.PNG")#https://www.valucre.com/profile/10237-linengrad/
        ),
        
        fluidRow(
          box(
            title = "About this Dashboard",
            status = "info",
            width = "6 col-lg-4",
            solidHeader = F, 
            collapsible = F,
            tags$p(
              class = "text-justify",
              tags$img(class = "img-responsive img-rounded center-block", src = "logo.png", style = "max-width: 150px;")
            ),
            
            tags$p(class = "text-justify",
                   "Visualization is of great importance for data science and machine learning. 
                   Because it allows you to become aware of unnoticed details."),
            tags$p(class = "text-justify",
                   "The data2gRaph project is a web-based data 
                   visualization tool that can also be used off-line. It consists of 3 parts:"),
            tags$p(
              class = "text-justify",
              ">The first section visualizes statistical information."
            ),
            tags$p(
              class = "text-justify",
              ">The second section visualizes using machine learning information."
            ),
            tags$p(
              class = "text-justify",
              ">The third section visualizes  create a mix plot using different plots."
            )
            
            
            
            ),
          
          box(
            title = "",
            # status = "primary",
            width = "6 col-lg-4",
            hr(),
            tags$p(
              class = "text-center",
              tags$a(
                href = "https://www.r-project.org",
                target = "_blank",
                tags$img(class = "image-responsive",
                         src = "https://www.r-project.org/logo/Rlogo.svg",
                         style = "max-width: 100px;"
                )
              ),
              tags$a(
                class = "text-center",
                href = "https://rstudio.com",
                target = "_blank",
                tags$img(class = "image-responsive",
                         src = "rstudio.jpeg",
                         style = "max-width: 100px; margin-left: 2em;"
                )
              ),
              
              tags$a(
                href = "https://rtweet.info",
                target = "_blank",
                tags$img(class = "image-responsive",
                         src = "ggplot2.png",
                         style = "max-width: 100px; margin-left: 2em;"
                )
              ),
              hr(),
              
              tags$p(
                "This dashboard was built in",
                class = "text-justify",
                tags$a(href = "https://r-project.org", target = "_blank", "R"),
                "and", tags$a(href = "https://rstudio.com", target = "_blank", "RStudio"), "with",
                tags$strong("shiny,"),
                tags$strong("shinydashboard"),
                "and many more packages."
              )
            )
          ),
          
          box(
            title = "About me",
            status = "primary",
            width = "6 col-lg-4",
            solidHeader = T, 
            collapsible = F,
            tags$p(
              class = "text-center",
              tags$img(class = "img-responsive img-rounded center-block", src = "engin.PNG", style = "max-width: 150px;")
            ),
            tags$p(
              class = "text-center",
              tags$strong("Hi! I'm Engin."),
              HTML(paste0("(", tags$a(href = "https://twitter.com/enginbozaba", "@enginbozaba"), ")"))
            ),
            tags$p( class = "text-justify",
                    "I am an undergraduate student at Inonu University where 
                    I focus on data visualization, statistical and machine learning. 
                    I enjoy creating data tools like this dashboard. 
                    You can find the things I like to do in my portfolio on my website."
            ),
          
          tags$p( class = "text-justify",
                  "Get in touch with me on linkedin at",
                  HTML(paste0("(", tags$a(href = "https://www.linkedin.com/in/enginbozaba/", "@enginbozaba", target = "_blank"), "),")),
                  "online at",
                  HTML(paste0(tags$a(href = "https://muhendis.github.io", "muhendis.github.io", target = "_blank"), ",")),
                  "or by email at",
                  HTML(paste0(tags$a(href = "mailto:enginbozaba@gmail.com", "enginbozaba@gmail.com"), "."))
          )
            )
          )
)
