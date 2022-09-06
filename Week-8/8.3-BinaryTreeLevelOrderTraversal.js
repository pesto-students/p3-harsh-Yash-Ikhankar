
class Node{
  constructor(data){
       this.data = data;
       this.left = null
       this.right = null;
  }
}
function levelOrder() {
  var h = height(root);
  var i;
  for (i = 1; i <= h; i++){
     currentLevel(root, i);
  }
}
function height(root){
  if (root == null){
      return 0;
  }else {
      return 1 + Math.max(height(root.left),height(root.right));
  }
}
function currentLevel(root,level){
  if (root == null)
      return;
  if (level == 1)
  {
      console.log(root.data);
  }
  else if (level > 1) {
      currentLevel(root.left, level - 1);
      currentLevel(root.right, level - 1);
  }
  
}
var root = new Node(3);
root.left = new Node(9);
root.right = new Node(20);
root.right.left = new Node(15);
root.right.right = new Node(7);

levelOrder();