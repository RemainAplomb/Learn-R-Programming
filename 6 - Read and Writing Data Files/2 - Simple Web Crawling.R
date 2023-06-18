#===============================================================

# Simple Web Crawling

#===============================================================

install.packages("rvest")
install.packages("readr")
install.packages("writexl")

library(readr)
library(rvest)   # For web scraping
library(writexl) # For writing Excel files

scrape_website <- function(url, format = "csv") {
  # Send a GET request to the URL and extract the HTML content
  page <- read_html(url)
  
  # Scrape headers
  headers <- page %>%
    html_nodes("h1, h2, h3, h4, h5, h6") %>%
    html_text()
  
  # Scrape other information (e.g., paragraphs, links, etc.)
  other_info <- page %>%
    html_nodes("p, a") %>%
    html_text()
  
  # Determine the maximum number of elements
  max_len <- max(length(headers), length(other_info))
  
  # Pad the shorter vectors with NA values
  headers <- c(headers, rep(NA, max_len - length(headers)))
  other_info <- c(other_info, rep(NA, max_len - length(other_info)))
  
  # Create a data frame with the scraped data
  data <- data.frame(Headers = headers, OtherInfo = other_info)
  
  view(data)
  
  # Save the data in the specified format
  if (format == "csv") {
    write.csv(data, "scraped_data.csv", row.names = FALSE)
  } else if (format == "xlsx") {
    write_xlsx(data, "scraped_data.xlsx")
  } else if (format == "txt") {
    writeLines(data$Headers, "scraped_data.txt")
  } else {
    cat("Invalid format specified. Please choose 'csv', 'xlsx', or 'txt'.")
  }
}

scrape_website("https://remainaplomb-web-tao.web.app/", format = "csv")

#===============================================================

# Reading scraped data
data_csv <- read.csv("scraped_data.csv")
head(data_csv)
