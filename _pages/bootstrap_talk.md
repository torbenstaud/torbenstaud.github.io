---
layout: archive
title: "Bootstrapping Block Maxima Estimators"
collection: talks
type: "Talk"
permalink: /talks/bst_talk
date: 2024-12-14
location: "London, United Kingdom"
---

I gave a talk on our research topic of bootstrapping block maxima estimators at the 18th International Joint Conference on Computational and Financial Econometrics (CFE) and Computational and Methodological Statistics (CMStatistics) 2024 in London: [Link to the slides](../files/bst_talk.pdf).    

**Abstract**
Empirical means of disjoint block maxima calculated from a stationary time series are recognized to have a larger asymptotic variance than their counterparts based on sliding block maxima. The asymptotic variance formula for sliding block maxima involves the covariance of a certain bivariate Marshall-Olkin copula, and its estimation presents a complex problem. Standard plug-in methods are only feasible when explicit calculations are possible. As an alternative, reliance on bootstrap approximations is proposed. It is shown that naive block-bootstrap approaches are inconsistent, and a consistent alternative is provided based on resampling circular block maxima. These are obtained by calculating sliding maxima on small blocks of blocks (for instance, twice the block size $r$) after repeating the first $r - 1$ observations in each such block of blocks. Additionally, it is demonstrated that the circular block maxima method shares the same asymptotic variance as the sliding block maxima method. The superiority of circular block maxima-based bootstrap methods over disjoint blocks-based methods is verified through large-scale simulation studies, and its usefulness is illustrated in a case study concerning precipitation at a fixed location.