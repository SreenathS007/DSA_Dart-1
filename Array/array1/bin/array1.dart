import 'dart:io';
import 'package:array1/array1.dart' as array1;

//finding even Numbers in an array..

void main(List<String> arguments) {
    print("enter the size of the array:");
     var lim = int.parse(stdin.readLineSync()!);
     print('enter the elements:');
     List<int> array = [];
     for (var i = 0; i < lim; i++) {
     array.add(int.parse(stdin.readLineSync()!));
  }
      print("even numbers are:");
      for (var i = 0; i < lim; i++) {
      if (array[i] % 2 == 0) {
      print(array[i]);
    }
  }
}
