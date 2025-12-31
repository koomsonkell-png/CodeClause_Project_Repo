
Iris <- data("iris")
Iris <- datasets::iris


str(Iris)
?iris
View(Iris)

summary(Iris)
describeBy(group = Iris$Species,x = Iris)
par(mfrow = c(2,2),mar = c(2,2,1,1))
hist(Iris$Sepal.Length,main = "")
hist(Iris$Sepal.Width,main = "")
hist(Iris$Petal.Length,main = "")
hist(Iris$Petal.Width,main = "")



boxplot(Iris$Petal.Width~Iris$Species)
boxplot(Iris$Petal.Length~Iris$Species)
boxplot(Iris$Sepal.Length~Iris$Species)
boxplot(Iris$Sepal.Width~Iris$Species)


plot(Iris$Sepal.Length,Iris$Sepal.Width)
plot(Iris$Sepal.Length,Iris$Petal.Length)
plot(Iris$Sepal.Length,Iris$Petal.Width)
plot(Iris$Sepal.Length,Iris$Sepal.Width)


plot(Iris$Sepal.Length,Iris$Sepal.Width)
plot(Iris$Sepal.Length,Iris$Sepal.Width)
plot(Iris$Sepal.Length,Iris$Sepal.Width)

par(mfrow = c(1,2),mar = c(2,2,1,1))
ggplot(data = Iris,aes(x = Sepal.Length)) + 
  geom_histogram(bins = 25) + 
  theme_grey()
ggplot(data = Iris,aes(x = Sepal.Length)) + 
  geom_boxplot() + 
  theme_grey()



exibble <- gt::exibble
exibble %>% gt()

exibble %>% gt(rowname_col = "row")
view(exibble)
exibble %>% gt(rowname_col = "row",
               groupname_col = "group")
exibble |>
  gt(
    rowname_col = "row",
    groupname_col = "group",
    row_group_as_column = TRUE
  )

mtcars <- datasets::mtcars
View(mtcars)

head(x = mtcars,n = 10) %>%
  gt(rownames_to_stub = TRUE)

exibble |> gt(rowname_col = "row", auto_align = FALSE)
View(Iris)

describeBy(x = Iris,group = Iris$Species)


Iris %>%
  ggplot() +
  geom_histogram(mapping = aes(x = Iris$Sepal.Length),
                 bins = 8,colour = "black",
                 fill = "maroon")
Iris %>%
  ggplot() + 
  geom_histogram(mapping = aes(x = Iris$Sepal.Width),
                 bins = 12,colour = "black",
                 fill = "steelblue2")

Iris %>%
  ggplot() + 
  geom_histogram(mapping = aes(x = Iris$Petal.Length),
                 bins = 9,colour = "black",
                 fill = "green3")

Iris %>%
  ggplot() + 
  geom_histogram(mapping = aes(x = Iris$Petal.Width),
                 bins = 9,colour = "black",
                 fill = "cyan")

hist(Iris$Petal.Width)

p1 <- Iris %>%
  ggplot(mapping = aes(x = Iris$Species)) + 
  geom_boxplot(mapping = aes(y = Iris$Sepal.Length,fill = Iris$Species)) + 
  geom_point(mapping = aes(y = Iris$Sepal.Length))

p2 <- Iris %>%
  ggplot(mapping = aes(x = Iris$Species)) + 
  geom_boxplot(mapping = aes(y = Iris$Sepal.Width,fill = Iris$Species)) + 
  geom_point(mapping = aes(y = Iris$Sepal.Width))

p3 <- Iris %>%
  ggplot(mapping = aes(x = Iris$Species)) + 
  geom_boxplot(mapping = aes(y = Iris$Petal.Length,fill = Iris$Species)) + 
  geom_point(mapping = aes(y = Iris$Petal.Length))

p4 <- Iris %>%
  ggplot(mapping = aes(x = Iris$Species)) + 
  geom_boxplot(mapping = aes(y = Iris$Petal.Width,fill = Iris$Species)) + 
  geom_point(mapping = aes(y = Iris$Petal.Width))

grid.arrange(p1,p2,p3,p4)


























