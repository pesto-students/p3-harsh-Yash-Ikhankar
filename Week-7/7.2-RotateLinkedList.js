
function rotateLinkedList(head, k) {
  if (!head) return head;

  let pointerTwo = head;
  let pointerOne = head;

  while (k--) {
    pointerTwo = pointerTwo.next;
  }

  while (pointerTwo.next !== null) {
    pointerOne = pointerOne.next;
    pointerTwo = pointerTwo.next;
  }

  let newHead = pointerOne.next;
  pointerOne.next = null;
  pointerTwo.next = head;

  return newHead;
}

function Node(value, next) {
  this.value = value;
  this.next = value;
}

function printLinkedList(head) {
  let values = [];
  let pointer = head;

  while (pointer != null) {
    values.push(pointer.value);
    pointer = pointer.next;
  }
  console.log(...values);
}

function LinkedList() {
  let head = new Node(0, null);
  let previous = head;

  for (let i = 1; i < 8; i++) {
    let node = new Node(i, null);
    previous.next = node;
    previous = node;
  }

  previous.next = null;
  return head;
}

const head = LinkedList();
printLinkedList(head);
const newHead = rotateLinkedList(head,4);
printLinkedList(newHead);
/*
PreviousLinked List: 
0 1 2 3 4 5 6 7
Rotated Linked List: 
4 5 6 7 0 1 2 3
*/