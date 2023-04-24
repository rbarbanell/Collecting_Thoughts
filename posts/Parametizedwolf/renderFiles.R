library(rmarkdown)
library(purrr)
Document.Maker <- function(x) {
  render("Simple-Parameterized-Markdown.qmd", 
         params = list(name = x), 
         output_file = paste0(x,".html"))
}
Example <- data.frame(name = c("Joe","John","Andrew"))
Example$name %>% map(., function(x) { Document.Maker(x)})
