baixa_id_uf <- function(dados_by_uf= TRUE){
  # Parte 1 - Verifica o status da consulta
  # Página a ser consultada
  pg <- 'https://cecad.cidadania.gov.br/agregado/resumovariavelCecad.php'

  #print(httr::GET(pg) %>% httr::status_code())

  # Criando parâmetros iniciais para a consulta por estado
  tbl_uf <- tibble::tibble(
    UF = pg %>% rvest::read_html() %>% xml2::xml_find_all("//*[@id='estadoSAGIUFMU']/option") %>% rvest::html_text() ,
    id = pg %>% rvest::read_html() %>% xml2::xml_find_all("//*[@id='estadoSAGIUFMU']/option") %>% rvest::html_attr('value')
  ) %>%
    {if(dados_by_uf==TRUE){
      dplyr::filter(., ! id %in% c('','1','2','3','4','5','6'))
    }else{
      dplyr::filter(., id %in% c('1','2','3','4','5','6'))
    }
    }

  return(tbl_uf)

}
