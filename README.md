# Cucumber Test Execution

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

This will output the report to the `reports` folder in your project, specifically in the `report.html` file.
