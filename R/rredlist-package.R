#' rredlist - IUCN Red List Client
#'
#' @section Taxonomic Names vs. IUCN IDs:
#' From the documentation (quoting): "It is advisable wherever possible to use
#' the taxon name (species name) to make your API calls, rather than using IDs.
#' IDs are not immovable are expected to be used mainly by organisations
#' that work closely with the IUCN Red List."
#'
#' @section Authentication:
#' IUCN requires you to get your own API key, an alphanumeric string that you
#' need to send in every request. Get it at
#' <http://apiv3.iucnredlist.org/api/v3/token>
#' Keep this key private. You can pass the key in to each function via the
#' `key` parameter, but it's better to store the key either as a
#' environment variable (`IUCN_REDLIST_KEY`) or an R option
#' (`iucn_redlist_key`) - we suggest using the former option.
#'
#' @section High vs. Low level package APIs:
#' **High level API**
#' High level functions do the HTTP request and parse data to a data.frame for
#' ease of downstream use. The high level functions have no underscore on
#' the end of the function name, e.g., [rl_search()]
#'
#' **Low level API**
#' The parsing to data.frame in the high level API does take extra time.
#' The low level API only does the HTTP request, and gives back JSON without
#' doing any more parsing. The low level functions DO have an underscore on
#' the end of the function name, e.g., [rl_search_()]
#'
#' @section No Spatial:
#' This package does not include support for the spatial API, described at
#' <http://apiv3.iucnredlist.org/spatial>
#'
#' @section Citing the Red List API:
#' The citation is
#' `IUCN 2015. IUCN Red List of Threatened Species. Version 2015-4
#' <www.iucnredlist.org>`
#' You can get this programatically via [rl_citation()]
#'
#' @section Rate limiting:
#' From the IUCN folks: Too many frequent calls, or too many calls per day
#' might get your access blocked temporarily. If you're a heavy API user, the
#' Red List Unit asked that you contact them, as there might be better options.
#' They suggest a 2-second delay between your calls if you plan to make a
#' lot of calls.
#'
#' @importFrom jsonlite fromJSON
#' @name rredlist-package
#' @aliases rredlist
#' @docType package
#' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
#' @keywords package
NULL
