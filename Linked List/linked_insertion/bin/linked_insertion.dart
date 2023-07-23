import 'package:linked_list1/linked_list1.dart' as linked_list1;

class Node{
  dynamic data;
  Node?next;

  Node(this.data);
}

class LinkedList{
  Node?head;

  void insert(dynamic element){
    if(head==null){
      head=Node(element);
    }else{
      Node currentNode=head!;
      
      while(currentNode.next!=null){
        currentNode=currentNode.next!;
      }
      currentNode.next=Node(element);
    }
  }
  void display(){
    if(head==null){
      print('linked list is empty...');
    
    }else{
      Node? currentNode = head;
      print('Linked list elements:');
      while(currentNode!=null){
        print(currentNode.data);
        currentNode=currentNode.next;
      }
    }
  }
}

void main(){
  LinkedList linkedList = LinkedList();
  linkedList.insert(10);
  linkedList.insert(20);
  linkedList.insert(30);
  linkedList.insert(40);
  

  print('BEFORE INSERTING ELEMENTS:');
  linkedList.display();

  dynamic elementToInsert=50;
  linkedList.insert(elementToInsert);

  print('\nAFTER INSERTING ELEMENTSp:');
  linkedList.display();
  }