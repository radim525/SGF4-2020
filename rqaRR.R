

library(nonlinearTseries)

rqa.analysis= list()
rqa.analysis[[2]]=0.00000011
jj=0
while ( !( between(rqa.analysis[[2]], perc -0.00011*CN, perc +0.00011*CN)) ) {
  rqa.analysis[[2]]=0.00000011
  ii=1
  #if (i1==20 & perc==0.05) {  CN=2}
  while( (!( between(rqa.analysis[[2]], perc -0.0001*CN, perc +0.0001*CN))& rqa.analysis[[2]] < perc +0.0001*CN & rqa.analysis[[2]] < perc -0.0001*CN  ) ) {
    tryCatch({
      rqa.analysis=rqa(time.series = OBS, embedding.dim= emb,time.lag= tau, radius =CCN2*ii*var(OBS)*10^(-jj),lmin=LMIN,do.plot=FALSE,distanceToBorder=2) 
      RDS = CCN2*ii*var(OBS)*10^(-jj)
      print(paste("ii=",ii))
      print(paste("jj=",jj))
      print(paste("RR=",rqa.analysis[[2]]))
      print(paste("perc=",perc))
      print(paste("nn1=",nn1))
      print(paste("i1=",i1))}, error=function(e){cat("ERROR :",  print(ii), "\n")})
    ii = ii+1
    #     if ( between(rqa.analysis[[2]], perc-0.1*perc, perc)) {CCN2=1}
  }
  print(paste("ii=",ii))
  print(paste("jj=",jj))
  print(paste("RR=",rqa.analysis[[2]]))
  print(paste("perc=",perc))
  print(paste("nn1=",nn1))
  jj = jj+1
  
}
}

