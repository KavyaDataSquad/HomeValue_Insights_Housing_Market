# HomeValue Insights | Housing Market

A descriptive analytics project exploring California housing records with Python, SQL, and Power BI. It examines house-value patterns alongside income, population, rooms, and ocean-proximity categories.

## Business questions
- How do median house values vary across ocean-proximity groups?
- How does median income relate to house values?
- What do population and room counts reveal about the dataset?
- Which segments warrant deeper affordability analysis?

## Dataset snapshot
- Records: **20,640**
- Average median house value: **$206,856**
- Median of median house values: **$179,700**

## Included assets
- `Housing_Market_Analytics.pbix`: Power BI Desktop report.
- `housing_queries.sql`: SQL analysis, including added grouped price/income analysis.
- `python_analysis.ipynb`: Python data cleaning and EDA.
- `housing.csv` and `cleaned_housing.csv`: source and prepared datasets.
- `housing_dashboard.png`: dashboard preview.
- `Reports/Housing_Market_Analysis.md`: recalculated descriptive analysis.

## How to explore
1. Load `cleaned_housing.csv` into MySQL and create the table using the supplied schema.
2. Run the notebook cells in sequence.
3. Open the PBIX in Power BI Desktop and refresh the dataset path if prompted.
4. Review the analysis notes and dashboard preview.

## Skills demonstrated
Python/Pandas, data cleaning, SQL aggregations and CASE expressions, Power BI, data visualization, exploratory analysis, descriptive statistics.

## Source note
Adapted portfolio version of the supplied Housing Price Analysis Dashboard project. Original dataset and report assets are retained and extended with analysis notes and SQL queries. Review upstream source attribution before redistribution.
