test_that("my_t_test works mathematically", {
  test_vector <- c(1:25)
  results <- my_t_test(test_vector, alternative = "less", mu = 14)
  expect_equal(results$test_stat, -0.6793662)
  expect_equal(results$df, 24)
  expect_equal(results$p_value, 0.251703)
})

test_that("my_t_test throws error when alternative is not two.sided, less, or greater", {
  test_vector <- c(1:25)
  expect_error(my_t_test(test_vector, alternative = "some string", mu = 0))
})
