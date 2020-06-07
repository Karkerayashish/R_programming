# Car Sale Advertisements

![](https://raw.githubusercontent.com/Karkerayashish/R_programming/master/Car_Sales_Advertisement/Car_Sale_Image.jpg)

------------
### Context

In this notebook, we will make use of some famous libraries used in **R - dplyr, tidyverse, ggplot & vtree** to perform data anlysis (EDA).

My goal during **EDA** is to develop an good understanding of the data. The easiest way to do this is to use questions as tools to guide your investigation. When you ask a question, the question focuses your attention on a specific part of your dataset and helps you decide which graphs, models or transformations to make.

------------
### Background Information

This dataset contains car sale advertisements which was collected for study/practice purposes in **2016**. Though there is couple well known car features datasets they seems quite simple and outdated. Car topic is really interesting. This dataset contains data for more than 9.5K cars sale in **Ukraine**. Most of them are used cars so it opens the possibility to analyze features related to car operation. At the end of the day I look at this data as a subset from all **Ukrainian** car fleet.

------------

### Data Acquisition & Description

------------

The dataset can be accessible <a href="https://github.com/Karkerayashish/R_programming/blob/master/Car_Sales_Advertisement/car_sales.csv">**here**</a>.


| Records  | Features  |
| ------------ | ------------ |
| 9576  | 10 |

|  Column | Description  |
| ------------ | ------------ |
|  car | manufacturer brand  |
|  price | seller’s price in advertisement (in USD)  |
| body  | car body type  |
|  mileage |  as mentioned in advertisement (‘000 Km) |
|  engV |rounded engine volume (‘000 cubic cm)   |
|  engType | type of fuel (“Other” in this case should be treated as NA)  |
| registration  |  whether car registered in Ukraine or not |
|  year | year of production  |
|  model |  specific model name |
| drive  | drive type  |

---
# **Data Pre-Processing**
---

- Identification & Handling of Missing Data
- Zero Data Identification & Handling
- Identification & Handling of Inconsistent Data Types


---
# **Exploratory Data Analysis**
---
#### Univariate Analysis

- *Question 1: What are the top selling cars?*
- *Question 2: What are the Preferred Body Type?*
- *Question 3: What are the Most preferred Engine Type?*
- *Question 4: What are the Car sales over the years?*
- *Question 1: What are the Most preferred Drive Type?*

#### Bivariate Analysis

- *Question 1:  How car price has varied over the years?*
- *Question 2: What are the Highest priced cars sold over the years?*
- *Question 3: What are the Registration of the cars over the years?*

---
# **Post Data Processing & Feature Selection**
---
- In this part we will create additonal variables from the existing variables and will perform some more anlysis.

##### Below are some of the analysis we have done using additonally created variables.

![](https://github.com/Karkerayashish/R_programming/blob/master/Car_Sales_Advertisement/PPT1.png)






