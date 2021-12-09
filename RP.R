
pl1<- function(RP, prc,x, col,NMM){
  
  par = list(unit = 2, labelx = " ", labely = " ", cols = col, pcex = 1)  
  
  unit = cols = labelx = labely = pcex= NA
  
  for (v in 1:length(par)) assign(names(par)[v], par[[v]])
  
  xdim   = nrow(RP)
  ydim   = ncol(RP)
  
  RP = matrix(as.numeric(RP), nrow = xdim, ncol = ydim) # transform it for plotting
  RP =rotate(rotate(rotate(RP)))
  
  tstamp = seq(0, xdim, unit)
  
  par(mar = c(2, 2, 3,2), font.axis = 1, cex.axis = 1.3,
      font.lab = 2, cex.lab = 1.5)
  
  plot(tstamp, tstamp, type = "n", xlab = "", ylab = "",font.main =1,yaxt ="n",xaxt ="n")
  
  # axis(2, at = seq(0,max(tstamp),by=25), labels = rev(seq(0,max(tstamp),by=25)), tick = TRUE)
  # axis(1, at = seq(0,max(tstamp),by=25), labels = seq(0,max(tstamp),by=25), tick = TRUE)
  # 
  l = 1
  for (l in 1:ydim){
    ind = which(RP[,l] == 1)
    points(rep(l,length(ind)), ind, cex = cx, col = cols, pch = 15)
  }
}
