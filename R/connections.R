#' @export
sanity.bq <- R6::R6Class(
  public = list(
    conn = NULL,
    initialize = function() {
      self$conn = DBI::dbConnect(
        bigrquery::bigquery(),
        project = Sys.getenv("BQ_PROJECT"),
        dataset = Sys.getenv("BQ_DATASET")
      )
    },
    query = function(q) {
      DBI::dbGetQuery(self$conn, q)
    }
  )
)
