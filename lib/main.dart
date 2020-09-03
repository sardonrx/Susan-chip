import 'package:flutter/material.dart';

void main() => runApp(Quizzer());

class Quizzer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('QUIZZER APP') ,
        ),
        backgroundColor: Colors.black38,
        body: SafeArea(
          child:Padding(
            padding:EdgeInsets.symmetric(horizontal:10.0 ),
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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
       Expanded(
         child: Padding(
           padding: EdgeInsets.all(10.0) ,
             child: Center(
                 child: Text(
                     'the text here',
                 textAlign: TextAlign.center,
                 style: TextStyle(

                 ),
                 ),
             ),
         ),
       ),
      ],
    );
  }
}





