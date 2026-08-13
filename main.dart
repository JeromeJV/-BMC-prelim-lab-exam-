//Valdpeena, Harvey Jerome
import 'dart:io';

void main() {
  print('         GRADE CALCULATOR          ');

stdout.write('Enter your name ');
    String? name = stdin.readLineSync();

stdout.write('Enter your age ');
    String? input = stdin.readLineSync();
    int? age = int.tryParse(input ?? '');
    int numberOfQuizzes = 0;

  while (numberOfQuizzes <= 0) {
    stdout.write('Enter the number of quizzes you had: ');
    String? input = stdin.readLineSync();
    int? parsed = int.tryParse(input ?? '');

    if (parsed != null && parsed > 0) {
      numberOfQuizzes = parsed;
    } else {
      print('Please enter a positive integer.');
    }
  }

  double totalQuiz = 0.0;
  int count = 0; 

  while (count < numberOfQuizzes) {
    count++; 
    double score = readBoundedDouble('Enter score for Quiz $count : ', 0.0, 100.0);
    totalQuiz += score; 
  }

  double quizAverage = totalQuiz / numberOfQuizzes;



  print('          GRADE SUMMARY            ');
  print('Your name is: ${name}');
  print('Your age is: ${age}');
  print('Quiz Average : ${quizAverage.toStringAsFixed(2)}%');

  if (quizAverage >= 90) {
    print('Excellent, Aliah! Grade: A');
  } else if (quizAverage >= 80) {
    print('Very good, Aliah! Grade: Passed');
  } else if (quizAverage >= 70) {
    print('Good, Aliah! Grade: C');
  } else if (quizAverage >= 60) {
    print('Needs improvement. Grade: D');
  } else {
    print('At risk, Aliah. Grade: F');
  }
  print('Remarks: Good job, keep it up!');
}

double readPositiveDouble(String prompt) {
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    double? value = double.tryParse(input ?? '');

    if (value != null && value >= 0) {
      return value;
    }
    print('Invalid input! Please enter a non-negative number.');
  }
}

double readBoundedDouble(String prompt, double min, double max) {
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    double? value = double.tryParse(input ?? '');

    if (value != null && value >= min && value <= max) {
      return value;
    }
    print('Invalid score! Please enter a value between $min and $max.');
  }
}

// In this code i use if else is for checking the average of the grade of the student and i use count 
// to to know the score on the quiz. 