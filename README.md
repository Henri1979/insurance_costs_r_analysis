# Insurance Cost Analysis

Detta projekt analyserar vilka faktorer som påverkar försäkringskostnader med hjälp av R.

## Projektstruktur

- `data/` innehåller datasetet  
- `scripts/` innehåller analysskripten  
- `figures/` innehåller sparade visualiseringar  
- `report/` innehåller Quarto-rapport och PDF  
- `run_analysis.R` kör hela analysen från början till slut  

## Analyssteg

1. Dataförståelse  
2. Datastädning  
3. Beskrivande analys  
4. Regressionsmodellering  
5. Modelljämförelse  
6. Slutrapport  

## Hur projektet körs

Öppna `run_analysis.R` och kör filen för att genomföra hela analysen.

För att skapa slutrapporten:

1. Öppna `report/insurance_report.qmd`
2. Rendera till PDF

## Paket som används

- tidyverse  
- knitr  
- broom  

## Viktigaste resultat

De faktorer som hade störst påverkan på försäkringskostnader var:

- Rökning  
- Kronisk sjukdom  
- BMI  
- Ålder  

Modell 2 presterade bättre än Modell 1 baserat på R-squared-värden.