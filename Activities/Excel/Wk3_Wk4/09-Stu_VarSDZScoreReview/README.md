# Variance, Standard Deviation and Z-Score Review

It is now your turn to practice summarizing the variability of a data set using heart disease death rate data from the CDC. This data is unchanged from its source, and requires some cleaning before our calculations.

## Instructions

* Open the [variance_review.xlsx](Unsolved/Variance_Review_Unsolved.xlsx) workbook that contains your raw data.

* Since the dataset needs to be cleaned up, start with making a copy of the worksheet, which you will work on cleaning. This way, if you make any mistakes, you will have a backup of the original dataset.

* Cleaning up the dataset:

  * `Data_Value` refers to death rate per 100,000. Rename the column to `Death Rate Per 100,000`.

  * This column contains some cells with missing data, so add a filter to the column that displays all rows except `(blanks)`.

  * This dataset has death rates separated out by gender and race/ethnicity, but the raw data uses `Stratification1` and `Stratification2` for these columns, so rename those to "Gender" and "Race/Ethnicity" respectively. Rename `LocationAbbr` to "State".

  * Upon first glance the data appears to be at the county level and sorted alphabetically by state. However, if you scroll down far enough, you can see this is not actually the case. The `GeographicLevel` column includes both "state" and "county" as a value. "State" and "county" values should not be compared together, so this will need to be filtered also.

* Create a new sheet in the workbook and name the sheet "Summary Table".

  * If you are uncertain how to make a new sheet in an Excel workbook, refer to [this](https://support.office.com/en-ie/article/insert-or-delete-a-worksheet-19d3d21e-a3b3-4e13-a422-d1f43f1faaf2) Microsoft Office support page.

* Within the new sheet, create a `State` column, which contains the following states:

  * `AR` - Arkansas

  * `CA` - California

  * `FL` - Florida

  * `ME` - Maine

  * `MS` - Mississippi

  * `OR` - Oregon

* For each state, determine the **mean**, **variance** and **standard deviation** for the overall death rate.

**NOTE**: Be careful not to include the rows that separate the data by Gender or Race/Ethnicity. You may want to include some additional filters.

* Based upon your calculated summary statistics, determine which state had the greatest difference in death rate across all of its counties.

* Based upon your calculated summary statistics, determine which state had the lowest variance in death rate. What was the death rate?

* Create a new sheet in the workbook and name the sheet "Oregon Z-Scores".

* Within this new sheet, copy over the `LocationDesc` (renamed to "County") and `Death Rate Per 100,000` columns from the raw data for only the state `OR` where `Gender` is "Overall".

* Calculate the **z-score** for the overall death rate by county across the whole state.

* Based upon your calculated z-scores, determine which county had the largest difference in death rate from the mean of the state.

**NOTE**: Filtering data out does not prevent these cells from being included in calculated ranges. Whilst the instructions above are all states without missing data, be aware that if you attempt the same calculations on some of the other states using cell ranges, you may calculate incorrect solutions.

## References

* Centers for Disease Control and Prevention (2018), Heart Disease Mortality Data Among US Adults (35+) by State/Territory and County [https://healthdata.gov/dataset/Heart-Disease-Mortality-Data-Among-US-Adults-35-by/rfd6-zy3v](https://healthdata.gov/dataset/Heart-Disease-Mortality-Data-Among-US-Adults-35-by/rfd6-zy3v)
