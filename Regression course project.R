# Course Project Regression


data(mtcars)
# automatic cars seem to have higher mpg
boxplot(mpg ~ am, data = mtcars)
plot(mpg ~ am, data = mtcars)
line(lm(mpg ~ am, data = mtcars))
     summary(fit))
# marginal estimate - disregarding all other coefficient
fit <- lm(mpg ~ am, data = mtcars)
summary(fit)
str(mtcars)

# including all other factors the am is no longer significant
summary(fit)
fit1 <- lm(mpg ~ ., mtcars)
summary(fit1)


# weight has the highest coefficent and the only significant p value

vif(fit1)
vif(fit2)
vif(fit2wc)
vif(fit4)


# disp, weight and cyl seem to be correlated 

# model with just weight & am

fit2 <- lm(mpg ~ wt + am, data = mtcars)
summary(fit2)
plot(mpg ~ wt, mtcars, col = as.factor(am))

# weight only

fit2w <- lm(mpg ~ wt, data = mtcars)
summary(fit2w)
coef(lm(mpg ~ wt, data = mtcars))
summary(lm(mpg ~ wt, data = mtcars))$cov.unscaled
summary(fit2w)$cov.unscaled
summary(fit2wc)$cov.unscaled
summary(fit2wchp)$cov.unscaled

# weight and cylinders
fit2wc <- lm(mpg ~ wt + cyl, data = mtcars)
summary(fit2wc)

# weight, horsepower
fit2wchp <- lm(mpg ~ wt  + cyl + hp, data = mtcars)
summary(fit2wchp)



        # adding no of cylinders
fit3 <- lm(mpg ~ wt + cyl  + am, data = mtcars)
summary(fit3)

# adding displacement
fit4 <- lm(mpg ~ wt + cyl + disp + am, data = mtcars)
summary(fit4)

# adding horsepower, removing replacment

fit4 <- lm(mpg ~ wt + cyl + hp + am, data = mtcars)
summary(fit4)


# automatic cars tend to have a lower gas milage, but it's not because of the 
# transmission type, it's because automatic cars tend to be heavier. The best
# predictor for gas milage is weight
# addding transmition type to the model does not improve it

# weight vs gas mileage for automatic cars

plot(mpg ~ wt, data = mtcars[mtcars$am == 0,], col = cyl)

plot(mpg ~ wt, data = mtcars[mtcars$am == 1,],col = cyl) # manual




plot(disp ~ cyl, mtcars)
plot(mpg ~ disp, mtcars, col = cyl)
plot(mpg ~ am, mtcars)
plot(mpg ~ disp, mtcars)
plot(mpg ~ wt, mtcars, col = as.factor(am))
points(mtcars$mpg, mtcars$disp,col = mtcars$am)
plot(disp ~ am, data = mtcars, col = cyl)
plot(mpg ~ disp, data = mtcars[mtcars$am == 1,])
plot(mpg ~ disp, data = mtcars[mtcars$am == 0,])
plot(wt ~ am, data = mtcars, col = cyl)
boxplot(wt ~ am, data = mtcars)





plot(mpg ~ disp, data = mtcars[mtcars$am == 1,], col = cyl)
plot(mpg ~ disp, data = mtcars[mtcars$am == 0,], col = cyl)





