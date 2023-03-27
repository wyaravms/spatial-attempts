#normal multivariate

Z = rnorm(3)
A = rbind(c(1,1,0),c(1,0,1))
print(A %*% t(A)) # show Sigma

X = A %*% Z

X = matrix(0,nrow=2,ncol=1000)
A = rbind(c(1,1,0),c(1,0,1))

for(i in 1:1000){
  Z = rnorm(3)
  X[,i] = A %*% Z
}
plot(X[1,],X[2,],main="bivariate normal with variance 2, covariance 1",asp=1,xlim=c(-5,5),ylim=c(-5,5))
