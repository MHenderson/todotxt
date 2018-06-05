#' Parse todo.txt files
#'
#' @param todos Path to todo.txt file
#'
#' @importFrom magrittr %>%
#'
#' @return Todo list as a tibble.
#' @export
todotxt <- function(todos) {

  todo_dict <- todos %>%
    todotxtio$from_string() %>%
    todotxtio$to_dicts()

  todo_dict %>%
    roomba::roomba(c("text", "completed", "completion_date", "priority", "creation_date")) %>%
    dplyr::mutate(
      context = roomba::replace_null(purrr::map(todo_dict, "contexts")),
      projects = roomba::replace_null(purrr::map(todo_dict, "projects")),
      tags = roomba::replace_null(purrr::map(todo_dict, "tags"))
    )

}
