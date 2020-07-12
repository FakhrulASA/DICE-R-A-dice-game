import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int sate = 1;
  int sate2 = 1;
  int step = 0;
  int score = 0;
  void changeDice() {
    sate = Random().nextInt(6) + 1;
    sate2 = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    int total = sate + sate2;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DICE R'),
          backgroundColor: Colors.red[800],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                              '$step',
                              style: TextStyle(
                                  fontSize:75,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red[600]),
                            ),
                ),
              Container(
                child: Row(
                  children: <Widget>[
                     
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            changeDice();
                            step = step + 1;
                            score = score + sate + sate2;
                          });
                        },
                        child: Image.asset('images/d$sate.png'),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            changeDice();
                            step = step + 1;
                            score = score + sate + sate2;
                          });
                        },
                        child: Image.asset('images/d$sate2.png'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'The Left dic is: $sate',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.deepPurple[400]),
                          ),
                          Text(
                            'The Left dic is: $sate2',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.deepPurple[400]),
                          ),
                          Text(
                            'The sum of two dice is: $total',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue[500]),
                          ),
                       
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              'FINAL SCORE: $score',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red[600]),
                            ),
                          ),
                          RaisedButton(onPressed: () {
                            setState(() {
                              sate = 1;
                              sate2 = 1;
                              step = 0;
                              score = 0;
                            });
                            
                          },
                          
                          padding: EdgeInsets.all(15),
                          color: Colors.indigoAccent[400],
                          child: Text('PLAY AGAIN',
                          style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                          
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
