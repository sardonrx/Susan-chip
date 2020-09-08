import 'package:flutter/material.dart';
import  'question.dart';


void main() => runApp(ScoreKeeper());

class ScoreKeeper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}
class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List<Icon> score =[];

  List<Question> questionClass= [

    Question(a: 'is this app making sense ', b: false),
    Question(a: 'do you think the owner of this app is great', b: true),
    Question(a: 'do you love me', b: true),
    Question(a: 'do you believe in jesus ', b: true),
    Question(a: 'do you think i love seyi', b: false),
    Question(a: 'is seyi cute', b: true),
    Question(a: 'is susan cute ', b: true),
    Question(a: 'do you know susan love seyi so much', b: true),
    Question(a: 'are you a fool', b: false),
    Question(a: 'im scared, are you?', b: false),
    Question(a: 'do you think i fear the unknown', b: true),
    Question(a: 'do you think i lack confidence', b: true),
    Question(a: 'i cry always', b: true),
    Question(a: 'im lazy and i procastinate alots', b: true),
    Question(a: 'very scared of getting a new job', b: true),
    Question(a: 'everything will be fine soon', b: true),

  ];
  int  questionTracker = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionClass[questionTracker].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: (){
                bool confirmAnswers = questionClass[questionTracker].questionAnswer;
                if(confirmAnswers == true){
                  print('seyi is an idiot');
                }else {
                  print('seyooo is mad ');
                }
                setState ((){
                 questionTracker++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                   bool confirmAnswers = questionClass[questionTracker].questionAnswer;
                   if(confirmAnswers== false){
                     print('i love my own life like mad nothin more');
                   }else{
                     print('okay dont be mad');
                   }
                setState((){
                  questionTracker++;
                  print(questionTracker);
                });
              }
            ),
          ),
        ),
        Row(
          children:score,
        ),
      ],
    );
  }
}

