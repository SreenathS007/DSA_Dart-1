import 'package:binary_search/binary_search.dart' as binary_search;

void main(){
int? FindNum(List<int> array,int value){
  int min =0;
  int max = array.length-1;

  while(min<= max){
    int mid=((min+max)/2).round();
    if(array[mid]==value){
      return mid;
    }else if(array[mid]>value){
      max = mid-1;
    }else{
      min = mid+1;
    }
  }
  if(min>max){
    print('value not found');
  }
}
List<int> array = [10,20,30,40,50,60,70];
print(FindNum(array, 60));
}