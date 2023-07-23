import 'package:linkedlist_1/linkedlist_1.dart' as linkedlist_1;

class Node{
  int? data;
  Node?next;
  Node(this.data);
}

class Slinkedlist{
  Node?head;
  Node?tail;

  void addNode(int data){
  Node newNode=Node(data);
  if(head==null){
    head = newNode;
  }else{
    tail?.next = NewNode;
  }
  tail=newNode;
  }
}
