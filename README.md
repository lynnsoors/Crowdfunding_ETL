<div class="description user_content "><div id="bootcamp">
  <img style="display: none;" src="https://static.bc-edx.com/data/dl-1-2/m13/lms/img/banner.png" alt="lesson banner">
  <p>For the ETL mini project, you will work with a partner to practice building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After you transform the data, you'll create four CSV files and use the CSV file data to create an ERD and a table schema. Finally, you’ll upload the CSV file data into a Postgres database.</p>
  <p>Since this is a one-week project, make sure that you have done at least half of your project before the third day of class to stay on track.</p>
  <p>Although you and your partner will divide the work, it’s essential to collaborate and communicate while working on different parts of the project. Be sure to check in with your partner regularly and offer support.</p>
  <h3>Files</h3>
  <p>Download the starter code and files to help you get started:</p>
  <p><a href="https://static.bc-edx.com/data/dl-1-2/m13/lms/starter/Starter_Files.zip">Project 2 ETL files</a></p>
  <h3>Before You Begin</h3>
  <ol>
    <li>
      <p>Create a new repository, named <code>Crowdfunding_ETL</code>, for this project. <strong>Do not add this homework to an existing repository</strong>.</p>
    </li>
    <li>
      <p>Clone the new repository to your computer.</p>
    </li>
    <li>
      <p>Rename the <code>ETL_Mini_Project_Starter_Code.ipynb</code> file with your first name initial and last name, for example, <code>ETL_Mini_Project_NRomanoff.ipynb</code>. Then, add this Jupyter notebook file and the Resources folder containing the <code>crowdfunding.xlsx</code> and the <code>contacts.xlsx</code> files to your repository.</p>
    </li>
    <li>
      <p>Push the changes to GitHub</p>
    </li>
  </ol>
  <h3>Instructions</h3>
  <p>The instructions for this mini project are divided into the following subsections:</p>
  <ul>
    <li>Create the Category and Subcategory DataFrames</li>
    <li>Create the Campaign DataFrame</li>
    <li>Create the Contacts DataFrame</li>
    <li>Create the Crowdfunding Database</li>
  </ul>
  <h4>Create the Category and Subcategory DataFrames</h4>
  <ol>
    <li>
      <p>Extract and transform the <code>crowdfunding.xlsx</code> Excel data to create a category DataFrame that has the following columns:</p>
      <ul>
        <li>
          <p>A "category_id" column that has entries going sequentially from "cat1" to "cat<em>n</em>", where <em>n</em> is the number of unique categories</p>
        </li>
        <li>
          <p>A "category" column that contains only the category titles</p>
        </li>
        <li>
          <p>The following image shows this category DataFrame:</p>
          <p>
            <img src="https://static.bc-edx.com/data/dl-1-2/m13/lms/img/category_DataFrame.png" alt="category DataFrame">
          </p>
        </li>
      </ul>
    </li>
    <li>
      <p>Export the category DataFrame as <code>category.csv</code> and save it to your GitHub repository.</p>
    </li>
    <li>
      <p>Extract and transform the <code>crowdfunding.xlsx</code> Excel data to create a subcategory DataFrame that has the following columns:</p>
      <ul>
        <li>
          <p>A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcat<em>n</em>", where <em>n</em> is the number of unique subcategories</p>
        </li>
        <li>
          <p>A "subcategory" column that contains only the subcategory titles</p>
        </li>
        <li>
          <p>The following image shows this subcategory DataFrame:</p>
          <p>
            <img src="https://static.bc-edx.com/data/dl-1-2/m13/lms/img/subcategory_DataFrame.png" alt="subcategory DataFrame">
          </p>
        </li>
      </ul>
    </li>
    <li>
      <p>Export the subcategory DataFrame as <code>subcategory.csv</code> and save it to your GitHub repository.</p>
    </li>
  </ol>
  <h4>Create the Campaign DataFrame</h4>
  <ol>
    <li>
      <p>Extract and transform the <code>crowdfunding.xlsx</code> Excel data to create a campaign DataFrame has the following columns:</p>
      <ul>
        <li>
          <p>The "cf_id" column</p>
        </li>
        <li>
          <p>The "contact_id" column</p>
        </li>
        <li>
          <p>The "company_name" column</p>
        </li>
        <li>
          <p>The "blurb" column, renamed to "description"</p>
        </li>
        <li>
          <p>The "goal" column, converted to the <code>float</code> data type</p>
        </li>
        <li>
          <p>The "pledged" column, converted to the <code>float</code> data type</p>
        </li>
        <li>
          <p>The "outcome" column</p>
        </li>
        <li>
          <p>The "backers_count" column</p>
        </li>
        <li>
          <p>The "country" column</p>
        </li>
        <li>
          <p>The "currency" column</p>
        </li>
        <li>
          <p>The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the <code>datetime</code> format</p>
        </li>
        <li>
          <p>The "deadline" column, renamed to "end_date" and with the UTC times converted to the <code>datetime</code> format</p>
        </li>
        <li>
          <p>The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame</p>
        </li>
        <li>
          <p>The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame</p>
        </li>
        <li>
          <p>The following image shows this campaign DataFrame:</p>
          <p>
            <img src="https://static.bc-edx.com/data/dl-1-2/m13/lms/img/campaign_DataFrame.png" alt="campaign DataFrame">
          </p>
        </li>
      </ul>
    </li>
    <li>
      <p>Export the campaign DataFrame as <code>campaign.csv</code> and save it to your GitHub repository.</p>
    </li>
  </ol>
  <h4>Create the Contacts DataFrame</h4>
  <ol>
    <li>
      <p>Choose one of the following two options for extracting and transforming the data from the <code>contacts.xlsx</code> Excel data:</p>
      <ul>
        <li>
          <p><strong>Option 1:</strong> Use Python dictionary methods.</p>
        </li>
        <li>
          <p><strong>Option 2:</strong> Use regular expressions.</p>
        </li>
      </ul>
    </li>
    <li>
      <p>If you chose Option 1, complete the following steps:</p>
      <ul>
        <li>Import the <code>contacts.xlsx</code> file into a DataFrame.</li>
        <li>Iterate through the DataFrame, converting each row to a dictionary.</li>
        <li>Iterate through each dictionary, doing the following:
          <ul>
            <li>Extract the dictionary values from the keys by using a Python list comprehension.</li>
            <li>Add the values for each row to a new list.</li>
          </ul>
        </li>
        <li>Create a new DataFrame that contains the extracted data.</li>
        <li>Split each "name" column value into a first and last name, and place each in a new column.</li>
        <li>Clean and export the DataFrame as <code>contacts.csv</code> and save it to your GitHub repository.</li>
      </ul>
    </li>
    <li>
      <p>If you chose Option 2, complete the following steps:</p>
      <ul>
        <li>Import the <code>contacts.xlsx</code> file into a DataFrame.</li>
        <li>Extract the "contact_id", "name", and "email" columns by using regular expressions.</li>
        <li>Create a new DataFrame with the extracted data.</li>
        <li>Convert the "contact_id" column to the integer type.</li>
        <li>Split each "name" column value into a first and a last name, and place each in a new column.</li>
        <li>Clean and then export the DataFrame as <code>contacts.csv</code> and save it to your GitHub repository.</li>
      </ul>
    </li>
    <li>
      <p>Check that your final DataFrame resembles the one in the following image:</p>
      <p>
        <img src="https://static.bc-edx.com/data/dl-1-2/m13/lms/img/contact_DataFrame_final.png" alt="final contact DataFrame">
      </p>
    </li>
  </ol>
  <h4>Create the Crowdfunding Database</h4>
  <ol>
    <li>
      <p>Inspect the four CSV files, and then sketch an ERD of the tables by using <a href="http://www.quickdatabasediagrams.com">QuickDBD</a>.</p>
    </li>
    <li>
      <p>Use the information from the ERD to create a table schema for each CSV file.</p>
      <p><strong>Note:</strong> Remember to specify the data types, primary keys, foreign keys, and other constraints.</p>
    </li>
    <li>
      <p>Save the database schema as a Postgres file named <code>crowdfunding_db_schema.sql</code>, and save it to your GitHub repository.</p>
    </li>
    <li>
      <p>Create a new Postgres database, named <code>crowdfunding_db</code>.</p>
    </li>
    <li>
      <p>Using the database schema, create the tables in the correct order to handle the foreign keys.</p>
    </li>
    <li>
      <p>Verify the table creation by running a <code>SELECT</code> statement for each table.</p>
    </li>
    <li>
      <p>Import each CSV file into its corresponding SQL table.</p>
    </li>
    <li>
      <p>Verify that each table has the correct data by running a <code>SELECT</code> statement for each.</p>
    </li>
  </ol>
  <h4>Hints</h4>
  <ul>
    <li>
      <p>To split each "category &amp; sub-category" column value into "category" and "subcategory" column values, use <code>df[["new_column1","new_column2"]] = df["column"].str.split()</code>. Make sure to pass the correct parameters to the <code>split()</code> function.</p>
    </li>
    <li>
      <p>To get the unique category and subcategory values from the "category" and "subcategory" columns, create a NumPy array where the array length equals the number of unique categories and unique subcategories from each column. For information about how to do so, see <a href="https://numpy.org/doc/stable/reference/generated/numpy.arange.html">numpy.arange</a> in the NumPy documentation.</p>
    </li>
    <li>
      <p>To create the category and subcategory identification numbers, use a list comprehension to add the "cat" string or the "subcat" string to each number in the category or the subcategory array, respectively.</p>
    </li>
    <li>
      <p>For more information about creating a new Pandas DataFrame, see the <a href="https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.html">pandas.DataFrame</a> in the Pandas documentation.</p>
    </li>
    <li>
      <p>To convert the "goal" and "pledged" columns to the <code>float</code> data type, use the <code>astype()</code> method.</p>
    </li>
    <li>
      <p>To convert the "launch_date" and "end_date" UTC times to the <code>datetime</code> format, see the <code>Transform_Grocery_Orders_Solved.ipynb</code> activity solution.</p>
    </li>
    <li>
      <p>For more information about how to add the "category_id" and "subcategory_id" unique identification numbers to the campaign DataFrame, see the <a href="https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.merge.html">pandas.DataFrame.merge</a> in the Pandas documentation.</p>
    </li>
