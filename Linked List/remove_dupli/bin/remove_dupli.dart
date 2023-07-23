import 'package:remove_dupli/remove_dupli.dart' as remove_dupli;


//Write a program to remove duplicates
// in a sorted singly linked list in dart programing

class Node {
  int data;
  Node next;
  
  Node(this.data);
}

class LinkedList {
  Node head;
  
  LinkedList() {
    head = null;
  }
  
  void insert(int data) {
    Node newNode = Node(data);
    
    if (head == null) {
      head = newNode;
    } else {
      Node current = head;
      while (current.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }
  
  void removeDuplicates() {
    if (head == null) {
      return;
    }
    
    Node current = head;
    while (current.next != null) {
      if (current.data == current.next.data) {
        current.next = current.next.next;
      } else {
        current = current.next;
      }
    }
  }
  
  void display() {
    Node current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList list = LinkedList();
  
  // Insert sorted elements
  list.insert(10);
  list.insert(20);
  list.insert(20);
  list.insert(30);
  list.insert(40);
  list.insert(40);
  
  print("Linked list before removing duplicates:");
  list.display();
  
  list.removeDuplicates();
  
  print("\nLinked list after removing duplicates:");
  list.display();
}
