class Question {
  String questionText;
  bool questionAnswer;

  Question (String a, bool b,)
  {
  questionText = a;
  questionAnswer = b;
}
}

Question newQuestion = Question('text', false);