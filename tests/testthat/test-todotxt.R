context("test-todotxt.R")

# GET("http://todotxt.org/todo.txt") %>%
#  content("text") %>% dput()

reticulate::use_python("/usr/bin/python3", required = TRUE)

todotxtorg_demo <- todotxt("(A) Call Mom @Phone +Family\n(A) Schedule annual checkup +Health\n(B) Outline chapter 5 +Novel @Computer\n(C) Add cover sheets @Office +TPSReports\nPlan backyard herb garden @Home\nPick up milk @GroceryStore\nResearch self-publishing services +Novel @Computer\nx Download Todo.txt mobile app @Phone\n")

test_that("multiplication works", {
  expect_equal(class(todotxtorg_demo), c("tbl_df", "tbl", "data.frame"))
})
