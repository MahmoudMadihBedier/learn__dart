
int sum (int n1 ,int n2){
  return n1+n2;
}
int factorial(int num){
  int fact = 1;
  for(int i=1; i<=num ;i++){
    fact =num*i;
  }
  return fact;
}
bool isPrime(int pnum){
  if (pnum<=1){
    for(int i=0 ;i<=pnum ;i++){
      if (pnum % i == 0){
        return false;
      }
      return true;
    }
  }
  return false;
}