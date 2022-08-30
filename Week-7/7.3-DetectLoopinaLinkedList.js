 class Node
 { 
  constructor()
  {
    let data;
    let next;
    let flag;
  }
 }
 function push( head_ref, new_data)
 {
  let new_node = new Node();   
  new_node.data = new_data;
  new_node.flag = 0;
  new_node.next = head_ref;
  head_ref = new_node;
  return head_ref;
 }  
 function detectLoop(h)
 {
  while (h != null)
    {
      if (h.flag == 1)
        return true;
      h.flag = 1;
      h = h.next;
     }
     return false;
 }
  let head = null;   
  head = push(head, 1);
  head = push(head, 2);
  head = push(head, 3);
  head = push(head, 4);
  head.next.next.next.next = head;

  if (detectLoop(head))
  {
   console.log("Loop found");
  }
  else
  {
   console.log("No Loop");
  }
  
  
  