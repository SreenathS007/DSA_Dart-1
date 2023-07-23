import 'dart:ffi';
import 'dart:io';
import 'package:array2/array2.dart' as array2;
//sorting array elememts..

void main(List<String> arguments) {
  print('enter the size of the array:');
  var size=int.parse(stdin.readLineSync()!);
  List<int>Array=[];
  print('enter the elements:');
  for (var i=0;i<size;i++){
    Array.add(int.parse(stdin.readLineSync()!));
  }
  var temp=0;
  for(var i=0;i<size;i++){
    for(var j=i+1;j<size;j++){
      if(Array[i]<Array[j]){
      temp=Array[i];
      Array[i]=Array[j];
      Array[j]=temp;
    }
    }
  }
  print('sorted array is: $Array');
}
