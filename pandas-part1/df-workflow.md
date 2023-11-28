## Pandas DataFrame Workflow

### 1. Glance
- **Objective:** Getting a quick overview of the dataset.
- **Common Methods:**
  - `DataFrame.head()`: Views the first few rows of the DataFrame.
    - Example: `df.head()`
  - `DataFrame.tail()`: Views the last few rows.
    - Example: `df.tail()`
  - `DataFrame.info()`: Provides a concise summary of the DataFrame.
    - Example: `df.info()`
  - `DataFrame.describe()`: Generates descriptive statistics.
    - Example: `df.describe()`

### 2. Data Cleaning
- **Objective:** Preparing data for analysis by handling missing values, duplicates, and correcting data types.
- **Common Methods:**
  - `DataFrame.dropna()`: Removes missing values.
    - Example: `df.dropna(inplace=True)`
  - `DataFrame.fillna()`: Fills missing values.
    - Example: `df.fillna(0, inplace=True)`
  - `DataFrame.drop_duplicates()`: Removes duplicate rows.
    - Example: `df.drop_duplicates(inplace=True)`
  - `DataFrame.astype()`: Converts data types.
    - Example: `df['column'] = df['column'].astype('int')`

### 3. Zoom In
- **Objective:** Detailed inspection of specific segments of the data.
- **Common Methods:**
  - `DataFrame.loc[]`: Accesses data based on label.
    - Example: `df.loc['row_label']`
  - `DataFrame.iloc[]`: Accesses data based on integer location.
    - Example: `df.iloc[0]`
  - `DataFrame.groupby()`: Groups data for aggregated calculations.
    - Example: `df.groupby('column').mean()`

### 4. Visualize the Data
- **Objective:** Creating visual representations of data trends and relationships.
- **Common Methods:**
  - `DataFrame.plot()`: Basic plotting of data.
    - Example: `df.plot(kind='line')`
  - `DataFrame.hist()`: Creates histograms.
    - Example: `df['column'].hist()`
  - `DataFrame.boxplot()`: Creates boxplots.
    - Example: `df.boxplot(column='column')`

### 5. Filter, Slice, Reshape, Extend
- **Objective:** Tailoring the dataset for specific analysis.
- **Common Methods:**
  - Boolean Indexing: Filters data based on conditions.
    - Example: `df[df['column'] > 10]`
  - `DataFrame.merge()`: Combines DataFrames.
    - Example: `df.merge(df2, on='key')`
  - `DataFrame.concat()`: Concatenates DataFrames.
    - Example: `pd.concat([df1, df2])`
  - `DataFrame.pivot()`: Reshapes or pivots data.
    - Example: `df.pivot(index='row', columns='column')`

### 6. Gain Insights
- **Objective:** Deriving meaningful conclusions from the data.
- **Common Methods:**
  - `Series.value_counts()`: Counts occurrences of unique values.
    - Example: `df['column'].value_counts()`
  - `DataFrame.corr()`: Calculates correlation between columns.
    - Example: `df.corr()`
  - Custom Aggregations: Apply custom functions for specific insights.
    - Example: `df['column'].apply(custom_function)`

