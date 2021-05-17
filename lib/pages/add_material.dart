import 'package:flutter/material.dart';

class AddMaterial extends StatefulWidget {
  @override
  _AddMaterialState createState() => _AddMaterialState();
}

class _AddMaterialState extends State<AddMaterial> {
  bool valueCherry = false;
  bool valueRed = false;
  bool valueOil = false;
  bool valueOnion = false;
  bool valueGarlic = false;
  bool valueChilles = false;
  bool valueSalt = false;
  bool valuePepper = false;
  bool valueChopped = false;

  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    print(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Groceries',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'NewRocker',
                          fontSize: 32,
                          color: Color(0xFF443A39),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  FloatingActionButton.extended(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onPressed: () {
                      _incrementCounter();
                    },
                    label: Text(
                      '+',
                      style: TextStyle(
                        fontFamily: 'NewRocker',
                        fontSize: 32,
                        color: Color(0xFF443A39),
                      ),
                    ),
                    backgroundColor: Color(0xFFFFFFFF),
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
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '$_counter halved',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                    ),
                    value: this.valueCherry,
                    onChanged: (bool value) {
                      setState(() {
                        this.valueCherry = value;
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
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '$_counter halved',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                    ),
                    value: this.valueRed,
                    onChanged: (bool value) {
                      setState(() {
                        this.valueRed = value;
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
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '$_counter halved',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                    ),
                    value: this.valueOil,
                    onChanged: (bool value) {
                      setState(() {
                        this.valueOil = value;
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
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '$_counter halved',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                    ),
                    value: this.valueOnion,
                    onChanged: (bool value) {
                      setState(() {
                        this.valueOnion = value;
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
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '$_counter halved',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                    ),
                    value: this.valueGarlic,
                    onChanged: (bool value) {
                      setState(() {
                        this.valueGarlic = value;
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
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '$_counter halved',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                    ),
                    value: this.valueChilles,
                    onChanged: (bool value) {
                      setState(() {
                        this.valueChilles = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text(
                      'Sea salt',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          letterSpacing: 0.5,
                          fontSize: 16,
                          color: Color(0xFF443A39),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '$_counter halved',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                    ),
                    value: this.valueSalt,
                    onChanged: (bool value) {
                      setState(() {
                        this.valueSalt = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text(
                      'Black pepper',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          letterSpacing: 0.5,
                          fontSize: 16,
                          color: Color(0xFF443A39),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '$_counter halved',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                    ),
                    value: this.valuePepper,
                    onChanged: (bool value) {
                      setState(() {
                        this.valuePepper = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text(
                      'Chopped tomatoes',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          letterSpacing: 0.5,
                          fontSize: 16,
                          color: Color(0xFF443A39),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '$_counter halved',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFA19C9C)),
                      ),
                    ),
                    value: this.valueChopped,
                    onChanged: (bool value) {
                      setState(() {
                        this.valueChopped = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
