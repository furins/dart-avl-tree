`avl_tree` provides  an implementation of am [AVL Tree](http://en.wikipedia.org/wiki/AVL_tree),
a self-balancing binary search-tree.
 
The implementation is basically a port from the [implementation in Java
by Justin Wheterell](https://code.google.com/p/java-algorithms-implementation/).
 
This implementation provides two custom features usually not present in
AVL trees:
 
1. The methods `add`, `remove`, or `contains` not only accept a value to be
   added, removed, or tested,
   but optionally also a compare function to be used in this very invocation only.
   This comes in handy, if a more efficient compare function can be
   used in a specific invocation. Example: the dynamically changing search
   tree of intersecting line segments in the
   [Bentley-Ottman-Algorithm](http://en.wikipedia.org/wiki/Bentley%E2%80%93Ottmann_algorithm).
 
2. The tree can (optionally) store multiple values which are equal with respect
   to the tree ordering, but not identical with respect to Darts `identical()`
   function. One application is again the implementation of the Y-structure
   in the [Bentley-Ottman-Algorithm](http://en.wikipedia.org/wiki/Bentley%E2%80%93Ottmann_algorithm),
   where multiple overlapping line segments can be handled as equivalence
   class of line segments stored in one tree node.
 
## Simple example (not using advanced features)
```dart
// create a tree, and use some methods
var tree = new AvlTree<int>();
tree.add(0);
tree.add(1);
tree.add(2);
print(tree.inorder.toList());  // -> [0,1,2]
tree.remove(2);
print(tree.inorder.toList());  // -> [0,1]
print(tree.contains(0));       // true
```

## API documentation
See [output from dartdoc](http://gubaer.github.io/dart-avl-tree/doc/index.html)

## Depend on it
`avl_tree` is available from [pub.dartlang.org](http://pub.dartlang.org). Add 

```
dependencies:
  avl_tree: 0.0.2
```
to your `pubspec.yaml`.

See [version history](http://pub.dartlang.org/packages/avl_tree).

## Status

[![Build Status](https://drone.io/github.com/Gubaer/dart-avl-tree/status.png)](https://drone.io/github.com/Gubaer/dart-avl-tree/latest)

## License 
`avl_tree` is licensed under the Apache 2.0 license, see files LICENSE and NOTICE.

	