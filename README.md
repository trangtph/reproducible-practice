# Tulip project PMHD

This is an exercise for the course "Best Practice in writing reproducible code". This project aims to analyse data from an agriculture experiment to determine what chemical compounds can preserve the freshness of cut roses for the longest time. For more details on the experiment and analysis plan, please refer to the `PMHD study protocol` file under the `docs` folder.

## Configuration
- The code for the analysis is written in `R` version 4.3.2.
- The results were generated using `R Studio` version 2023.09.01.
- The installation and loading of packages needed for the analysis are included in the R script.

## Project Structure

The project structure distinguishes three kinds of folders:
- read-only (RO): not edited by either code or researcher
- human-writeable (HW): edited by the researcher only.
- project-generated (PG): folders generated when running the code; these folders can be deleted or emptied and will be completely reconstituted as the project is run.


```
.
├── .gitignore
├── CITATION.cff
├── LICENSE
├── README.md
├── requirements.txt
├── data               <- All project data, ignored by git
│   ├── processed      <- The final, canonical data sets for modeling. (PG)
│   ├── raw            <- The original, immutable data dump. (RO)
│   └── temp           <- Intermediate data that has been transformed. (PG)
├── docs               <- Documentation notebook for users (HW)
│   ├── manuscript     <- Manuscript source, e.g., LaTeX, Markdown, etc. (HW)
│   └── reports        <- Other project reports and notebooks (e.g. Jupyter, .Rmd) (HW)
├── results
│   ├── figures        <- Figures for the manuscript or reports (PG)
│   └── output         <- Other output for the manuscript or reports (PG)
└── R                  <- Source code for this project (HW)

```

## Usage
To run the analysis, first open the `Tulip project.Rproj` in the main folder, using `R Studio`. Secondly, open the file `Analysis_Tulip_Final.Rmd` in the sub-folder `R`. Then run the code chunks in the order that they appears in the Rmd file. To render the report, click `knit` on your R Studio toolbar. 


## License

This project is licensed under the terms of the [MIT License](/LICENSE).
