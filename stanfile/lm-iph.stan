// データ
data {
  int N;
  int K; 
  vector[N] Y;
  matrix[N, K] X;
}

// パラメータ  
parameters {
  vector[K] beta;
  real<lower=0> sigma;
}

// モデル式、事前分布  
model {
  vector[N] mu = X*beta;  
  Y ~ normal(mu, sigma);  
  
  //βの事前分布
  for(i in 1:K){
    beta[i] ~ normal(0, 100);
  }
  
  //σの事前分布  
  sigma ~ uniform(0,20);
}

