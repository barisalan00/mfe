# Migration Flows to Europe

**Baris Alan**  
*Final Data Science Tutorial — CMPS 6790 / Data Science*  
Prof. Nicholas Mattei

## Table of Contents

- [Project Overview](#project-overview)
- [Project Goals](#project-goals)
- [Datasets](#datasets)
- [ETL Pipeline](#etl-pipeline)
- [Exploratory Analysis](#exploratory-analysis)
- [Data Transformation](#data-transformation)
- [Statistical Modeling](#statistical-modeling)
- [Key Findings](#key-findings)
- [Conclusion & Future Work](#conclusion--future-work)
- [Online Access & Resources](#online-access--resources)

---

## Project Overview

This project presents a comprehensive analysis and visualization of migration flows to the European Union (EU) from regions outside Europe. Leveraging a combination of official and third-party datasets, the project examines the demographic and socio-economic characteristics of migrants, the countries of origin and destination, and the primary migration routes and transit countries.

## Project Goals

1. **Descriptive Analysis:** Explore and visualize the scale, age, and gender structure of migration flows to the EU.
2. **Determinants of Migration:** Statistically assess the impact of economic, political, conflict-related, climate, and demographic factors on migration flows using regression analysis.
3. **Methodological Contribution:** Develop a robust and reproducible data pipeline for merging, cleaning, and analyzing migration and contextual datasets.

## Datasets

The project integrates multiple datasets from international sources:

- **Eurostat**: Annual immigration by age group, sex, and citizenship for EU member states (2022).
- **Datahub.io / World Bank**: Country codes (ISO2 and ISO3) for merging and matching purposes.
- **World Bank**: GDP per capita (PPP), Multidimensional Poverty Measure (MPM), and World Governance Indicators.
- **ACLED (Armed Conflict Location & Event Data Project)**: Country-level fatalities from battles, riots, and violence against civilians.
- **Germanwatch**: Climate Risk Index scores.
- **CIA World Factbook**: Country population estimates.

## ETL Pipeline

- **Extraction**: All datasets are imported and previewed for completeness.
- **Transformation**: Variables are standardized, redundant columns removed, and countries matched using ISO codes.
- **Loading & Cleaning**: Data is merged to create a unified panel, missing values are imputed using logical or statistical methods (e.g., group means, external sources), and extreme outliers are flagged.

## Exploratory Analysis

- **Total Migration Flows**: In 2022, approximately 7 million migrants entered EU-27 countries, with 4.8 million originating from outside the EU.
- **Top Destinations**: Germany, Spain, France, and Italy are the leading destinations, but some country-level data is withheld in official releases.
- **Gender & Age**: Slightly more male migrants; over 50% are under 34 years old, highlighting the youthfulness of recent migration waves.
- **Top Sending Countries**: Ukraine, Colombia, Morocco, Venezuela, Peru, India, and China dominate flows, reflecting current crises and global patterns.

## Data Transformation

- **Imputation**: Missing values for key indicators (GDP per capita, MPM, governance, climate risk) are filled using income group averages, external data, or sensible constants.
- **Feature Engineering**: Composite variables are created for conflict (weighted sum of fatalities from battles, riots, violence), governance quality (sum of six WB estimates), and income groupings.
- **Filtering**: Only observations with country-level information are retained for analysis.

## Statistical Modeling

### 1. **Exploratory Visualization**
- Scatterplots and regression lines visualize bivariate relationships between migration flows and each explanatory variable.
- Correlation heatmaps summarize inter-variable associations.

### 2. **Multiple Linear Regression**
- Predictors: GDP per capita, Multidimensional Poverty, Conflict Fatalities, Governance, Climate Risk, Population
- **Model Fit**: Adjusted R-squared ≈ 0.37
- **Key Result**: Conflict-related fatalities show a statistically significant, positive effect on migration flows; other predictors are not significant at the 0.05 level.

### 3. **Model Diagnostics**
- Residuals satisfy normality and autocorrelation assumptions, but there is some evidence of heteroscedasticity.
- Autocorrelation (Durbin-Watson ≈ 1.98) suggests residual independence.

## Key Findings

- **Conflict is King**: Conflict fatalities (especially battles) are the strongest and most consistent predictor of increased migration flows to the EU.
- **Poverty & Governance**: While higher poverty rates and lower governance scores are associated with increased migration, their effects are not statistically significant in the multivariate model.
- **Demography**: Sending country population size does not significantly predict migration outflows after accounting for other variables.
- **Data Gaps**: Incomplete country-level data from Eurostat and other sources limits the precision of country-specific analysis.

## Conclusion & Future Work

This project demonstrates the value of integrating diverse datasets to better understand international migration. The robust effect of conflict on migration underscores the need for peace-building and humanitarian interventions in source countries. 

**Next Steps:**
- Incorporate spatial factors (e.g., distance, shared borders, language/culture).
- Apply machine learning (e.g., KNN regression, random forests) to improve predictive accuracy.
- Extend analysis to time series, if multi-year data is acquired.

---

## Online Access & Resources

- **GitHub Repository:** [barisalan00.github.io](https://github.com/barisalan00/barisalan00.github.io)
- **Data Sources**: See `/data/` subfolder for full documentation and links to all raw sources.

*For any questions, feedback, or collaboration inquiries, please contact [Barış Alan](mailto:your-email@domain.com).*

---

*This project is submitted as the final tutorial for CMPS 6790 / Data Science (Fall 2024).*
