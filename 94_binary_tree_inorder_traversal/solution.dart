  
 class Solution {
 List<int> inorderTraversal(TreeNode? root) {
    List<int> result = [];

    void inorder(TreeNode? node) {
      if (node == null) return;
      inorder(node.left);
      result.add(node.val);
      inorder(node.right);
    }

    inorder(root);
    return result;
  }
}
 
  class TreeNode {
    int val;
    TreeNode? left;
    TreeNode? right;
    TreeNode([this.val = 0, this.left, this.right]);
  }
 
// class Solution {
//   List<int>result=[];

//   TreeNode? insert(TreeNode? root, int value) {
//   if (root == null) return TreeNode(value);
//   if (value < root.val) {
//     root.left = insert(root.left, value);
//   } else {
//     root.right = insert(root.right, value);
//   }
//   return root;
// }
// TreeNode? listToBST(List<int> nums) {
//   TreeNode? root;
//   for (var num in nums) {
//     root = insert(root, num);
//   }
//   return root;
// }
//   List<int> inorderTraversal(TreeNode? root) {
//   if (root != null){
//   inorderTraversal(root.left);

//   inorderTraversal(root.right);
//     print(root.val);
//   }
//     return result;
//   }
// }


void main() {
   TreeNode root = TreeNode(1);
  root.right = TreeNode(2);
  root.right!.left = TreeNode(3);
  Solution solution = Solution();
  List<int> result = solution.inorderTraversal(root);
  print(result);
}
