import 'dart:io';

import 'package:array3/array3.dart' as array3;
//array delete an element..
void main(List<String> arguments) {
  print('enter the size of the array:');
  var size=int.parse(stdin.readLineSync()!);
  List<int>array =[];
  print('enter the elements of array:');
  for( var i=0;i<size;i++){
    array.add(int.parse(stdin.readLineSync()!));
  }
  print("enter the number you want to delete:");
  var del=int.parse(stdin.readLineSync()!);
  array.remove(del);
  print(array);
  
  print('enter a element you want to add:');
  var val=int.parse(stdin.readLineSync()!);

  print('enter the position you want to add:');
  var pos=int.parse(stdin.readLineSync()!);
  array.insert(pos, val);
  print(array);
}

