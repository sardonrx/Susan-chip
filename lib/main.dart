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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding:EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                    'here is where the text goes ooooooooooooooooooooooooooo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25.0, color: Colors.white
                  ),
                ),
              ),
          ),
        ),
       Expanded(
         child: FlatButton(
           color: Colors.blueAccent,
           child: Padding(
               padding: EdgeInsets.all(15.0),
               child: Center(
                   child: Text(
                   'TRUE'
                   ),
               ),
           ),
           onPressed:() {
         },
         ),
       ),
        Expanded(
          child: FlatButton(
            color: Colors.red[900],
            child: Padding(
              padding: EdgeInsets.all(15.0),
                child: Text('FALSE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                ),
                ),
            ),
            onPressed: (){

            },
          ),
        ),
      ],
    );
  }
}





