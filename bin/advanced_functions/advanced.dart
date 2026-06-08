import 'dart:ffi';
//bubble sort and the selection sort 
// binary search and linear search
// recursive functions
//list [1,3,4,6,7,8,9,10]

/*

List<int> bubbleSort(List <int> arry){
for(int i=0 ; i<arry.length ;i++){
  bool issorted= true ;
  for (int j=0 ;j<arry.length-1-i;j++){
    if (arry[j]>arry[j+1]){
      int temp=arry[j];
      arry[j]=arry[j+1];
      arry[j+1]=temp;
    }
    if(issorted) break ;
  }
  }
return arry;
}
*/

//slection sort
//[1,3,4,5,8,6,7,76,,5,7,8]
List<int> selectionSort(List<int> arry){
  for(int j=0; j<arry.length -1 ;j++){
    int indexofMin = j;
  for (int i=j+1; i<arry.length ;i++){
    if (arry[i]<arry[indexofMin]){
     indexofMin=j;
    }
  }
  int temp= arry[j];
  arry[j]=arry[indexofMin];
  arry[indexofMin]=temp;

  }
  return arry;
}