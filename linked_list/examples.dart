  // class Node<T> {
  //   T value; 
  //  Node<T>? next;
  //   Node(this.value);
  // }

  // class LinkedList<T> {
  //   Node<T>? head; 
  //   void append(T value) {
  //     Node<T> newNode = Node(value);

  //     if (head == null) {    // if the list is empty
  //       head = newNode;
  //     } else {
  //       Node<T>? current = head;
  //       while (current!.next != null) {
  //         current = current.next;
  //       }
  //       current.next = newNode;
  //     }
  //   }

  //   void display() {
  //     if (head == null) {
  //       print('The list is empty.');
  //       return;
  //     }

  //     Node<T>? current = head;
  //     while (current != null) {
  //       print(current.value);
  //       current = current.next;
  //     }
  //   }

  //   void delete(T value) {
  //     if (head == null) {
  //       print('The list is empty.');
  //       return;
  //     }

  //     if (head!.value == value) {
  //       head = head!.next;
  //       return;
  //     }

  //     Node<T>? current = head;
  //     while (current!.next != null) {
  //       if (current.next!.value == value) {
  //         current.next = current.next!.next;
  //         return;
  //       }
  //       current = current.next;
  //     }

  //     print('Value $value not found in the list.');
  //   }
  // }

  // void main() {
  //   LinkedList<int> list = LinkedList<int>();

  //   // Append values to the list
  //   list.append(10);
  //   list.append(20);
  //   list.append(30);

  //   // Display the list
  //   print('Linked List:');
  //   list.display();

  //   // Delete a value
  //   print('Deleting 20...');
  //   list.delete(20);

  //   // Display the list again
  //   print('Updated Linked List:');
  //   list.display();
  // }

class Node<T>{
   T? value;
   Node<T>? next;
   Node(this.value);
}

class LinkedList<T>{
  Node<T>?head;
  void add(T value){
    Node<T> newNode=Node(value);
    if(head==null){
      head=newNode;
    }else{
      Node<T>? current=head;
      while(current!.next!=null){
        current=current.next;
      }
      current.next=newNode;
    }
  }

   void display() {
      if (head == null) {
        print('The list is empty.');
        return;
      }

      Node<T>? current = head;
      while (current != null) {
        print(current.value);
        current = current.next;
      }
    }
}

 void main() {
    LinkedList<int> list = LinkedList<int>();

    // Append values to the list
    list.add(10);
    list.add(20);
    list.add(30);

    // Display the list
    print('Linked List:');
    list.display();
    // list.delete(20);

    // Display the list again
    print('Updated Linked List:');
    list.display();
  }