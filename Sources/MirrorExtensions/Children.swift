extension Mirror {
  /// Creates a `Collection` of elements that contains all of the children of `self` that conform to `T`.
  ///
  ///     struct Struct {
  ///       let boolean1 = true
  ///       let integer1 = 1
  ///       let string1 = "a"
  ///       let boolean2 = false
  ///       let integer2 = 2
  ///       let string2 = "b"
  ///       let integer3 = 3
  ///     }
  ///
  ///     print(Mirror(reflecting: Struct()).children() as [Int])
  ///     // [1, 2, 3]
  ///
  /// - Returns: A `Collection` of elements that contains all of the children of `self` that conform to `T`.
  func children <T> () -> [T] {
    return self
      .children
      .filter { child in
        if child.value as? T != nil {
          return true
        }

        return false
      }
      .map { child in
        return child.value as! T
      }
  }
}
