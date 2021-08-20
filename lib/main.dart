import 'result.dart';
import 'quiz.dart';
import 'package:flutter/material.dart';
import 'Question.dart';
import 'Answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(title: 'Quiz App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
Color C=Colors.amberAccent;
Color w=Colors.white;
Color d=Colors.black;
Color bl=Colors.black;
class _MyHomePageState extends State<MyHomePage> {
  int _i =0;
  var index=0;
  final List<Map<String,Object>>_Question = [
    { 'q1':"whats u fav color?",
    'ans':[{"text":"bink ","score":10},
      {"text":"black","score":30},
  {"text":'red',"score":20},
  {"text":"yallow","score":40}],
    },
{'q1':"what\'s u fav animal ?",
  'ans':[{"text":"mouse","score":10},
{"text":"cat","score":30},
{  "text": 'rabbit',"score":20},
{  "text": "lion","score":40},],
},
{'q1':"what\'s u fav country?",
  'ans':[{  "text":"egy","score":10},
{  "text":"usa","score":30},
  {  "text":'emrat',"score":20},
    {  "text":"frh","score":40}],
}

  ];
  int _total=0;
  bool isswitch=false;


  void resat(){
    setState((){
      _total=0;
      _i=0;
      dgr[0]=0;
      dgr[1]=0;
      dgr[2]=0;
    });
  }
  void answerQuestion(int score) {

      print(_i);
     print("answer q ");
   _total+=score;
    setState(() {
     _i+=1;
      });

      dgr[index]=score;

     print("${dgr[index]}in");
     setState(() {
        if(index>0){
          index++;

      }

     });
  }
  List dgr=[0,0,0];
  void back() {
      _total=_total-dgr[index];
      if(index>0){
      index--;}

  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: <Widget>[
          Switch(value: isswitch, onChanged: (value){setState(() {
            isswitch=value;
            if(isswitch==true){d=Colors.white;
            bl=Colors.white;
            w=Colors.black;
            C=Colors.black54;

            }
            if(isswitch==false){d=Colors.black;
            w=Colors.white;
            bl=Colors.black;
            C=Colors.amberAccent;
            }

          });},
            inactiveThumbColor: Colors.redAccent,
            inactiveTrackColor: Colors.amberAccent[300],
          activeColor: w,
          )
        ],
      ),
      body: Card(
        color: C,
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: _i<_Question.length ?Quiz(_Question,_i,answerQuestion)
                  :Result(resat,_total)
            )
          ],
        ),

      ), // This trailing comma makes auto-formatting nicer for build methods.
        floatingActionButton:Container(
       child: FloatingActionButton(
         backgroundColor: d,
             child: Icon(Icons.arrow_back,color: w,),
         onPressed: (){
           setState(() {
             if(_i>0){
               _i--;
               back();

             }
           });

         },
       ))
    );

  }
}
