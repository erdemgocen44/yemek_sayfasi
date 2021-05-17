import 'package:flutter/material.dart';
import 'package:yemek_sayfasi/pages/add_groceries.dart';
import 'package:yemek_sayfasi/pages/add_material.dart';
import 'package:yemek_sayfasi/pages/food_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => YemekPage(),
        '/material': (context) => AddMaterial(),
        '/groceries': (context) => AddGroseries(),
        '/food': (context) => FoodView(),
      },
    );
  }
}

class YemekPage extends StatefulWidget {
  @override
  _YemekPageState createState() => _YemekPageState();
}

class _YemekPageState extends State<YemekPage> {
  int seciliSayfa = 0;

  void sayfaDegistir(int index) {
    setState(() {
      seciliSayfa = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color(0xFFFFFFFF),
          ),
          child: BottomNavigationBar(
            currentIndex: seciliSayfa,
            onTap: (index) {
              switch (index) {
                case 0:
                  Navigator.pushNamed(context, '/');
                  break;
                case 1:
                  Navigator.pushNamed(context, '/material');
                  break;
                case 2:
                  Navigator.pushNamed(context, '/groceries');
                  break;
                case 3:
                  Navigator.pushNamed(context, '/food');
                  break;
              }
            },
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.black,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(
                  'Home',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text(
                  'Search',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                title: Text(
                  'Categories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text(
                  'Personal',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Good Afternoon',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: 'NewRocker',
                      color: Color(0xFF443A39),
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Here'some daily inspiration, just for you",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFA19C9C)),
                ),
                SizedBox(height: 25),
                Expanded(
                  child: ListView(
                    children: [
                      GestureDetector(
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Card(
                              elevation: 10,
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Image.asset(
                                'assets/images/yemek1.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              child: Container(
                                width: 250,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.grey[350].withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Spicy Arrabiata Pasta',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFF443A39),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 3, 10, 5),
                                      child: Text(
                                        'Pasta with hot papper',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF8D8786)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Card(
                              elevation: 10,
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Image.asset(
                                'assets/images/yemek1.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              child: Container(
                                width: 250,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.grey[350].withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Spicy Arrabiata Pasta',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFF443A39),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 3, 10, 5),
                                      child: Text(
                                        'Pasta with hot papper',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF8D8786)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Card(
                              elevation: 10,
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Image.asset(
                                'assets/images/yemek1.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              child: Container(
                                width: 250,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.grey[350].withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Spicy Arrabiata Pasta',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFF443A39),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 3, 10, 5),
                                      child: Text(
                                        'Pasta with hot papper',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF8D8786)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
