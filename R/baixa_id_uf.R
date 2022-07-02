#' Baixa UF
#'
#' Essa função baixa UF ou regiões com os respectivos códigos para baixar os dados em outra função.
#' @param dados_by_uf é um argumento do tipo logical que se TRUE indica que a consulta será para os 27 estados, caso seja FALSE a consulta será por região Sul, Norte, Nordeste, Sudeste, Centro-Oeste e Brasil.
#'
#' @return tibble
#' @export
#'
baixa_id_uf <- function(dados_by_uf= TRUE){
  # Parte 1 - Verifica o status da consulta
  # Página a ser consultada
  pg <- 'https://cecad.cidadania.gov.br/agregado/resumovariavelCecad.php'

  #print(httr::GET(pg) %>% httr::status_code())

  # Criando parâmetros iniciais para a consulta por estado
  tbl_uf <- tibble::tibble(
    UF = pg %>% rvest::read_html() %>% xml2::xml_find_all("//*[@id='estadoSAGIUFMU']/option") %>% rvest::html_text() ,
    id = pg %>% rvest::read_html() %>% xml2::xml_find_all("//*[@id='estadoSAGIUFMU']/option") %>% rvest::html_attr('value')
  ) #%>%
  tbl_uf <-  {if(dados_by_uf==TRUE){
      dplyr::filter(tbl_uf, ! .data$id %in% c('','1','2','3','4','5','6'))
    }else{
      dplyr::filter(tbl_uf, .data$id %in% c('1','2','3','4','5','6'))
    }
    }

  return(tbl_uf)

}
