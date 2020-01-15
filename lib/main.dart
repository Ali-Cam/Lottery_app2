
import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
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
  final format = DateFormat("yyyy-MM-dd");

  TextEditingController timeFieldController = TextEditingController();
  TextEditingController dateFieldController = TextEditingController();
  TextEditingController firstInputFieldController = TextEditingController();
  TextEditingController secondInputFieldController = TextEditingController();
  TextEditingController thirdFieldController = TextEditingController();
  TextEditingController fourthInputFieldController = TextEditingController();
  TextEditingController fifthInputFieldController = TextEditingController();
  TextEditingController sixthFieldController = TextEditingController();
  TextEditingController seventhInputFieldController = TextEditingController();
  TextEditingController eightInputFieldController = TextEditingController();
  TextEditingController ninthFieldController = TextEditingController();


  TimeOfDay _time = TimeOfDay.now();
  TimeOfDay picked;

  Future<Null> selectTime(BuildContext context) async{
    picked = await showTimePicker(context: context,
        initialTime: _time);
    setState(() {
      picked != null ? _time = picked : _time = _time;

    });

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Lottery App',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'MaShanZheng',
              letterSpacing: 3,
            ),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: GestureDetector(
              onTap: (){
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Image.asset('images/images.jfif'),
                    ),
                    Container(
                        color: Colors.red,
                        height: 70,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                              children: <Widget>[
                                DateTimeField(
                                  controller: dateFieldController,
                                  decoration: InputDecoration(
                                    labelText: 'Date',
                                    labelStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    )
                                  ),
                                  format: format,
                                  onShowPicker: (context, currentValue) {
                                    return showDatePicker(
                                        context: context,
                                        firstDate: DateTime(1900),
                                        initialDate: currentValue ?? DateTime.now(),
                                        lastDate: DateTime(2100));
                                  },
                                ),
                              ]),
                        )
                    ),
                    Container(
                      color: Colors.amberAccent,
                      child: Table(
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        children: [
                          TableRow(
                              children: [
                                Container(
                                  height: 60,
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: TextField(
                                      controller: firstInputFieldController,
                                      decoration: InputDecoration(

                                        labelText: 'First Input',
                                        labelStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.black,
                                          height: 0.5,

                                        )
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: IconButton(
                                    icon: Icon(Icons.alarm),
                                    onPressed: (){
                                      selectTime(context);
                                    },
                                  ),
                                )
                              ]
                          )
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Table(
                        border: TableBorder.all(),
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        columnWidths: {0: FractionColumnWidth(.2)},
                        children: [
                          TableRow(children: [
                            Container(
                              alignment: Alignment.center,
                              height: 60,
                              child: Text('A'
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                alignment: Alignment.center,
                                child: TextField(
                                  controller: secondInputFieldController,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hasFloatingPlaceholder: true,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                alignment: Alignment.center,
                                child: TextField(
                                  controller: thirdFieldController,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hasFloatingPlaceholder: true,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Container(
                              alignment: Alignment.center,
                              height: 60,
                              child:  Text('B'),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                alignment: Alignment.center,
                                child: TextField(
                                  controller: fourthInputFieldController,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hasFloatingPlaceholder: true,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                alignment: Alignment.center,
                                child: TextField(
                                  controller: fifthInputFieldController,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hasFloatingPlaceholder: true,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Container(
                              alignment: Alignment.center,
                              height: 60,
                              child: Text('C'),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                alignment: Alignment.center,
                                child: TextField(
                                  controller: sixthFieldController,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hasFloatingPlaceholder: true,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                alignment: Alignment.center,
                                child: TextField(
                                  controller: seventhInputFieldController,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hasFloatingPlaceholder: true,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Container(
                              alignment: Alignment.center,
                              height: 60,
                              child: Text('D'),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                alignment: Alignment.center,
                                child: TextField(
                                  controller: eightInputFieldController,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hasFloatingPlaceholder: true,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                alignment: Alignment.center,
                                child: TextField(
                                  controller: ninthFieldController,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hasFloatingPlaceholder: true,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      child: Text(
                      'Apply'
                      ),
                      onPressed: (){
                        _navigateToSecondScreen(context);
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ),
    );
  }

  void _navigateToSecondScreen(BuildContext context){
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => _SecondScreen(date: dateFieldController.text, time: _time, first: firstInputFieldController.text, second: secondInputFieldController.text,
      third: thirdFieldController.text, fourth: fourthInputFieldController.text, fifth: fifthInputFieldController.text, sixth: sixthFieldController.text,
      seventh: seventhInputFieldController.text, eighth: eightInputFieldController.text, ninth: ninthFieldController.text,),
    ));
  }
}

class _SecondScreen extends StatefulWidget {
  final String date;
  final TimeOfDay time;
  final String first;
  final String second;
  final String third;
  final String fourth;
  final String fifth;
  final String sixth;
  final String seventh;
  final String eighth;
  final String ninth;

  _SecondScreen({Key key,
          @required this.date,
          @required this.time,
          @required this.first,
          @required this.second,
          @required this.third,
          @required this.fourth,
          @required this.fifth,
          @required this.sixth,
          @required this.seventh,
          @required this.eighth,
          @required this.ninth,
                }) : super(key: key);
  @override
  __SecondScreenState createState() => __SecondScreenState(date, time, first, second, third, fourth, fifth, sixth, seventh, eighth, ninth);
}

class __SecondScreenState extends State<_SecondScreen> {
    String date; TimeOfDay time; String first;
    String second;
    String third;
    String fourth;
    String fifth;
    String sixth;
    String seventh;
    String eighth;
    String ninth;
    __SecondScreenState(this.date, this.time, this.first, this.second, this.third
        , this.fourth, this.fifth, this.sixth, this.seventh, this.eighth, this.ninth);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Lottery App',
            style: TextStyle(
              fontFamily: 'MaShanZheng',
              fontSize: 40,
            ),
          ),
        ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset('images/images.jfif'),
            ),
            Container(
              color: Colors.red,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: 60,
                        alignment: Alignment.center,
                        child: Text(date != "" ? date : 'N/V',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SourceSerifPro',
                          fontWeight: FontWeight.bold,
                        ),) ,
                      ),
                    )

                  ],
              ),
            ),
            Container(
              color: Colors.amberAccent,
              child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                      children: [
                        Container(
                          height: 60,
                          alignment: Alignment.center,
                          child: Text(first != "" ? first : 'N/V',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'SourceSerifPro'
                          ),),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(time != null ? time.format(context) : 'N/V',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'SourceSerifPro'
                          ),),
                        )
                      ]
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Table(
                border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                columnWidths: {0: FractionColumnWidth(.2)},
                children: [
                  TableRow(children: [
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      child: Text('A',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontFamily: 'SourceSerifPro'
                        ),
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      child: Text(second != "" ? second : 'N/V',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'SourceSerifPro'
                        ),)
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(third != "" ? third : 'N/V',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'SourceSerifPro'
                        ),)
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      child:  Text('B',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontFamily: 'SourceSerifPro'
                        ),),
                    ),

                    Container(
                      alignment: Alignment.center,
                      child: Text(fourth != "" ? fourth : 'N/V',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'SourceSerifPro'
                        ),)
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(fifth != "" ? fifth : 'N/V',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'SourceSerifPro'
                        ),)
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      child: Text('C',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontFamily: 'SourceSerifPro'
                        ),),
                    ),

                    Container(
                      alignment: Alignment.center,
                      child: Text(sixth != "" ? sixth : 'N/V',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'SourceSerifPro'
                        ),)
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(seventh != "" ? seventh : 'N/V',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'SourceSerifPro'
                        ),)
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      child: Text('D',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontFamily: 'SourceSerifPro'
                        ),),
                    ),

                    Container(
                      alignment: Alignment.center,
                      child: Text(eighth != "" ? eighth : 'N/V',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'SourceSerifPro'
                        ),)
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(ninth != "" ? ninth : 'N/V',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'SourceSerifPro'
                        ),)
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }


}



