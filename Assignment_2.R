# Name - Devankar Raj
# Roll - 2201MC15
# Assignment - 2


# install.packages("plotrix")


# ****************** Question 1 ****************************
name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Harry','Kevin', 'Jonas')
score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19)
attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1)
qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')

exam <- data.frame(name, score, attempts, qualify, stringsAsFactors = FALSE)
exam

summary(exam)  # get the summary and nature of data

exam[3, ]  # extracting 3rd row
exam[4]  # extracting 4th column

country = c('United States','China','France','Japan','United Kingdom','Italy','Germany','Canada','Spain','Australia')
new_data = cbind(exam, country)
View(new_data)

row_1 = c('Robert', 10.5, 1, 'yes')
row_2 = c('Sophia', 9, 3, 'no')
exam = rbind(exam, row_1)
exam = rbind(exam, row_2)
View(exam)



# ****************** Question 2 ****************************
nrow(iris)
ncol(iris)

summary(iris['Sepal.Length'])
summary(iris['Sepal.Width'])

species_counts = table(iris['Species'])
View(species_counts)

Lamba_Petal = iris[iris['Petal.Length'] > 2, ]
View(Lamba_Petal)



# ****************** Question 3 ****************************
gear_counts <- table(mtcars['gear'])

# Vertical bar plot
barplot(gear_counts,
        main = "Vertical Bar Plot",
        xlab = "Number of Forward Gears",
        ylab = "Number of Cars",
        col = "skyblue")

# Horizontal bar plot
barplot(gear_counts,
        main = "Horizontal Bar Plot",
        xlab = "Number of Cars",
        ylab = "Number of Forward Gears",
        col = "lightgreen",
        horiz = TRUE)



# ****************** Question 4 ****************************
hist(airquality[, 'Temp'],
     main = "Histogram for Maximum Daily Temperature",
     xlab = "Temperature (°F)",
     col = "skyblue",
     border = "black")

boxplot(airquality[, 'Wind'],
        main = "Box Plot for Average Wind Speed",
        ylab = "Wind Speed",
        col = "lightgreen")

plot(airquality[, 'Month'], airquality[, 'Ozone'],
     main = "Scatter Plot of Ozone Concentration per Month",
     xlab = "Month (5 means May, ..., 9 means September)",
     ylab = "Ozone Concentration",
     col = "blue",
     pch = 16)



# ****************** Question 5 ****************************
slices <- c(10, 12, 4, 16, 8, 7, 13, 9, 24)
countries <- c("UK", "US", "Australia", "Germany", "France", "India", "Finland", "England", "Spain")

# Create a 2D pie chart
pie(slices,
    labels = countries,
    main = "2D Pie-Chart of Slices by Country",
    col = rainbow(length(slices)))


library(plotrix)

# Create a 3D pie chart
pie3D(slices,
      labels = countries,
      explode = 0.1, # Slightly separate the slices
      main = "3D Pie-Chart of Slices by Country",
      col = rainbow(length(slices)))
