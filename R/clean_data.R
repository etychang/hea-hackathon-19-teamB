# combine sr_table_28 together ----
sr_table_28 <- sr_table_28_1415 %>% 
  rbind(sr_table_28_1516) %>% 
  rbind(sr_table_28_1617) %>% 
  rbind(sr_table_28_1718)

sr_table_28 %>% head()

# reduce dataset down to those determined by expert opinion

sr_table_28_clean <- sr_table_28 %>% 
  filter(`HE provider` != "Total") %>% 
  filter(`Country of HE provider`!= "All") %>% 
  filter(`Region of HE provider` == "All") %>% 
  filter(`Level of study` %in% c("All postgraduate", "All undergraduate")) %>% 
  filter(`Mode of study` != "All") %>% 
  filter(`Region of domicile` != "Total") %>% 
  filter(`Country of domicile` != "Total")
