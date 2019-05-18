gompertz <- function(u,stN){
  nyr <- 100
  KK <- log(1)
  lN <- numeric(nyr)
  lN[1] <- log(stN)
  for(yr in 2:nyr){
    lN[yr] <- (KK-u)/KK*lN[yr-1]+u
  }
  return(exp(lN))
}

schaefer <- function(r,stN){
  nyr <- 100
  KK <- 1
  N <- numeric(nyr)
  N[1] <- stN
  for(yr in 2:nyr)
    N[yr] <- N[yr-1]+r*N[yr-1]*(1-N[yr-1]/KK)
  return(N)
}

par(mar=c(5,4,0,0.1))
u <- 0.2
KK <- 0.01
plot(gompertz(u,KK),type='l',xlab="Time",ylab="N",ylim=c(0,1))
lines(schaefer(u,KK),col="red")