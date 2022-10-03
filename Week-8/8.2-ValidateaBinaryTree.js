
class Node
{
    constructor(data) {
       this.left = null;
       this.right = null;
       this.data = data;
    }
}
function BST(root, l, r)
{
  if (root == null){
    return true;
  }
  else if (l != null && root.data <= l.data){
    return false;
  }
  else if (r != null && root.data >= r.data){
    return false;
  }
  else{
    return BST(root.left, l, root) && BST(root.right, root, r);
  } 
}
function newNode(data)
{
    let node = new Node(data);
    return (node);
}
 
let root = newNode(5);
root.left = newNode(1);
root.right = newNode(4);
root.right.left = newNode(3);
root.right.right = newNode(6);
 
if(BST(root,null,null)){
console.log("binary tree");
}
else{
console.log("Not a binary tree");
}

// OUTPUT :-- Not a binary tree