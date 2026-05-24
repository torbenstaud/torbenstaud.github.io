---
title: 'PhD Thesis: On the Sliding Block Maxima Method in Extreme Value Statistics'
collection: publications
permalink: /publication/phd_thesis
excerpt: 'In this thesis novel results on both the sliding and disjoint block maxima method are presented.'
date: '2024-11-25'
venue: 'Ruhr-University Bochum'
citation: 'Staud, T. (2025). &quot On the Sliding Block Maxima Method in Extreme Value Statistics &quot;'
type: 'Thesis'
supervisor: 'Prof. Axel Bücher, Prof. Johan Segers'
---

# Abstract

## What is this thesis about?

Extreme events play an important role in many real-world applications — for example heavy rainfall, financial crashes, or unusually large technical loads. To better understand and quantify such rare events, this thesis studies statistical methods for analyzing so-called *extreme values*.

A classical approach divides data into blocks and only considers the largest observation within each block (*block maxima method*). More recent approaches use overlapping blocks instead of completely separate ones (*sliding blocks*). This allows more information from the data to be used and can lead to substantially more precise statistical estimates.

---

# Main Contributions

## Advantages of Sliding Blocks

The thesis systematically shows that the sliding block maxima method outperforms the classical disjoint block approach in many situations:

- lower statistical uncertainty,
- comparable levels of bias,
- more stable estimation for dependent data such as time series.

To establish these results, the thesis develops general mathematical theory for broad classes of estimators, including methods based on U-statistics from non-parametric statistics. The quotient of estimation MSEs of disjoint block vs sliding block mostly looks like this:
![MSE quotient for mean estimation](/images/asy_var_quot_mean.png)

---

# Applications

The theoretical findings are applied to several important problems, including:

- estimation of extreme value characteristics,
- measuring dependence between extreme events (*tail dependence*),
- analysis of non-stationary time series,
- applications to precipitation data.

Large-scale Monte Carlo simulation studies are conducted throughout the thesis and confirm the theoretical advantages of the sliding block approach in practical finite-sample settings.

---

# New Bootstrap Methods

Another major contribution is the development of new consistent bootstrap procedures designed specifically for block maxima estimators. These methods allow practitioners to:

- quantify estimation uncertainty,
- construct confidence intervals,
- estimate variances in a practical and reliable way.

Importantly, the proposed bootstrap methods avoid the additional tuning parameters that are often required in bootstrap procedures for time series data. Opposing the belief that naive bootstrapping also works for sliding blocks, it is shown and also visualized in simulation studies that a new approach (*circular block maxima*) is mandatory to consistently approximate the unknown error-distribution.
![Consistent circular bootstrap vs inconsistent naive sliding bootstrap](/images/bootstrap_intro-1.png)

The thesis also proves the mathematical consistency and asymptotic normality of these new methods.

---

# Theoretical Contribution

Finally, the thesis solves an open mathematical problem related to the well-known *Marshall–Olkin bivariate exponential distribution*. This result provides a new proof explaining why sliding block estimators are fundamentally more efficient than classical disjoint block estimators.

---

# Summary

This thesis develops new theoretical and practical tools for the statistical analysis of extreme events. Overall, the results demonstrate that:

> Sliding block maxima methods provide more precise and statistically efficient inference than classical disjoint block approaches in a wide range of applications.
