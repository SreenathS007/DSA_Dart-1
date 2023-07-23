import 'package:delete_elenment/delete_elenment.dart' as delete_elenment;


//deleting node in singly linkedlist
class Node{
  dynamic data;
  Node? next;

  Node(this.data);
}
class LinkedList{
  Node? head;
  Node? tail;

  void insert(dynamic data){
    Node newNode = Node(data);

    if(head==null){
      head= newNode;
      tail= newNode;
    }else{
      tail!.next =newNode;
      tail =newNode;
    }
  }
  void delete(dynamic data){
    if(head == null){
      return;
    }
    if(head!.data == data){
    if(head == tail){ 
      tail = null;
    }
    head = head!.next;
    return;
    }
    Node? current =head;
    while(current!.next != null){
      if(current.next!.data == data){
        if(current.next ==tail){
          tail = current;

        }
        current.next =current.next!.next;
        return;
      }
      current = current.next;
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
  LinkedList linkedlist = LinkedList();
   
             linkedlist.insert(10);
             linkedlist.insert(20);
             linkedlist.insert(30);
             linkedlist.insert(40);

             print("before delete");
             linkedlist.display();

             print('after delete');
             linkedlist.delete(40);
             linkedlist.delete(20);

             linkedlist.display();
             }