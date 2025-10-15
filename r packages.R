
#install.packages(c("tidyr","ggplot2","ggraph","glue","shiny"))
library(tidyr) 
library(ggplot2) 
library(ggraph)
library(glue)
library(shiny) 




library(shiny)

ui <- fluidPage( 
  titlePanel("Hello Shiny!"),  
  sidebarLayout(   
    sidebarPanel(   
      textInput("name", "Enter your name:", "World")    ),        mainPanel(      textOutput("greeting")    )  ))

server <- function(input, output) 
{  output$greeting <- renderText({    paste("Hello,", input$name, "!")  })}
shinyApp(ui = ui, server = server)




library(tidyr)     
library(dplyr)


df <- data.frame(   Name = c("Alice", "Bob"),  
                    Math = c(90, 85),   Science = c(88, 92)  )
df

df_long <- df %>%     pivot_longer(cols = Math:Science,
          names_to = "Subject", values_to = "Score")
df_long





library(ggplot2)
ggplot(data = iris, aes(x = Species, y = Sepal.Length)) +
  geom_boxplot() +
  labs(title = "Sepal Length Distribution by Species", x = "Species", y = "Sepal Length")



# install.packages("glue") 
library(glue)

name <- "Gowthami"
age <- 20

# Using glue to combine text and variables
msg <- glue("Hello, my name is {name} and I am {age} years old.")
print(msg)




library(ggraph)
library(igraph)

# Define edges as a data frame
edges <- data.frame(
  from = c("A", "B", "C"),
  to   = c("B", "C", "D")
)

# Create graph
g <- graph_from_data_frame(edges)

# Plot
ggraph(g, layout = "circle") + 
  geom_edge_link() + 
  geom_node_point(size = 5, color = "skyblue") +
  geom_node_text(aes(label = name), vjust = -1.2)


