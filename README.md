# 🚀 Cucumber Test Execution Guide
## 📁 Clone the Project
```bash
git clone https://github.com/DayanAguilar/Automatizacion.git
cd Automatizacion 
```
#Preconditions you have to make sure that you have installed ruby on your pc
```bash
ruby -v
```
Install these dependencies on ruby 
```bash
gem install cucumber
gem install capybara
gem install selenium-webdriver
gem install selenium
gem install rspec
gem install capybara-screenshot
```
## Execute Tests

To run tests for a specific feature, use the following command:

```bash
cucumber .\features\{feature_name}
```

Replace `{feature_name}` with the name of the feature you want to execute.

## Generate HTML Report

To generate a detailed HTML report of the test execution, run:

```bash
cucumber --format html --out reports/report.html
```

To run the feature without summary

```bash
cucumber .\features\{featureName} --publish-quiet
```
This will output the report to the `reports` folder in your project, specifically in the `report.html` file.
