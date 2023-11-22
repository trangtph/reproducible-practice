transform_binary <- function(data_no_miss){
  #' @title Transform a Poisson variable (count) in to a Binary variable (yes/no)
  #' @description This function create two new variable: 
  #' "day": chains of day from day 1 to the maximum day observed in the data
  #' "fressness": whether the flower is fresh on that day
  #' @param data_no_miss The first value
  #' @return The new dataframe.
  number_binary_variable <- max(data_no_miss$tot.vase.days)
  binary_data <- as.data.frame(matrix(NA, nrow = nrow(data_no_miss) * number_binary_variable, 
                                      ncol = ncol(data_no_miss)))
  names(binary_data) <- names(data_no_miss)
  for (i in 1:ncol(data_no_miss))
  {
    binary_data[, i] <- rep(data_no_miss[, i], each = number_binary_variable)
  }
  binary_data <- binary_data %>% mutate(day = rep(1:number_binary_variable, 
                                                  times = nrow(data_no_miss)), 
                                        freshness = if_else(day <= tot.vase.days, 1, 0))
  binary_data$flowerID <- as.factor(binary_data$flowerID)  
  return(binary_data)
}
