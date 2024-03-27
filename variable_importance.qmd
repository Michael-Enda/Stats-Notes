---
title: Variable Importance
date: 2024-03-27
tags: []
---

## How to Calculate Variable Importance

### Standardizing Variables

Look [here](/standardize_variables.qmd) for more information on how to
standardize variables.

**NOTE:** The downside of standardizing variables is that it changes the units
of your variables. This makes it hard to interpret the Beta coefficient of
your model after standardization.

### R^2^ Values of Each Dependent Variable

The R^2^ value is interpreted as how much variance in the dependent
variable is explained by change in the independent variables. We can use this
value to determine which independent variable is most important.

#### For Uncorrelated Variables

When all of your independent variables are uncorrelated you could run
univariate linear regressions for each of your independent variables.

**NOTE:** When trying this method sum the R^2^ values of all the univariate
models. If the **sum is greater** than the multivariate model's R^2^ value then the
independent variables are **are** correlated.

#### For Correlated Variables

Run an [ANOVA](/anova.qmd) test to determine how much each variable **reduces**
the sum of squared error.

**NOTE:** When performing this method, the order of independent variables in
the model influences the calculated sum of squared error for that variable.
This, in turn, influences each variable's contribution to R^2^.

To avoid this you can install the `relaimpo` package and use the `calc.relimp`
function. What this package does is run every possible permutation of variable
order to calculate the variable importance. If you use this **read the
documentation** of the package, you don't want to run tests without knowing
what they're doing.
