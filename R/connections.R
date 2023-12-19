#' @export
sanity.bq <- R6::R6Class(
  public = list(
    conn = NULL,
    initialize = function(project.name = Sys.getenv("BQ_PROJECT"),
                          dataset.name = Sys.getenv("BQ_DATASET")) {
      self$conn = DBI::dbConnect(
        bigrquery::bigquery(),
        project = project.name,
        dataset = dataset.name
      )
    },
    query = function(q) {
      DBI::dbGetQuery(self$conn, q)
    }
  )
)
