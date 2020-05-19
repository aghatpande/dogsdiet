## function to categorize samples in the ENTiCE study according to key words (filterWord) found in the sampleName (filterVar) column
categorizeSample <- function(df, filterVar, filterWord){
  filterVar <- enquo(filterVar)
  filterWord <- enquo(filterWord)
  filtWord <- quo_name(filterWord)
  df %>% 
    filter(grepl(!!filtWord, !!filterVar)) %>% 
    mutate(category = !!filtWord)
}
## Needs more programming to avoid repititious code. See the Statworx tutorial on bang bang (Opera bookmark) particularly the ... part for ideas