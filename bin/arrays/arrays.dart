// array is a data sturcture that can hold multiple values of the same type
// in dart, we can use the List class to create an array
// we can create a list of integers, strings, or any other type
// we can also create a list of lists (2D array) or a list of lists of lists (3D array) and so on
// we can access the elements of a list using the index, which starts from 0
// we can also use the for loop to iterate through the elements of a list
// we can also use the forEach method to iterate through the
// [2,3,4,5,6,6] -> values 
// [0,1,2,3,4,5] -> indexes
void main(){
List<int> numbers = [2, 3, 4, 5, 6, 6];

for (int i = 0; i < numbers.length; i++) {
  print("Index: $i, Value: ${numbers[i]}");
}


}