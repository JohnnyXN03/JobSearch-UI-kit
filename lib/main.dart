import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.black,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _seletedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _seletedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Icon(Icons.search),
        ],
        title: Text('Jobs'),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      drawer: Drawer(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Colors.white),
                    height: 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Featured Jobs',
                          style: TextStyle(
                            color: Colors.black87,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Container(
                      margin: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width,
                      height: 310,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Card(
                            elevation: 5,
                            margin: EdgeInsets.symmetric(
                                vertical: 25, horizontal: 7),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              width: 350,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [
                                  Color(0xFFfbc531),
                                  Color(0xFFedd942),
                                ],
                              )),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'Royal Cyber',
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        Icon(
                                          Icons.favorite,
                                          size: 15,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(15),
                                      child: Text(
                                        'Mobile Application Designer',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          height: 60,
                                          padding: EdgeInsets.only(right: 20),
                                          child: Text(
                                            'Remote | Full Time | 6 Lpa',
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            CircleAvatar(
                                              radius: 10,
                                              backgroundColor: Colors.red,
                                            ),
                                            CircleAvatar(
                                              radius: 10,
                                              backgroundColor: Colors.blue,
                                            ),
                                            CircleAvatar(
                                              radius: 10,
                                              backgroundColor: Colors.green,
                                            ),
                                            Text('  + 2.3k')
                                          ],
                                        ),
                                        RaisedButton(
                                          onPressed: () {},
                                          elevation: 3,
                                          color: Colors.blue,
                                          child: Text(
                                            'Apply',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 5,
                            margin: EdgeInsets.symmetric(
                                vertical: 25, horizontal: 7),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              width: 350,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [
                                  Color(0xFFe84118),
                                  Color(0xFFff7675),
                                ],
                              )),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'Amazon',
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        Icon(
                                          Icons.favorite,
                                          size: 15,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(15),
                                      child: Text(
                                        'Web Application Designer',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          height: 60,
                                          padding: EdgeInsets.only(right: 20),
                                          child: Text(
                                            'Remote | Part Time | 5 Lpa',
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            CircleAvatar(
                                              radius: 10,
                                              backgroundColor: Colors.yellow,
                                            ),
                                            CircleAvatar(
                                              radius: 10,
                                              backgroundColor: Colors.blue,
                                            ),
                                            CircleAvatar(
                                              radius: 10,
                                              backgroundColor: Colors.green,
                                            ),
                                            Text('  + 2.5k')
                                          ],
                                        ),
                                        RaisedButton(
                                          onPressed: () {},
                                          elevation: 3,
                                          color: Colors.blue,
                                          child: Text(
                                            'Apply',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Top Companies',
                          style: TextStyle(
                            color: Colors.black87,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.normal,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: 230,
                child: ListView(
                  children: <Widget>[
                    Card(
                      elevation: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                child: Text('FB'),
                              ),
                              Text('Facebook'),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                child: CircleAvatar(
                                  child: Text('ACC'),
                                ),
                              ),
                              Text('Accenture'),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                child: CircleAvatar(
                                  child: Text('FKT'),
                                ),
                              ),
                              Text('Flipkart'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                              child: Text('HCL'),
                              ),
                              Text('HCL'),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                child: Text('AZ')
                              ),
                              Text('Amazon'),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                child: Text('GGL')
                              ),
                              Text('Google'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                child: Text('TCS')
                              ),
                              Text('TCS'),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                child: Text('UNI')
                              ),
                              Text('Unisys'),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                child: Text('WIP')
                              ),
                              Text('Wipro'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 0,
                      child: Card(
                        elevation: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 30,
                                  child: Text('MS')
                                ),
                                Text('Microsoft'),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 30,
                                  child: Text('OCL')
                                ),
                                Text('Oracle'),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 30,
                                  child: Text('INF')
                                ),
                                Text('Infosys'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.home,
              size: 20,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.shoppingBag,
              size: 20,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.plus,
              size: 20,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.facebookMessenger,
              size: 20,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.idBadge,
              size: 20,
            ),
            title: Text(''),
          ),
        ],
        currentIndex: _seletedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
