//Drop
drop index region_sp_code_str month_str year_str rectype_str main_str sec_str Region Year

//Order

order clockst_base10 clockend_base10, after(clockst)



order start_work_time start_work_time_home start_commute_time work_at_home works_not_home end_work_time end_work_time_home total_break_time_peak total_break_time_offpeak, after(sec)

order avg_temp_m avg_r_m avg_iqr_m avg_sd_m avg_n30_m avg_n35_m, before(avg_temp_jan)

order avg_temp_y avg_r_y avg_iqr_y avg_sd_y avg_n30_y avg_n35_y, before(avg_temp_2002)

//Add labels

label var start_work_time "Time at which they first start their paid job (not at home)"

label var end_work_time "Time at which finish working (not at home)"

label var end_work_time_home "Time at which finish working at home"

label var start_work_time_home "Time at which they first start their paid job from home"

label var start_commute_time "Time at which they first start their commute to work"

label var work_at_home "Binary variable: 1 if works from home, 0 otherwise"

label var works_not_home "Binary variable: 1 if works not from home, 0 otherwise"

label var total_break_time_peak "Total break time in hours from 12-4pm"

label var total_break_time_offpeak "Total break time from 4pm-12pm"

label var avg_temp_m "Average temperature in a region for the given month of the survey"

label var avg_r_m "Average range of within day temperatures in a region for the given month of the survey"

label var avg_iqr_m "Average iqr of within day temperatures in a region for the given month of the survey"

label var avg_sd_m "Average standard deviation of within day temperatures in a region for the given month of the survey"

label var avg_n30_m "Average number of days above 30C in a region for the given month of the survey"

label var avg_n35_m "Average number of days above 35C in a region for the given month of the survey"

label var avg_temp_y "Average temperature in a region over the entire year of given survey"

label var avg_r_y "Average range of within day temperatures in a region over the entire year of given survey"

label var avg_iqr_y "Average iqr of within day temperatures in a region over the entire year of given survey"

label var avg_sd_y "Average standard deviation of within day temperatures in a region over the entire year of given survey"

label var avg_n30_y "Average number of days above 30C in a region over the entire year of given survey"

label var avg_n35_y "Average number of days above 35C in a region over the entire year of given survey"

label var region_sp_code "Code for region within Spain"

//save "C:\Users\joyse\Desktop\UROP\Fall 2023\MTUS\MTUS_Spain_UPDATED_FINAL1.dta", replace






