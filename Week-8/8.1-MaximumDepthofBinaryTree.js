
class Node
{
 constructor(data)
 {
    this.data=data;
    this.left=null;
    this.right=null;
 }
}
let root;
function maximum(node)
{
 if (node == null){
    return 0;
 }else{
    {
     let leftDepth = maximum(node.left);
     let rightDepth = maximum(node.right);
     if (leftDepth > rightDepth){
        return (leftDepth + 1);
      } else{
            return (rightDepth + 1);
      }
    }
  }
}    
        
root = new Node(3);
root.left = new Node(9);
root.right = new Node(20);
// root.left.left = new Node(null);
// root.left.right = new Node(null);
root.right.left = new Node(15);
root.right.right = new Node(7);
console.log("Height of tree is : " + maximum(root));

// OUTPUT:-- Height of tree is : 3