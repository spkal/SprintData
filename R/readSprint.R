"readSprint" <- function(file = system.file("data/sprint.txt", package="SprintData")) {
    sprintData <- read.table(file, sep=" ", header=TRUE, stringsAsFactors=FALSE)
    sprintData$Date <- with(sprintData,
			    as.Date(paste(Year, Month, "15", sep="-"), format="%Y-%b-%d"))
    sprintData
}
