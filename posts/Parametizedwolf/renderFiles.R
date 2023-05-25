library(quarto)
library(purrr)
Equity.Analyser <- function(x) {
  quarto_render("Simple-Parameterized-Markdown.qmd", 
         execute_params = list(name = x), 
         output_file = paste0(x,".html"))
}
Example <- data.frame(name = c("Joe","John","Andrew"))
Example$name %>% map(., function(x) { Equity.Analyser(x)})
