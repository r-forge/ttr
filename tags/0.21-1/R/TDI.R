#
#   TTR: Technical Trading Rules
#
#   Copyright (C) 2007-2012  Joshua M. Ulrich
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

"TDI" <-
function(price, n=20, multiple=2) {

  # Trend Detection Index

  # http://www.linnsoft.com/tour/techind/tdi.htm

  price <- try.xts(price, error=as.matrix)
  
  mom <- momentum(price, n, na.pad=TRUE)
  mom[is.na(mom)] <- 0

  di  <- runSum(mom, n)
  abs.di <- abs(di)

  abs.mom.2n <- runSum(abs(mom), n*multiple)
  abs.mom.1n <- runSum(abs(mom), n  )

  tdi <- abs.di - (abs.mom.2n - abs.mom.1n)

  result <- cbind( tdi,di )
  colnames(result) <- c( "tdi","di" )

  reclass( result, price )
}
