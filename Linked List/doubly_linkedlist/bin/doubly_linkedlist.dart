import 'package:doubly_linkedlist/doubly_linkedlist.dart' as doubly_linkedlist;

class Node{
  dynamic data;
  Node? next;
  Node? prev;
   
   Node(this.data);
}
class DoublyLinkedList{
  Node? head;
  Node?tail;

  void insert(dynamic data){
    Node newNode = Node(data);

    if(head==null){
      head = newNode;
      tail = newNode;
    }else{
      tail!.next = newNode;
      tail = newNode;

    }
  }
  void display(){
    Node? current = head;
    while(current != null){
      print(current.data);
      current = current.next;
    }
  }
}
void main(){

  DoublyLinkedList linkedlist = DoublyLinkedList();
        linkedlist.insert(11);
        linkedlist.insert(22);
        linkedlist.insert(33);
        linkedlist.insert(44);

        linkedlist.display();
}