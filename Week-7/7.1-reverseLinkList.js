class LinkedList {
  constructor(data){
    this.head={
      value:data,
      next:null,
    }
    this.tail=this.head
    this.length= 1;
  }
  append(data){
    const newNode={
      value: data,
      next:null
    }
    this.tail.next=newNode;
    this.tail=newNode;
    this.length++
  }
  
  reverse(){
    let first = this.head;
    this.tail=this.head;
    let second = first.next

    while(second){
      let temp = second.next;
      second.next = first;

      first = second;
      second = temp;
    }
    this.head.next=null;
    this.head=first
  }
}
  const ll = new LinkedList(1);
ll.append(2);
ll.append(3);
ll.append(4);
ll.append(5);
ll.reverse();
console.log(ll);

/*[1,2,3,4,5]
Reversed Output
[5,4,3,2,1]*/