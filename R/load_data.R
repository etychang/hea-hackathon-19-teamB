filepath <- "//Lonnetapp01/higher education analysis/HE Analysis/Economics Analysis Team/Hackathon/Data/Challenge 2/" 

sr_chart_6 <- data.table::fread(paste0(filepath, "SR_Chart_6.csv"))
sr_figure_8 <- data.table::fread(paste0(filepath, "SR_Figure_8.csv"))
sr_table_1 <- data.table::fread(paste0(filepath, "SR_Table_1.csv"))

sr_table_28_1415 <- data.table::fread(paste0(filepath, "SR_TABLE_28_(2014-15).csv"))
sr_table_28_1516 <- data.table::fread(paste0(filepath, "SR_TABLE_28_(2015-16).csv"))
sr_table_28_1617 <- data.table::fread(paste0(filepath, "SR_TABLE_28_(2016-17).csv"))
sr_table_28_1718 <- data.table::fread(paste0(filepath, "SR_TABLE_28_(2017-18).csv"))

unesco_hesa_match <- data.table::fread(paste0(filepath, "UNESCO_HESA_MATCH.csv"))
unesco_inbound_all <- data.table::fread(paste0(filepath, "UNESCO_INBOUND_ALL.csv"))
unesco_inbound_country <- data.table::fread(paste0(filepath, "UNESCO_INBOUND_COUNTRY.csv"))

filepath2 <- "//Lonnetapp01/higher education analysis/HE Analysis/Economics Analysis Team/Hackathon/Data/Common data/"
he_spine <- data.table::fread(paste0(filepath2, "HE_Spine.csv"))``
