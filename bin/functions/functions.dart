
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
    for(int i=0 ;i<=pnum ;){
      if (pnum % i == 0){
        return false;
      }
      return true;
    }
  }
  return false;
}
int sumArray (List<int> numbers){
  int sum=0;
  for(int i=0 ;i<numbers.length ;i++){
    sum=sum+numbers[i];
  }
  return sum;
}

int getmax(List<int>arry){
  int iteration=0;
  int max = arry[iteration];
  for(int i=0 ;i<arry.length;i++){
    if (arry[i]>max){
      max=arry[i];
    }else {
      iteration++;
    }
  }
  return max;
}