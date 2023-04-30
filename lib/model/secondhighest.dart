class SecondHighestLogic {
  static String secondHighest(List<int> numbers) {
    if (numbers.length < 2) {
      return 'Not enough numbers';
    }

    int highest = -1;
    int secondHighest = -1;

    for (int number in numbers) {
      if (number > highest) {
        secondHighest = highest;
        highest = number;
      } else if (number > secondHighest && number < highest) {
        secondHighest = number;
      }
    }

    return 'Second Highest: $secondHighest';
  }
}
