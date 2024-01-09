class QuizQuestions {
  QuizQuestions( this.question, this.answers);

  final String question;
  final List<String> answers;


  List<String> getShuffleAnswer(){
    var shuffleLister = List.of(answers);
    shuffleLister.shuffle();
    return shuffleLister;
  }
}
