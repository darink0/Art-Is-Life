# Create data vectors
art <- c(1, 2, 8, 7, 9)
life <- c(4, 3, 2, 5, 6)

# Combine data vectors into a data frame
df <- data.frame(art, life)

# Define a function to calculate the ratio of art to life
calculateRatio <- function(art, life){
  return(art/life)
}

# Apply the function to the data frame
ratio_vector <- mapply(calculateRatio, df$art, df$life)

# Plot the ratio of art to life
plot(ratio_vector, type = "o", xlab = "Index", ylab = "Ratio of Art to Life")

# Add vertical lines for each index
abline(v = 1:5, lty = 2)

# Create a title for the plot
title(main = "Ratio of Art to Life", col.main = "blue")

# Add an x-axis label
xlab("Index")

# Add a y-axis label
ylab("Ratio of Art to Life")

# Color the line in the plot
lines(ratio_vector, col = "red")

# Add a legend
legend(x = "topright", legend = c("Art to Life Ratio"), col = c("red"), lty = 1)

# Calculate the mean ratio
mean_ratio <- mean(ratio_vector)

# Display the mean ratio in the plot
text(x = 0.5, y = 0.5, labels = paste("Mean Ratio: ", round(mean_ratio, 2)), adj = c(0.5, 0.5))