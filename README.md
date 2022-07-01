
<!-- README.md is generated from README.Rmd. Please edit that file -->

# CECAD20

<!-- badges: start -->
<!-- badges: end -->

Este pacote foi criado para a extração massiva de dados para que os
usuários não necessitem realizar de forma manual e assim agilizar suas
pesquisas. Basicamente é um webscraping do site
[CECAD20](https://cecad.cidadania.gov.br/sobre.php) – Consulta, Seleção
e Extração de Informações do CadÚnico. Este site é uma ferramenta que
auxilia na extração de informações do Cadastro Único, destaca-se que
este é uma ferramenta desenvolvida pelo Ministério da Cidadania.

-   As funções criadas são:
    -   Função selecionar e filtrar dados a nível de informação e
        região;
    -   Função para baixar os dados selecionados

## Instalação

Você pode baixar a versão em desenvolvimento do CECAD20 a partir de
[GitHub](https://github.com/) com:

``` r
# install.packages("devtools")
devtools::install_github("william-barbosa/CECAD20")
```

## Exemplo

This is a basic example which shows you how to solve a common problem:

``` r
#library(CECAD20)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
