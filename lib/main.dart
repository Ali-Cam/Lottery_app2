import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Lottery App',
      home: _FirstScreen(),
    );
  }
}

class _FirstScreen extends StatefulWidget {
  @override
  __FirstScreenState createState() => __FirstScreenState();
}

class __FirstScreenState extends State<_FirstScreen> {
  TextEditingController nameFieldController = TextEditingController();
  TextEditingController ageFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Lottery App',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'MaShanZheng',
              letterSpacing: 3,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'name'
                ),
                controller: nameFieldController,
                style: TextStyle(
                  fontFamily: 'SourceSerifPro',
                  fontSize: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'age'
                ),
                controller: ageFieldController,
                style: TextStyle(
                  fontFamily: 'SourceSerifPro',
                  fontSize: 24,
                ),
              ),
            ),
            RaisedButton(
                child: Text(
                  'Go to second screen',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                onPressed: (){
                  _navigateToSecondScreen(context);
                },
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToSecondScreen(BuildContext context){
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => _SecondScreen(name: nameFieldController.text, age: ageFieldController.text,),
    ));
  }
}

class _SecondScreen extends StatefulWidget {
  final String name;
  final String age;
  _SecondScreen({Key key, @required this.name, @required this.age}) : super(key: key);
  @override
  __SecondScreenState createState() => __SecondScreenState(name, age);
}

class __SecondScreenState extends State<_SecondScreen> {
    String name;
    String age;
    __SecondScreenState(this.name, this.age);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Lottery App',
            style: TextStyle(
              fontFamily: 'MaShanZheng',
              fontSize: 40,
            ),
          ),
        ),
      body: Center(
        child: Text(name == '' || age == '' ? "Lake of information" :
        "Hi my name is "+name+" and I'm "+age+" yesrs old.",
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'SourceSerifPro'
          ),
        ),
      ),
      ),
    );
  }


}



