import 'package:arraytolinkedlist_doubly/arraytolinkedlist_doubly.dart' as arraytolinkedlist_doubly;

void main(){
  DlinkedList list = DlinkedList();
   
   List<int> array =[11,13,44,3,56,10,32];

   for(int element in array){
    list .addData(element);
   }
   list.displayData();
}
class Node{
  dynamic data;
  Node? next;
  Node? prev;
  
  Node(this.data);
}
class DlinkedList{
  Node? head;
  Node? tail;

  void addData(dynamic data){
    Node newNode =Node(data);
    if(head == null){
      head = newNode;
    }else{
      tail!.next =newNode;
      newNode.prev =tail;
    }
    tail = newNode;
  }
  void displayData(){
     Node ?  current = head;
     while(current != null){
         print(current.data);
         current =current .next;
     }
  }
}
