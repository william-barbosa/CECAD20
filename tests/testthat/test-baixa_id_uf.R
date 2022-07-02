testthat::test_that("df_uf works", {
  uf <- baixa_id_uf(dados_by_uf = T)
  testthat::expect_equal(nrow(uf),expected = 6,tolerance = 27) # Testa se a consulta é por região = 6 linhas ou UF = 27
  testthat::expect_s3_class(uf, 'tbl_df')
  testthat::expect_equal(ncol(uf),2)
})



