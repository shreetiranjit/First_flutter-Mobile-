class BmiLogic {
  static String calculateBmi(double height, double weight) {
    if (height <= 0 || weight <= 0) {
      return 'Invalid input';
    }

    double heightInMeters = height / 100;
    double bmi = weight / (heightInMeters * heightInMeters);

    return 'BMI: ${bmi.toStringAsFixed(2)}';
  }
}
