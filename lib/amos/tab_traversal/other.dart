import 'package:flutter/material.dart';
import 'package:nexteons_widgets/amos/tab_traversal/sample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom FocusTraversalPolicy Example'),
        ),
        body: FocusTraversalGroup(
          policy: CustomFocusTraversalPolicy(),
          // descendantsAreFocusable: true,
          // descendantsAreTraversable: false,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  focusNode: FocusNode(),
                  decoration: InputDecoration(hintText: 'textfield2'),
                ),
                // 2
                TextField(
                  focusNode: FocusNode(),
                  decoration: InputDecoration(hintText: 'textfield2'),
                ),
                // 3
                TextField(
                  focusNode: FocusNode(),
                  decoration: InputDecoration(hintText: 'textfield3'),
                ),
                // 1
                TextField(
                  focusNode: FocusNode(),
                  decoration: InputDecoration(hintText: 'textfield4'),
                ),
                // 4 (will be skipped)
                TextField(
                  focusNode: FocusNode(),
                  decoration: InputDecoration(hintText: 'textfield5'),
                ),
                // 5 (will be skipped)
                TextField(
                  focusNode: FocusNode(),
                  decoration: InputDecoration(hintText: 'textfield6'),
                ),
                // 6 (will be skipped)
                TextField(
                  focusNode: FocusNode(),
                  decoration: InputDecoration(hintText: 'textfield7'),
                ),
                // 7
                TextField(
                  focusNode: FocusNode(),
                  decoration: InputDecoration(hintText: 'textfield8'),
                ),
                // 8
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*
class CustomFocusTraversalPolicy extends FocusTraversalPolicy {
  @override
  FocusNode findFirstFocus(FocusNode currentNode, {bool ignoreCurrentFocus = false}) {
    return currentNode.nearestScope!.traversalDescendants.firstWhere(
      (node) => node.canRequestFocus,
      orElse: () => currentNode,
    );
  }

  @override
  FocusNode findLastFocus(FocusNode currentNode, {bool ignoreCurrentFocus = false}) {
    return currentNode.nearestScope!.traversalDescendants.lastWhere(
      (node) => node.canRequestFocus,
      orElse: () => currentNode,
    );
  }

  FocusNode? findNextFocus(FocusNode currentNode) {
    List<FocusNode> nodes =
        currentNode.nearestScope!.traversalDescendants.toList();
    int currentIndex = nodes.indexOf(currentNode);

    // Define your custom order
    List<int> customOrder = [0, 1, 2, 6, 7]; // Example: skip indices 3, 4, 5

    // Find the next index in your custom order
    int nextIndex = customOrder.indexOf(currentIndex + 1);

    if (nextIndex != -1 && nextIndex < nodes.length) {
      return nodes[customOrder[nextIndex]];
    }

    return null; // Return null if there’s no valid next focus
  }

  FocusNode? findPreviousFocus(FocusNode currentNode) {
    List<FocusNode> nodes =
        currentNode.nearestScope!.traversalDescendants.toList();
    int currentIndex = nodes.indexOf(currentNode);

    // Define your custom order for previous focus
    List<int> customOrder = [7, 6, 2, 1, 0]; // Reverse of findNextFocus order

    // Find the previous index in your custom order
    int prevIndex = customOrder.indexOf(currentIndex - 1);

    if (prevIndex != -1 && prevIndex < nodes.length) {
      return nodes[customOrder[prevIndex]];
    }

    return null; // Return null if there’s no valid previous focus
  }

  @override
  bool inDirection(FocusNode currentNode, TraversalDirection direction) {
    // You can customize this based on direction (up, down, left, right)
    // For simplicity, returning true to indicate that the node was focused.
    return findNextFocus(currentNode) != null;
  }

  @override
  Iterable<FocusNode> sortDescendants(
      Iterable<FocusNode> descendants, FocusNode currentNode) {
    // Custom sort if needed. For simplicity, return the descendants as is.
    return descendants;
  }

  @override
  FocusNode? findFirstFocusInDirection(
      FocusNode currentNode, TraversalDirection direction) {
    // Depending on the direction, you can find and return the appropriate focus node.
    // For simplicity, let's use the next focus node regardless of direction.
    return findNextFocus(currentNode);
  }
}
*/