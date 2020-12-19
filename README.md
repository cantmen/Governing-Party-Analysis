# GDP and Government Party Analysis 
This analysis shows GDP % growth in Canada from 1981 to 2019 while emphasising the governing party.

## Installation
 To run the code, install the packages ggplot2, magrittr, and tidyverse by using:
 ```install.packages()```
 
## Included Documents
The root folder of this project is GDP:GOV, which includes the required files GDP.csv and Gov.csv. 

GDP.csv has the data for gross domestic product at market prices in Canada from 1981 to 2019.
Gov.csv shows the governing parties in Canada from 1981 to 2019.

## Explanation
By merging data frame files of GDP and Government, I created a new file in order to visulaize both data sets together.

To be able to show how governing parties influenced GDP, I created a new data set that shows % growth rate of GDP throughout the years by using magrittr library.
![](Images/Gdp%20and%20Government%20Party.png)

The governing parties` influence on GDP can be seen from this plot: 

```ggplot(growth_rate, aes(x = Reference.period, y = Diff_growth, color = Government)) + geom_point(na.rm = TRUE) ```
![](Images/Gdp%20%25%20Change.png)
