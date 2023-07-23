import 'package:linear_search/linear_search.dart' as linear_search;


void main(){
  LinearSearch([1,4,5,6,7,10],7);
}
void LinearSearch(List<int>array, int value){
  int i;
  int flag=0;
  for(i=0;i<array.length;i++){
    if(array[i]==value){
      flag=1;
      break;
    }
  }
  if(flag==1){
    print('value found at $i');
  }else{
    print('value not found');
  }
}