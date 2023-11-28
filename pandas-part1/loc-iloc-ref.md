## Pandas iloc and loc Methods

### iloc - Integer Location Indexing
- **Accessing Individual Rows**
  - `DataFrame.iloc[row_index]`: Access a row by its integer location.
  - Example: 
    ```python
    df.iloc[0]  # Accesses the first row
    ```

- **Slicing Rows**
  - `DataFrame.iloc[start_index:end_index]`: Access a range of rows.
  - Example: 
    ```python
    df.iloc[1:5]  # Accesses rows 2 to 5
    ```

- **Accessing Specific Columns**
  - `DataFrame.iloc[:, column_index]`: Access a specific column.
  - Example: 
    ```python
    df.iloc[:, 0]  # Accesses the first column of all rows
    ```

- **Slicing Rows and Columns**
  - `DataFrame.iloc[row_slice, column_slice]`: Access specific rows and columns.
  - Example: 
    ```python
    df.iloc[0:5, 1:3]  # Accesses rows 1-5 and columns 2-3
    ```

- **Boolean Indexing**
  - Use boolean conditions to filter rows.
  - Example: 
    ```python
    df.iloc[df['column'] > 10]  # Accesses rows where 'column' values are greater than 10
    ```

### loc - Label Location Indexing
- **Accessing Rows by Label**
  - `DataFrame.loc[label]`: Access rows by their label.
  - Example: 
    ```python
    df.loc['row_label']  # Accesses rows with the label 'row_label'
    ```

- **Slicing Based on Labels**
  - `DataFrame.loc[start_label:end_label]`: Access a range of rows by labels.
  - Example: 
    ```python
    df.loc['start_label':'end_label']  # Accesses a range of rows between specified labels
    ```

- **Accessing Specific Columns by Label**
  - `DataFrame.loc[:, 'column_label']`: Access a specific column by label.
  - Example: 
    ```python
    df.loc[:, 'column_name']  # Accesses a specific column
    ```

- **Slicing Rows and Columns by Label**
  - `DataFrame.loc[row_label_slice, column_label_slice]`: Access specific rows and columns by labels.
  - Example: 
    ```python
    df.loc['row1':'row3', 'column1':'column3']  # Accesses specific rows and columns
    ```

- **Conditional Selection**
  - Use conditions to filter data based on column values.
  - Example: 
    ```python
    df.loc[df['column'] > 10]  # Accesses rows where 'column' values are greater than 10
    ```

- **Setting Values with loc**
  - `DataFrame.loc[row_label, column_label] = new_value`: Assigns a new value to a specific cell.
  - Example: 
    ```python
    df.loc['row1', 'column1'] = 100  # Sets the value of a specific cell to 100
    ```

This cheat sheet provides a quick reference to the `iloc` and `loc` methods in Pandas, which are essential for data selection and manipulation based on position or label. These methods are particularly important for efficient data handling and analysis in Python.
