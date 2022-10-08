
var Stack1 = [];
var Stack2 = [];

function Push(data) {
  Stack1.push(data);
}

function Pop() {
  if (Stack2.length === 0) {
    if (Stack1.length === 0) { return 'Cannot queue is empty'; }
    while (Stack1.length > 0) {
      var p = Stack1.pop();
      Stack2.push(p);
    }
  }
  return Stack2.pop();
}

Push(1);
Push(2);
Push(3);
console.log(Pop());
console.log(Stack2);