# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'


hello <- function() {
  print("Hello, world!")
}

#Didn't work:
# df %>% select_if(~!all(is.na(.)))
# df %>% drop_na()
# This eliminates everything, bc the entire fucking thing has at least one NA value in the row
# df %>% filter_all(~ !is.na(.))
# cassidee_carlson_entranceswipes %>% drop_na(X,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18)

library(tidyverse)
library(tidyr)

# This will clean out any blank columns

library(janitor)
df <- remove_empty(cassidee_carlson_entranceswipes, which = "cols")

# And then leave only rows in column X5, which has the date data, to check if you got it all

df %>%
  filter(!is.na(X5)) %>%

# Export as CSV

cleaned_cassidee_carlson_entranceswipes <- df

cleaned_cassidee_carlson_entranceswipes %>% write_csv("cleaned_cassidee_carlson_entranceswipes.csv")

#Then once exported, filter out blanks in Excel for column X5

# Now doing Chief Wilson

library(janitor)
vanessa_wilson_entranceswipes <- remove_empty(vanessa_wilson_entranceswipes, which = "cols")

vanessa_wilson_entranceswipes %>%
  filter(!is.na(X5))

vanessa_wilson_entranceswipes %>% write_csv("vanessa_wilson_entranceswipes.csv")

# To speed this up for next time take out the filter on line 54

# Deputy chief Darin Parker

library(janitor)
darin_parker_entranceswipes <- remove_empty(darin_parker_raw, which = "cols")
darin_parker_entranceswipes %>% write_csv("darin_parker_entranceswipes.csv")

# Eric Whitman

library(janitor)
eric_wittman_entranceswipes <- remove_empty(eric_wittman, which = "cols")
eric_wittman_entranceswipes %>% write_csv("eric_wittman_entranceswipes.csv")

# Chris Juul

library(janitor)
chris_juul_entranceswipes <- remove_empty(chris_juul, which = "cols")
chris_juul_entranceswipes %>% write_csv("chris_juul_entranceswipes.csv")

# Stephen Redfearn

library(janitor)
stephen_redfearn_entranceswipes <- remove_empty(stephen_redfearn, which = "cols")
stephen_redfearn_entranceswipes %>% write_csv("stephen_redfearn_entranceswipes.csv")

# Terry Brown

terry_brown_entranceswipes <- remove_empty(terry_brown, which = "cols")
terry_brown_entranceswipes %>% write_csv("terry_brown_entranceswipes.csv")

# Jad Lanigan

jad_lanigan_entranceswipes <- remove_empty(jad_lanigan, which = "cols")
jad_lanigan_entranceswipes %>% write_csv("jad_lanigan_entranceswipes.csv")

# Robert Jackson

robert_jackson_entranceswipes <- remove_empty(robert_jackson, which = "cols")
robert_jackson_entranceswipes %>% write_csv("robert_jackson_entranceswipes.csv")

# Mark Hildebrand

mark_hildebrand_entranceswipes <- remove_empty(mark_hildebrand, which = "cols")
mark_hildebrand_entranceswipes %>% write_csv("mark_hildebrand_entranceswipes.csv")

# Rob McGregor
  # X4 has 10/13/21 in the column and is the only date. So I think that is the date and time they pulled the report for us. Data only is supposed to cover 01/21/21 to 08/18/21.

library(tidyverse)
library(janitor)

rob_mcgregor_entranceswipes <- remove_empty(commander_rob_mcgregor, which = "cols")
rob_mcgregor_entranceswipes %>% write_csv("rob_mcgregor_entranceswipes.csv")

# Chad Cerinich

chad_cerinich_entranceswipes <- remove_empty(chad_cerinich, which = "cols")
chad_cerinich_entranceswipes %>% write_csv("chad_cerinich_entranceswipes.csv")

# Randal Moody

randal_moody_entranceswipes <- remove_empty(randal_moody, which = "cols")
randal_moody_entranceswipes %>% write_csv("randal_moody_entranceswipes.csv")

# Sam McGhee

sam_mcghee_entranceswipes <- remove_empty(sam_mcghee, which = "cols")
sam_mcghee_entranceswipes %>% write_csv("sam_mcghee_entranceswipes.csv")

# Troy Edwards

troy_edwards_entranceswipes <- remove_empty(troy_edwards, which = "cols")
troy_edwards_entranceswipes %>% write_csv("troy_edwards_entranceswipes.csv")

# Chris Amsler

chris_amsler_entranceswipes <- remove_empty(chris_amsler, which = "cols")
chris_amsler_entranceswipes %>% write_csv("chris_amsler_entranceswipes.csv")





# Kevin is curious what days of the week Vanessa was in the office and if it included any weekends. Let's use lubridate

library(tidyverse)
library(lubridate)

  class(vanessa_wilson_DOW$date_vw)

  vw_dates <- as.Date(vanessa_wilson_DOW$date_vw)

x <- vanessa_wilson_DOW %>%
  as.Date("2009-09-02") %>%
  wday(x)

vanessa_wilson_DOW %>% class(date)

vw_dates <- vanessa_wilson_DOW$date
  vw_dates <- data.frame(as.Date(date, format = "%Y-%m-%d"))
  vanessa_wilson_DOW <- vw_dates

  vanessa_wilson_DOW_2 <- vanessa_wilson_DOW %>%
  mutate(date = mdy(date))

  vw_dates <- vanessa_wilson_DOW %>%
  as.POSIXct(as.character(date),format="%Y%m%d")

# EVERYTHING ABOVE DOES NOT WORK

