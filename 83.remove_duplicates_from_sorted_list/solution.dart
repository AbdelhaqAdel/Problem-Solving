// Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? head;

  void add(int value) {
    ListNode newNode = ListNode(value);
    if (head == null) {
      head = newNode;
    } else {
      ListNode? current = head;
      while (current?.next != null) {
        current = current?.next;
      }
      current?.next = newNode;
    }
  }

  void display() {
    if (head == null) {
      print('The list is empty.');
      return;
    }

    ListNode? current = head;
    while (current != null) {
      print(current.val);
      current = current.next;
    }
  }

  ListNode? deleteDuplicates(ListNode? head) {
    ListNode? current = head;

    while (current != null && current.next != null) {
      if (current.val == current.next!.val) {
        current.next = current.next!.next;
      } else {
        current = current.next;
      }
    }

    return head;
  }
}

void main() {
  Solution list = Solution();
  list.add(10);
  list.add(10);
  list.add(10);
  list.add(10);
  list.add(20);
  list.add(30);

  print('Original Linked List:');
  list.display();

  list.head = list.deleteDuplicates(list.head);

  print('\nUpdated Linked List:');
  list.display();
}
