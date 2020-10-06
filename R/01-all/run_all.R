#    This file is part of chen-2020-ST.
#    Copyright (C) 2019-2020  Emir Turkes, UK DRI at UCL
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#    Emir Turkes can be contacted at emir.turkes@eturkes.com

# This script runs all files in the analysis.
# Sections can be commented out as needed.

setwd(dirname(parent.frame(2)$ofile)) # Move to location of this file.

save_name <- "01_prep"
rmarkdown::render(
  file.path(paste0(save_name, ".Rmd")),
  output_file = file.path("..", "results", paste0(save_name, ".html"))
)
save_name <- "02_analysis"
rmarkdown::render(
  file.path(paste0(save_name, ".Rmd")),
  output_file = file.path("..", "results", paste0(save_name, ".html"))
)
