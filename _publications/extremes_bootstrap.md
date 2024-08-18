---
title: 'Bootstrapping block maxima estimators in time series'
collection: publications
permalink: /publication/extreme_bootstraps
excerpt: 'In this paper bootstrapping of block maxima estimators are considered. Consistency results, limit theorems are provivded. Large scale High Performance Cluster-powered simulation studies are conducted. The application is demonstrated via a case study involving S&P-500 log-returns.'
date: '2024-08-26'
venue: 'TBD'
citation: 'Bücher, A., Staud, T. (2024). &quot;Bootstrapping block maxima estimators in time series&quot; <i>TBD</i>'
show: 'Yes'
---

Empirical means of disjoint block maxima calculated from a stationary time series are recognized to have a larger asymptotic variance than their counterparts based on sliding block maxima. The asymptotic variance formula for sliding block maxima involves the covariance of a certain bivariate Marshall-Olkin copula, and its estimation presents a complex problem. Standard plug-in methods are only feasible when explicit calculations are possible. As an alternative, reliance on bootstrap approximations is proposed. It is shown that naive block-bootstrap approaches are inconsistent, and a consistent alternative is provided based on resampling circular block maxima. These are obtained by calculating sliding maxima on small blocks of blocks (for instance, twice the block size $r$) after repeating the first $r - 1$ observations in each such block of blocks. Additionally, it is demonstrated that the circular block maxima method shares the same asymptotic variance as the sliding block maxima method. The superiority of circular block maxima-based bootstrap methods over disjoint blocks-based methods is verified through large-scale simulation studies, and its usefulness is illustrated in a case study concerning S&P500 stock log-returns.


<!-- [PROJECT euclid entry](https://projecteuclid.org/journals/electronic-journal-of-statistics/volume-18/issue-2/Limit-theorems-for-non-degenerate-U-statistics-//of-block-maxima/10.1214/24-EJS2269.full), 
 #[arXiv entry](https://arxiv.org/abs/2308.13761) -->
