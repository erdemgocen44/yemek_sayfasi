import 'package:flutter/material.dart';

class FoodView extends StatefulWidget {
  @override
  _FoodViewState createState() => _FoodViewState();
}

class _FoodViewState extends State<FoodView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      floatingActionButton: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton.extended(
              onPressed: () {},
              label: Text('    Add to Groseries    '),
              backgroundColor: Color(0xFF443A39),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey[200],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Spicy Arrabiata Pasta',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: 'NewRocker',
                    fontSize: 20,
                    color: Color(0xFF443A39),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.timer),
                  SizedBox(width: 15),
                  Text(
                    '30-40 min',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 13, color: Color(0xFFA19C9C)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Card(
                          elevation: 10,
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Image.asset(
                            'assets/images/yemek5.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Card(
                          elevation: 10,
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Image.asset(
                            'assets/images/yemek6.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Card(
                          elevation: 10,
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Image.asset(
                            'assets/images/yemek7.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'F??r??nda Ka??arl?? Ispanak Yeme??i',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'NewRocker',
                              fontSize: 20,
                              color: Color(0xFF443A39),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Ya??lanm???? borcama ??spanakl?? patatesli kar??????m?? aktar??n, ??zerini spatula yard??m??yla d??zle??tirin. Bir tencerede un ve tereya????n?? kavurun. ??zerine azar azar s??t ilave edin.',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 13, color: Color(0xFFA19C9C)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '????indekiler',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'NewRocker',
                              fontSize: 20,
                              color: Color(0xFF443A39),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Ispanak',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'NewRocker',
                              fontSize: 17,
                              color: Color(0xFF443A39),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '500 gr',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 13, color: Color(0xFFA19C9C)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'So??an',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'NewRocker',
                              fontSize: 17,
                              color: Color(0xFF443A39),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '2 Adet',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 13, color: Color(0xFFA19C9C)),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Pul Biber',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'NewRocker',
                              fontSize: 17,
                              color: Color(0xFF443A39),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '100 gr',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 13, color: Color(0xFFA19C9C)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Ispanak',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'NewRocker',
                              fontSize: 17,
                              color: Color(0xFF443A39),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '500 gr',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 13, color: Color(0xFFA19C9C)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'So??an',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'NewRocker',
                              fontSize: 17,
                              color: Color(0xFF443A39),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '2 Adet',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 13, color: Color(0xFFA19C9C)),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Pul Biber',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'NewRocker',
                              fontSize: 17,
                              color: Color(0xFF443A39),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '100 gr',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 13, color: Color(0xFFA19C9C)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Yap??l??????',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'NewRocker',
                              fontSize: 20,
                              color: Color(0xFF443A39),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
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
