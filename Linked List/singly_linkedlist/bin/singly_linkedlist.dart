import 'package:singly_linkedlist/singly_linkedlist.dart' as singly_linkedlist;

class Node {
  dynamic data;
  Node? next;

  Node (this.data);
}

class SinglyLinkedList {
  Node? head;
  Node? tail;

  void insert(dynamic data){

    Node newNode = Node(data);

    if(head == null){
      head = newNode;
      tail = newNode;
    }else{
      tail!.next = newNode;
      tail = newNode;
    }
  }
  void display(){
    Node? current = head;
    while( current != null){
      print(current.data);
      current = current.next;
    }
  }
}
void main(){
   
   SinglyLinkedList linkedlist = SinglyLinkedList();

   linkedlist.insert(10);
   linkedlist.insert(20);
   linkedlist.insert(30);
   linkedlist.insert(40);
   
    linkedlist.display();
    }