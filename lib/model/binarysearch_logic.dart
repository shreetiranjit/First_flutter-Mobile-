class BinarySearchLogic {
  static String binarySearch(List<int> numbers, int searchNumber) {
    List<int> sortedNumbers = List.from(numbers)..sort();

    int left = 0;
    int right = sortedNumbers.length - 1;

    while (left <= right) {
      int middle = left + (right - left) ~/ 2;

      if (sortedNumbers[middle] == searchNumber) {
        return 'Found at index: $middle';
      }

      if (sortedNumbers[middle] < searchNumber) {
        left = middle + 1;
      } else {
        right = middle - 1;
      }
    }

    return 'Not found';
  }
}
