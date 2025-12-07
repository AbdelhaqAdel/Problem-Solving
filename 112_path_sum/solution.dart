import 'dart:collection';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val, [this.left, this.right]);
}

class Solution {
  bool hasPathSum(TreeNode? root, int targetSum) {
    if (root == null) return false;

    List<Map<String, dynamic>> stack = [
      {'node': root, 'sum': targetSum}
    ];

    while (stack.isNotEmpty) {
      var current = stack.removeLast();
      TreeNode node = current['node'];
      int sum = current['sum'];

      if (node.left == null && node.right == null && node.val == sum) {
        return true;
      }

      if (node.right != null) {
        stack.add({'node': node.right!, 'sum': sum - node.val});
      }

      if (node.left != null) {
        stack.add({'node': node.left!, 'sum': sum - node.val});
      }
    }
    return false;
  }
  }
TreeNode? buildTree(List<int?> list) {
  if (list.isEmpty || list[0] == null) return null;

  TreeNode root = TreeNode(list[0]!);
  Queue<TreeNode> queue = Queue();
  queue.add(root);

  int i = 1;
  while (i < list.length) {
    TreeNode current = queue.removeFirst();

    if (i < list.length && list[i] != null) {
      current.left = TreeNode(list[i]!);
      queue.add(current.left!);
    }
    i++;

    if (i < list.length && list[i] != null) {
      current.right = TreeNode(list[i]!);
      queue.add(current.right!);
    }
    i++;
  }

  return root;
}

void main() {
  Solution s = Solution();

  List<int?> input = [
    5, 4, 8, 11, null, 13, 4, 7, 2, null, null, null, 1
  ];

  TreeNode? root = buildTree(input);

  bool x = s.hasPathSum(root, 22);
  print(x); // ✅ true
}