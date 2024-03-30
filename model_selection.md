---
title: Model Selection
date: 2024-03-27
tags: []
---

## Relevant definitions

Full model
: This model contains all the independent variables you want to study given you
question of interest. **EX:** If your question of interest is "what are the
effects of `a, b, c` on `y`," then the full model would be `y ~ a + b + c`

Overfitting
: When a linear model reduces so much noise in the dataset that it makes the
model unable to find general relationship. This causes your model to only be
applicable to your exact dataset.

Nested models
: Models are nested when they contain some, but not all, of the same
independent variables.
For example `y ~ a + b` is a nested model of `y ~ a + b + c`.

Non-nested models
: Models are non-nested when they don't share **any** of the same independent
variables. For example, `y ~ a + b` and `y ~ c + d` are non-nested models.

## Full Model vs Model Selection

**NOTE:** Whether you decide to use a full model, or a model selection you
still need to be concerned with multicollinearity.

You need to decide whether to run the full model, or cut down on the amount of
predictor variables based on the following questions:

### Full Model

- Do you want to control for the variables you would cut out when doing model
  selection, even why they may not be important predictors of your dependent
  variable?
- Do you have a large sample size and **do not** have issue with power and
  overfitting?
- Are all variables theoretically important?
- Are you interested in the relationship between an unimportant variable and
  another variable?
- Have other studies shown one of your unimportant variables to have a large
  effect size on your dependent variable?
  - Do you want to see if you can replicate the effect size in your data set?

### Model Selection

- Do you have a small sample size and run into issues of power and overfitting
  when you include all dependent variables?
- Do you only care about predicting the dependent variable, and don't care
  about the interaction of unimportant variables?
- Do you have too many independent variables to effectively run and interpret
  the model?

## Comparing Models

Once you have decided on a few suitable models you can compare how accurate
they are along the following axes to determine which one you want to use. The
[adjusted R^2^](#adjusted-r2) and [AIC](#aic)
comparisons work on both nested, and non-nested models.

### Adjusted R^2^

- Run each of your models then compare the adjusted R^2^ values (**NOT** the
  Multiple R^2^ values).
  - You can extract the adjusted R^2^ value from the `summary` function via
    `summary(model)$adj.r.squared`.
- For this axis you want a higher adjusted R^2^ value as this shows that the
  independent variables explain **more** variation of your dependent variable.

### AIC

- **AKA: Akaike's Information Criterion**
- What the AIC represents is outside of the scope of this class however, we can
  still use the output to compare models.
- You want the model with the **lowest** AIC value.
  - You don't really care about small differences (< 5) in AIC.
- Calculate the AIC of a model by running the `AIC` function on the model -
  `AIC(model)`

### F test

**This model is not covered in detail in the class**

- Use this to tell if your models are significantly different.
- Calculate by running an [ANOVA](/anova.qmd) test on the different regression
  outputs.
