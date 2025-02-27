
all_models <- list.files(path="data-raw", pattern="[^.*\\.R]$")

model_library <- list()

for (model in all_models) {
  model_library[[model]] <- campsismod::read.campsis(file=paste0("data-raw/", model))
}
usethis::use_data(model_library, overwrite=TRUE)
