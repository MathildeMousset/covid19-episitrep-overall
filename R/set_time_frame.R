
# This script is to be launched after setup.R

# Set the term of dates this is also used to separate output files

# defaults to previous Sunday from today 
# enter a custom date inside function to change
date_max_report <- get_max_date_report() 
week_report     <- ISOweek::ISOweek(date_max_report) %>% gsub("W","w", .)


# Create paths specific to the week of the report
path.local.week   <- file.path(path.local, week_report)

path.local.worldwide        <- file.path(path.local.week, 'worldwide')
path.local.worldwide.data   <- file.path(path.local.worldwide, 'data')
path.local.worldwide.graphs <- file.path(path.local.worldwide, 'graphs')
path.local.worldwide.tables <- file.path(path.local.worldwide, 'tables')

path.local.msf        <- file.path(path.local.week, 'msf')
path.local.msf.data   <- file.path(path.local.msf, 'data')
path.local.msf.graphs <- file.path(path.local.msf, 'graphs')
path.local.msf.tables <- file.path(path.local.msf, 'tables')


# Create folders based on the paths
dir.create(path.local.week, showWarnings = FALSE, recursive = TRUE) 

dir.create(path.local.worldwide.data   , showWarnings = FALSE, recursive = TRUE) 
dir.create(path.local.worldwide.graphs , showWarnings = FALSE, recursive = TRUE) 
dir.create(path.local.worldwide.tables , showWarnings = FALSE, recursive = TRUE) 

dir.create(path.local.msf.data   , showWarnings = FALSE, recursive = TRUE) 
dir.create(path.local.msf.graphs , showWarnings = FALSE, recursive = TRUE) 
dir.create(path.local.msf.tables , showWarnings = FALSE, recursive = TRUE) 

