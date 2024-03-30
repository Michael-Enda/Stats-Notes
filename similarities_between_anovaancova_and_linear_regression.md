---
title: Similarities Between Anovaancova And Linear Regression
date: 2024-03-30
tags: []
---

## Comparison of ANOVA, ANCOVA, and linear regression

### Similarities

[ANOVA](/anova.qmd), ANCOVA, and [Linear Regression](/linear_regression.qmd)
all use the same mathematical model:

- Multiple Regression Model: $Y_i = \beta_0 + \beta_1 X_{1i} + \beta_2 X_{2i} +
\epsilon_i$
- ANOVA Special Case: $Y_{ijk} = \mu + \alpha_{j} + \beta_{k} + \epsilon_{ijk}$
  - Where:
    - $\beta_0 = \mu$
    - $\beta_1 = \alpha$
    - $\beta_2 = \beta$

### Differences

- Linear Regression
  - Follows the assumption of [linear regressions](/linear_regression.qmd#assumptions)
  - **Do not** need to run a post hoc test
  - Lose out on pairwise compaisons of groups.
    - Can only compare independent variables to one group (which is the
      intercept)
  - Use when you are interested in understanding the effect of both the
    continuous and categorical variable on the dependent variable of interest.
- ANCOVA ([ANOVA](/anova.qmd))
  - Follows the assumptions of [ANCOVA](#assumptions-of-ancova-test), or
    [ANOVA](/anova.qmd#assumptions-of-anova-test)
  - **Must** run a post hoc test to determine which groups are different.
  - Returns pairwise comparisons.
  - Use when you want to see whether the dependent variable of interest is
    different between two or more groups, after controlling for a continuous
    factor.
