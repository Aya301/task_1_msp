import 'package:flutter/material.dart';
import 'package:my_project/splash.dart';
import 'bottom.dart';
import 'widgets.dart';
var c;
var o;
int n;
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: screen(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key,this.title}):super(key: key);
  final String title;
  @override
  _HomePageState createState()=> _HomePageState();
}
class _HomePage extends StatefulWidget{
  @override
  _HomePageState createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage>{
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(length: 4,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: c,
              bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.add_alert_rounded),
                  ),
                  Tab(
                    icon: Icon(Icons.comment),
                  ),
                  Tab(
                    icon: Icon(Icons.favorite),
                  ),
                  Tab(
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
              title: Text('Ramadan'),
              actions: [
                IconButton(icon: Icon(Icons.share), onPressed: () {}),
                PopupMenuButton(
                    color: o,
                    onSelected: (y) {
                      if (y == 0) {
                        setState(() {
                          c = Colors.blueAccent;
                          o = Colors.blue.shade50;
                        });
                      }
                      if (y == 1) {
                        setState(() {
                          c = Colors.yellow.shade900;
                          o = Colors.deepOrange.shade50;
                        });
                      }
                      if (y == 2) {
                        setState(() {
                          c = Colors.pink;
                          o = Colors.pink.shade50;
                        });
                      }
                      if (y == 3) {
                        setState(() {
                          print(n);
                        });
                      }
                    },
                    itemBuilder: (y) {
                      return [
                        PopupMenuItem(child: Text('Blue'), value: 0,),
                        PopupMenuItem(child: Text('Orange'), value: 1,),
                        PopupMenuItem(child: Text('Pink'), value: 2,),
                      ];
                    }
                ),
              ],
            ),
            drawer: Drawer(
              child: ListView(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(color: c),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('image/aya.jpg'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Aya Mohamed', style: TextStyle(fontSize: 18, color: o),),
                        Text('ayamohamad301@gmail.com',
                          style: TextStyle(fontSize: 10, color: o),),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.home, color: c,),
                    title: Text('Home', style: TextStyle(fontSize: 18),),
                  ),
                  SizedBox(
                    child:
                    Text(
                      '                                    _______________________________________________________',
                      style: TextStyle(fontSize: 8, color: o),),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings, color: c,),
                    title: Text('Setting', style: TextStyle(fontSize: 18)),
                  ),
                  Padding(padding: EdgeInsets.only(top: 200)),
                  RaisedButton(
                      color: c,
                      highlightColor: o,
                      child: Text('Click On', style: TextStyle(color: Colors.white),),
                      onPressed: () {
                        showDialog(context: context,
                          barrierDismissible: false,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Message from Palestine',
                                style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.bold),),
                              content: Container(
                                height: 80,
                                width: 250,
                                child: Text(
                                    'Do not Forget Your Case,love from Palestine ???????? ????????'),
                              ),
                              actions: [
                                Padding(padding: EdgeInsets.only(left: 50)),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(context,
                                      MaterialPageRoute(
                                          builder: (context) => bottom()),);
                                  },
                                  child: Text('OK',
                                    style: TextStyle(color: c,
                                        fontWeight: FontWeight.bold,fontSize: 15),),),
                                Padding(padding: EdgeInsets.only()),
                                InkWell(
                                  onTap:(){
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Cancel',
                                    style: TextStyle(color: c,
                                        fontWeight: FontWeight.bold,fontSize: 15),),),
                              ],
                            );
                          },
                        );
                      }
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Image.asset('image/aya1.jpg', height: 300, width: 300,),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text('Ramadan crescent is proven',
                        style: TextStyle(fontSize: 25),),
                    ]
                ),
                Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Image.asset('image/aya2.jpg', height: 350, width: 300,),
                      Text('Ramadan Kareem', style: TextStyle(fontSize: 25),),
                    ]
                ),
                Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Image.asset('image/aya3.jpg', height: 350, width: 300,),
                      // Padding(padding: EdgeInsets.only(top: 20)),
                      Text('" ???????????? ?????????????????? ?????????????? ???????????????? ?????????? ????????????????????"',
                        style: TextStyle(fontSize: 25),),
                    ]
                ),
                Column(
                    children: [
                      (n == 0) ? widget() : (n == 1) ? widget1() : widget2(),
                    ]
                ),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard), title: Text('E'),),
                BottomNavigationBarItem(
                  icon: Icon(Icons.dehaze_sharp), title: Text('F'),),
                BottomNavigationBarItem(
                  icon: Icon(Icons.info), title: Text('M'),),
              ],
              onTap: (x) {
                if (x == 0) {
                  setState(() {
                    n = 0;
                  });
                }
                if (x == 1) {
                  setState(() {
                    n = 1;
                  });
                }
                if (x == 2) {
                  setState(() {
                    n = 2;
                  });
                }
                setState(() {
                  _currentIndex = x;
                });
              },
              fixedColor: Colors.white,
              backgroundColor: c,
            ),
            backgroundColor: o,
          ),
        )
    );
  }
}

class bottom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: c,
        title: Text('Palestine ????????'),
      ),
      body:SingleChildScrollView(
          child:  Column(
              children:[
                Padding(padding: EdgeInsets.only(top: 20,left: 400)),
                Image.asset('image/image4.jpg',height:200,),
                Padding(padding: EdgeInsets.only(top: 20,left: 300)),
                Text('Palestine Flag',style: TextStyle(fontSize: 20),),
                Padding(padding: EdgeInsets.only(top: 30,left: 500)),
                Image.asset('image/image5.jpg'),
                Padding(padding: EdgeInsets.only(top: 20,left: 500)),
                Text('Dome of the dock',style: TextStyle(fontSize: 20)),
                Padding(padding: EdgeInsets.only(top: 30,left: 500)),
                Image.asset('image/image6.jpg'),
                Padding(padding: EdgeInsets.only(top: 20,left: 500)),
                Text('Al-aqsa Mosque',style: TextStyle(fontSize: 20)),
                Padding(padding: EdgeInsets.only(bottom: 20)),
              ]
          )
      ),
      backgroundColor: o,
    );
  }

}
