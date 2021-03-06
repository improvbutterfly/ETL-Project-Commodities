## ETL-Project: Extract, Transform & Load --- Commodities
## By: The Git Pandas- Kelsey Cox, Stanley Tan, Dominica Corless, Jeremy Steele & Jeremy Jang

For our ETL project, we decided to think literally and deeply about what data was best to **'Extract'** and **'Tranfsorm'**.
<br>And what better time to salute the land of opportunity than election month? :metal: </br>
<br>The United States is known for EXTRACTING and TRANSFORMING its rich and abundant natural resources and more simply put, ***hot COMMODITIES***. :wink:</br>

Commodities are economic goods that hold physical and functional value and have been actively traded in global commodity markets for decades.
<br>We decided to focus our ETL project on our nation's most popular commodities, since they are in essence extracted and transformed themselves!</br>
<br>We will be 'ETL-ing' our data on the following commodities: **Precious Metals, Natural Gas, and Agriculture staples including Livestock and Crops.**</br>

## Obtaining Data 

Each member of the group was responsible for a different commodity.  We downloaded CSVs from economic and government websites(Macrotrends.net, Tradingeconomics.com, Worldbank.org
investing.com). We used the Quandl API to get metal and energy data.  The process can be found [here](https://github.com/improvbutterfly/ETL-Project-Commodities/blob/writing/data/energy/Process/energy_api/Quandl_Energy_API.ipynb). 

## Technical Report

### Database Design

We chose to use a PostgreSQL database for our collected data.

#### Entity Relationship Diagram
![ERD part 1](images/commodities_db_ERD_part1.png)
![ERD part 2](images/commodities_db_ERD_part2.png)

### Transformation and Loading Information into Postgres

After the extraction proccess, we loaded each of the CSVS into a Postgres Admin. The CSVs had to be cleaned by dropping null values and pairing down the columns to the date and price. Since we were using a SQL database we needed to rename the columns to make sure the case and column name matched the Schema. The Jupyter Notebook can be found [here](https://github.com/improvbutterfly/ETL-Project-Commodities/blob/main/database/Database_Insertion.ipynb).


### Accessing and Graphing Data

![Reading from the database](images/database_read_palmoil_rubber.png)
![Plotting Rubber and Palm Oil](images/palmoil_rubber.png)
![Plotting Crude Oil and Stocks](images/Crude_oil_vs_ceo.png)

Because we only used one database, any additional stock data was obtained from the RapidAPI was used referenced [here](https://github.com/improvbutterfly/ETL-Project-Commodities/blob/writing/data/energy/Process/stocks_api/Rapid_API_Stock_Call.ipynb). 

## Precious Metals:
"In America, the streets are paved in Gold!" - Anonymous
<br># Precious Metals: :moneybag:
<br>Precious metals like gold, silver, platinum and palladium prove to be dependable investments and hold industrial value so they are actively traded in global markets.</br>
<br>Kelsey used data from Quandl and pulled APIs for gold (AU), silver (AG), platinum (PT) and palladium (PD). The APIs provided daily fixing prices (globally recognized prices) from Monday 1/4/1999 to Friday 11/6/2020. Kelsey JSONified her APIS and used Pandas to create and clean the dataframes in order to provide the date and price (USD) for each trading day.</br> 

Sources: Quandl APIs
* https://www.quandl.com/data/LBMA/GOLD-Gold-Price-London-Fixing
* https://www.quandl.com/data/LBMA/SILVER-Silver-Price-London-Fixing
* https://www.quandl.com/data/LPPM/PALL-Palladium-Fixing
* https://www.quandl.com/data/LPPM/PLAT-Platinum-Fixing


## Natural Gas:
“Natural gas is a feedstock in basically every industrial process.” - Aubrey McClendon :fuelpump:

## Agriculture:
"Agriculture is the most healthful, most useful and most noble employment of man." - George Washington. :corn:
<br>"Once you kill a cow, you gotta make a burger." - Dean Koontz :cow2: </br> 
<br>"We really owe a great deal to the rubber tree." - Mechai Viravaidya  :factory: </br>

## Other Commodities

Sources:
* Palm Oil -
<br>International Monetary Fund, Global price of Palm Oil [PPOILUSDM], retrieved from FRED, Federal Reserve Bank of St. Louis; [https://fred.stlouisfed.org/series/PPOILUSDM](https://fred.stlouisfed.org/series/PPOILUSDM), November 9, 2020.
* Rubber -
<br>International Monetary Fund, Global price of Rubber [PRUBBUSDM], retrieved from FRED, Federal Reserve Bank of St. Louis; [https://fred.stlouisfed.org/series/PRUBBUSDM](https://fred.stlouisfed.org/series/PRUBBUSDM), November 8, 2020.

