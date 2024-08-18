import 'package:flutter/widgets.dart';

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
    List<FocusNode> nodes = currentNode.nearestScope!.traversalDescendants.toList();
    int currentIndex = nodes.indexOf(currentNode);

    // Define your custom order
    List<int> customOrder = [1, 2, 3, 7, 8]; // Example: skip 4, 5, 6

    // Find the next index in your custom order
    int nextIndex = customOrder.indexOf(currentIndex + 1);

    if (nextIndex != -1 && nextIndex < nodes.length) {
      return nodes[nextIndex];
    }

    return null; // Return null if there’s no valid next focus
  }

  FocusNode? findPreviousFocus(FocusNode currentNode) {
    List<FocusNode> nodes = currentNode.nearestScope!.traversalDescendants.toList();
    int currentIndex = nodes.indexOf(currentNode);

    // Define your custom order for previous focus
    List<int> customOrder = [8, 7, 3, 2, 1]; // Reverse of findNextFocus order

    // Find the previous index in your custom order
    int prevIndex = customOrder.indexOf(currentIndex - 1);

    if (prevIndex != -1 && prevIndex < nodes.length) {
      return nodes[prevIndex];
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
  Iterable<FocusNode> sortDescendants(Iterable<FocusNode> descendants, FocusNode currentNode) {
    // Custom sort if needed. For simplicity, return the descendants as is.
    return descendants;
  }

  @override
  FocusNode? findFirstFocusInDirection(FocusNode currentNode, TraversalDirection direction) {
    // Depending on the direction, you can find and return the appropriate focus node.
    // For simplicity, let's use the next focus node regardless of direction.
    return findNextFocus(currentNode);
  }
}
