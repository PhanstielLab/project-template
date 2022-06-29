# project-template

This is a template for R analysis projects for the Phanstiel lab.

## What to put in this file

The README contains information about your project, but most importantly, it contains information about how the raw data was generated in this project.

## Makefile

The `Makefile` is like a recipe book that describes the desired output files, the input files used to make them and the instructions for transforming inputs into outputs. Everytime you create an output file of any type, make sure to add it to the `Makefile`. This ensures that file changes and scripts can be recreated which ensures reproducibility. Resources for learning GNU make:

-   <https://www.gnu.org/software/make/manual/make.html>

-   <https://www3.nd.edu/~zxu2/acms60212-40212/Makefile.pdf>

## Directory organization

-   `data`
    -   Contains all "processed" data for the project. Whether data is "processed" is subjective, however, we conider data to be processed if it was produced by an Rscript. Since the `Makefile` will generate the contents of this folder, files should not be tracked by git (add to `.gitignore`).
-   `data/raw`
    -   Contains all input files needed for analysis that are not produced in this project. Example would be loop calls, `.hic` files, and other large data. Contents can be suborganized into folders as desired. Since these files are typically large, files are not tracked through git (add to .gitignore). However, these files should not be deleted since they are used to generate all processed data in the analysis.
-   `scripts`
    -   Scripts contain all R scripts and functions that are used to generate output data objects, plots, and tables. **Everything in this folder should be tracked with git** to ensure reproducibility. For convenience we suggest using the following subdirectories:

        -   `scripts/processing`

            -   Processing data to create data objects. Files typically begin with "make" and correspond to an object in `data` (e.g. `scripts/processing/makeObject1.R` produces `data/object1.rds`).

        -   `scripts/analysis`

            -   Whenever you are using data objects to create a plot, table, report it should be placed in this folder. (e.g. `scripts/analysis/surveyPlot1.R` produces `plots/surveyPlot1.pdf`).

        -   `scripts/utils`

            -   Keep R functions that are used in more than one file here. Access them in other scripts by using the `source()` function.
-   `plots`
    -   Output plots from `scripts/processing`. Can be suborganized into folders as desired. Since the `Makefile` will generate the contents of this folder, files should not be tracked by git (add to `.gitignore`).
-   `tables`
    -   Output tables from `scripts/processing`. Can be suborganized into folders as desired. Since the `Makefile` will generate the contents of this folder, files should not be tracked by git (add to `.gitignore`).
-   `renv`
    -   Folder for `renv` package that keeps track of R packages (and their versions) used in your project. For more information about `renv` check out the documentation: <https://rstudio.github.io/renv/articles/renv.html>
