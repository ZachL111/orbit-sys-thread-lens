source("R/domain_review.R")

item <- list(signal=45, slack=20, drag=14, confidence=54)
stopifnot(domain_review_score(item) == 122)
stopifnot(domain_review_lane(item) == "watch")
