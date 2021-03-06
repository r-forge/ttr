"chaikinMF" <-
function(HLC, volume, n = 20) {

  # Chaikin Money Flow

  # http://www.fmlabs.com/reference/ChaikinMoneyFlow.htm
  # http://www.linnsoft.com/tour/techind/cmf.htm
  # http://stockcharts.com/education/IndicatorAnalysis/indic_ChaikinMoneyFlow1.html

  HLC <- as.matrix(HLC)
  MF  <- rollFUN(CLV(HLC) * volume, n, FUN="sum") / rollFUN(volume, n, FUN="sum")

  return( MF )
}

