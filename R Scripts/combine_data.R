file_names = list.files(pattern="*.csv")

all_responses <- data.frame(target_id = integer(),	rank = integer(),
                            funny = integer(), somewhat_funny = integer(),
                            unfunny = integer(), count = integer(),
                            score = double(), precision = double(),
                            contest = integer(), caption = character())

for(i in 1:length(file_names)){
  print(substring(file_names[[i]], 1, 3))
  df_name <- paste0("contest", substring(file_names[[i]], 1, 3)) 
  df_name <- read.csv(file_names[[i]]) 
  all_responses <- rbind(all_responses, df_name)
}


write.csv(all_responses, "complete_summary.csv")

