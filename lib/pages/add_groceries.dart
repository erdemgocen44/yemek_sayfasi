import 'package:flutter/material.dart';

class AddGroseries extends StatefulWidget {
  @override
  _AddGroseriesState createState() => _AddGroseriesState();
}

class _AddGroseriesState extends State<AddGroseries> {
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;
  bool valuefourth = false;
  bool valuefifth = false;
  bool valuesixth = false;
  bool valueseventh = false;
  bool valueeight = false;
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    void _incrementCounter() {
      setState(() {
        _counter++;
      });

      print(_counter);
    }

    void _incrementCounterEksi() {
      setState(() {
        if (_counter != 0) _counter--;
      });
      print(_counter);
    }

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: FloatingActionButton.extended(
              backgroundColor: Color(0xFFFFFFFF),
              onPressed: () {
                Navigator.pop(context);
              },
              label: Text(
                '      Cancel      ',
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF443A39),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          FloatingActionButton.extended(
            backgroundColor: Color(0xFF443A39),
            onPressed: () {
              AlertDialog alert = AlertDialog(
                backgroundColor: Colors.transparent,
                elevation: 0,
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check,
                      color: Color(0xFF443A39),
                      size: 30,
                    ),
                    Text(
                      'Added',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF443A39),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
              showDialog(
                barrierColor: Colors.white.withOpacity(0.8),
                barrierDismissible: false,
                context: context,
                builder: (BuildContext context) {
                  return WillPopScope(onWillPop: () {}, child: alert);
                },
              );
            },
            label: Text(
              '        Add        ',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
        child: ListView(
          children: [
            Text(
              'Add to Groseries',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: 'NewRocker',
                  fontSize: 21,
                  color: Color(0xFF443A39),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Select number of servings and add ingredients to your groceries.',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Serving',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF443A39),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 100),
                    FloatingActionButton.extended(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      label: Text(
                        '-',
                        style: TextStyle(
                            color: Color(0xFF443A39),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      backgroundColor: Colors.white,
                      onPressed: _incrementCounterEksi,
                    ),
                    Text(
                      '$_counter',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF443A39),
                          fontWeight: FontWeight.bold),
                    ),
                    FloatingActionButton.extended(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      label: Text(
                        '+',
                        style: TextStyle(
                            color: Color(0xFF443A39),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      backgroundColor: Colors.white,
                      onPressed: _incrementCounter,
                    ),
                  ],
                ),
                Column(
                  children: [
                    CheckboxListTile(
                      title: const Text(
                        'Cherry Tomatoes',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 16,
                            color: Color(0xFF443A39),
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '$_counter halved',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                      value: this.valuefirst,
                      onChanged: (bool value) {
                        setState(() {
                          this.valuefirst = value;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text(
                        'Red pepper',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 16,
                            color: Color(0xFF443A39),
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '$_counter, seeds removed and sliced',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                      value: this.valuesecond,
                      onChanged: (bool value) {
                        setState(() {
                          this.valuesecond = value;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text(
                        'Olive oil',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 16,
                            color: Color(0xFF443A39),
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '$_counter tbs',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                      value: this.valuethird,
                      onChanged: (bool value) {
                        setState(() {
                          this.valuethird = value;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text(
                        'Onion',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 16,
                            color: Color(0xFF443A39),
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '$_counter tbs',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                      value: this.valuefourth,
                      onChanged: (bool value) {
                        setState(() {
                          this.valuefourth = value;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text(
                        'Garlic cloves',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 16,
                            color: Color(0xFF443A39),
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '$_counter minced',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                      value: this.valuefifth,
                      onChanged: (bool value) {
                        setState(() {
                          this.valuefifth = value;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text(
                        'Red chillies',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 16,
                            color: Color(0xFF443A39),
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '$_counter minced',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                      value: this.valuesixth,
                      onChanged: (bool value) {
                        setState(() {
                          this.valuesixth = value;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text(
                        'Garlic cloves',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 16,
                            color: Color(0xFF443A39),
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '$_counter minced',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                      value: this.valueseventh,
                      onChanged: (bool value) {
                        setState(() {
                          this.valueseventh = value;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text(
                        'Red chillies',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 16,
                            color: Color(0xFF443A39),
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '$_counter minced',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                      value: this.valueeight,
                      onChanged: (bool value) {
                        setState(() {
                          this.valueeight = value;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text(
                        'Cherry Tomatoes',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 16,
                            color: Color(0xFF443A39),
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '$_counter halved',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                      value: this.valuefirst,
                      onChanged: (bool value) {
                        setState(() {
                          this.valuefirst = value;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text(
                        'Red pepper',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 16,
                            color: Color(0xFF443A39),
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '$_counter, seeds removed and sliced',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                      value: this.valuesecond,
                      onChanged: (bool value) {
                        setState(() {
                          this.valuesecond = value;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text(
                        'Olive oil',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 16,
                            color: Color(0xFF443A39),
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '$_counter tbs',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                      value: this.valuethird,
                      onChanged: (bool value) {
                        setState(() {
                          this.valuethird = value;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
