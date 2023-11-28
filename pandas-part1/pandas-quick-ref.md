## Pandas Methods Quick Reference Sheet

### Data Importing
- **Reading CSV Files**
  - `pd.read_csv(filepath_or_buffer)`: Reads a CSV file into a DataFrame.
  - Example: 
    ```python
    df = pd.read_csv('file.csv')
    ```

### DataFrame Basics
- **Viewing Data**
  - `DataFrame.head(n=5)`: Returns the first `n` rows.
  - `DataFrame.describe()`: Generates descriptive statistics.

- **Basic DataFrame Information**
  - `DataFrame.dtypes`: Returns the data types of each column.
  - `DataFrame.shape`: Returns the dimensions of the DataFrame.

### Column Operations
- **Renaming Columns**
  - `DataFrame.rename(columns=dict)`: Renames columns based on a provided dictionary.
  - Example: 
    ```python
    df.rename(columns={'old_name': 'new_name'}, inplace=True)
    ```

- **Adding and Dropping Columns**
  - `DataFrame.drop(labels, axis=1)`: Drops specified labels from columns.
  - Example: 
    ```python
    df.drop('column_name', axis=1, inplace=True)
    ```

### Data Cleaning
- **Handling Null Values**
  - `DataFrame.dropna()`: Drops rows with any null values.
  - `DataFrame.fillna(value)`: Fills null values with a specified value.

- **Removing Duplicates**
  - `DataFrame.drop_duplicates()`: Removes duplicate rows.

### Indexing and Selecting Data
- **`iloc` for Position-Based Indexing**
  - `DataFrame.iloc[]`: Purely integer-location based indexing.
  - Example: 
    ```python
    df.iloc[0]  # First row
    ```

- **`loc` for Label-Based Indexing**
  - `DataFrame.loc[]`: Accesses a group of rows and columns by labels.
  - Example: 
    ```python
    df.loc['index_label']
    ```

- **Setting an Index**
  - `DataFrame.set_index(keys)`: Sets the DataFrame index using existing columns.
  - Example: 
    ```python
    df.set_index('column_name', inplace=True)
    ```

### Data Analysis
- **Calculating Returns**
  - `Series.pct_change()`: Calculates the percentage change between the current and prior element.
  - Example: 
    ```python
    df['returns'] = df['price'].pct_change()
    ```

- **Cumulative Returns**
  - Cumulative returns calculation: `(1 + df['returns']).cumprod()`
  - Example: 
    ```python
    cumulative_returns = (1 + df['returns']).cumprod()
    ```

### Data Visualization
- **Basic Plotting**
  - `DataFrame.plot(kind='plot_type')`: Plots the data in the DataFrame.
  - Example: 
    ```python
    df['column'].plot(kind='line')
    ```
