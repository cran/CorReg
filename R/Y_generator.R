#' Response variable generator with a linear model
#' @param X the dataset
#' @param Amax maximum number of non-zero coefficients
#' @param sigma_Y the standard deviation of the noise
#' @param positive the ratio of positive coefficients
#'@export 
Y_generator<-function(X=X,Amax=NULL,sigma_Y=10,positive=0.6){
  p=ncol(X)
  taille=nrow(X)
  A=rpois(p+1,5)*(rep(-1,p+1)+2*rbinom(p+1,1,positive)) 
  if(!is.null(Amax)){
    Amax=min(abs(Amax),p)
    A[-sample(2:(p+1),size=Amax)]=0#on garde la constante
  }
  Y=cbind(rep(1,times=taille),as.matrix(X))%*%A+rnorm(taille,mean=0,sd=sigma_Y)
  return(list(Y=Y,A=A))
}
