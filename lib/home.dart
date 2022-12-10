import 'package:flutter/material.dart';
import 'dart:math';
import 'settings.dart';
import 'graph.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String routeName = '/home';

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  double corrector = 1.0;

  static int graphColumns = 7;
  static Color darkColor = const Color(0xff1c286c);
  static Color midBrightColor = const Color(0xff3243a2);
  static Color midDullColor = const Color(0xff7580be);
  static Color lightColor = const Color(0xffefeff8);
  static Color accentColorHigh = const Color(0xffffe99c);
  static Color accentColorLow = const Color(0xfff2e8ce);

  List<Widget> possibleContainers = <Widget>[];
  final setContainers = <Widget>[];

  double correct(int n){
    return (n * corrector);
  }

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    corrector = MediaQuery.of(context).size.width / 414.0;
    setContainers.add(SizedBox(height:correct(10)));
    possibleContainers = <Widget>[
      SizedBox(
          width: correct(370),
          height: correct(375),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                      width: correct(180),
                      height: correct(180),
                      child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(correct(40))),
                          color: midBrightColor,
                          child: Column(
                            children: [
                              SizedBox(height: correct(13)),
                              Text("Last week,", style: TextStyle(color: Colors.white, fontSize: correct(21))),
                              SizedBox(height:correct(1)),
                              Text("You listened to", style: TextStyle(color: Colors.white, fontSize: correct(21))),
                              SizedBox(height: correct(6)),
                              Text("Art Rock", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: correct(21))),
                              SizedBox(height: correct(6)),
                              Text("music", style: TextStyle(color: Colors.white, fontSize: correct(21))),
                              SizedBox(height: correct(1)),
                              Text("the most.", style: TextStyle(color: Colors.white, fontSize: correct(21)))
                            ],
                          )
                      )
                  ),
                  SizedBox(width: correct(10)),
                  SizedBox(
                      width: correct(180),
                      height: correct(180),
                      child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(correct(40))),
                          color: darkColor,
                          child: Column(
                            children: [
                              SizedBox(height: correct(17)),
                              Text("You listen", style: TextStyle(color: Colors.white, fontSize: correct(21))),
                              SizedBox(height: correct(1)),
                              Text("to music from", style: TextStyle(color: Colors.white, fontSize: correct(21))),
                              SizedBox(height: correct(10)),
                              Text("2019", style: TextStyle(color: Colors.white, fontSize: correct(21), fontWeight: FontWeight.bold)),
                              SizedBox(height: correct(10)),
                              Text("the most.", style: TextStyle(color: Colors.white, fontSize: correct(21)))
                            ],
                          )
                      )
                  )
                ],
              ),
              SizedBox(height: correct(10)),
              SizedBox(
                  width: correct(370),
                  height: correct(180),
                  child:  ClipRRect(
                      borderRadius: BorderRadius.circular(correct(40)),
                      child: Container(
                          color: midDullColor,
                          child: Row(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(correct(40)),
                                  child: SizedBox(
                                    width: correct(180),
                                    height: correct(180),
                                    child: Column(
                                      children: [
                                        SizedBox(height: correct(40)),
                                        Text("Your favorite", style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                        SizedBox(height: correct(1)),
                                        Text("song is", style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                        SizedBox(height: correct(15)),
                                        Text("UFOF", style: TextStyle(color: Colors.white, fontSize: correct(21), fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  )
                              ),
                              SizedBox(width: correct(10)),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(correct(40)),
                                child: Image.asset('images/UFOF.jpg', height: correct(180), width: correct(180)),
                              )
                            ],
                          )
                      )
                  )
              ),
            ],
          )
      ),

      SizedBox(
          height: correct(370),
          width: correct(370),
          child: Row(
            children: [
              SizedBox(
                  width: correct(180),
                  height: correct(370),
                  child:  Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(correct(40))),
                      color: darkColor,
                      child: Column(
                          children: [
                            SizedBox(height: correct(30)),
                            Text('54 of the', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                            SizedBox(height: correct(1)),
                            Text('artists you', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                            SizedBox(height: correct(1)),
                            Text('listen to', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                            SizedBox(height: correct(1)),
                            Text('come from',style: TextStyle(color: Colors.white, fontSize: correct(21))),
                            SizedBox(height: correct(17)),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(correct(40)),
                              child: Image.asset('images/Washington.png', height: correct(120), width: correct(120)),
                            ),
                            SizedBox(height: correct(17)),
                            Text('Washington', style: TextStyle(color: Colors.white, fontSize: correct(21), fontWeight: FontWeight.bold)),
                          ]
                      )
                  )
              ),
              SizedBox(width: correct(10)),
              Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(correct(40)),
                      child: Image.asset('images/Marigold.jpg', height: correct(180), width: correct(180)),
                    ),
                    SizedBox(height: correct(10)),
                    SizedBox(
                        width: correct(180),
                        height: correct(180),
                        child:  Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(correct(40))),
                            color: midBrightColor,
                            child: Column(
                                children: [
                                  SizedBox(height: correct(35)),
                                  Text('Your longest', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                  SizedBox(height: correct(1)),
                                  Text('album is', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                  SizedBox(height: correct(10)),
                                  Text('The Wall', style: TextStyle(color: Colors.white, fontSize: correct(21), fontWeight: FontWeight.bold))
                                ]
                            )
                        )
                    )
                  ]
              )
            ],
          )
      ),

      SizedBox(
          height: correct(370),
          width: correct(370),
          child: Row(
            children: [
              Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(correct(40)),
                      child: Image.asset('images/CarrieAndLowell.jpg', height: correct(180), width: correct(180)),
                    ),
                    SizedBox(height: correct(10)),
                    SizedBox(
                        width: correct(180),
                        height: correct(180),
                        child:  Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(correct(40))),
                            color: midDullColor,
                            child: Column(
                                children: [
                                  SizedBox(height: correct(23)),
                                  Text('Your most', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                  SizedBox(height: correct(1)),
                                  Text('skipped song', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                  SizedBox(height: correct(1)),
                                  Text('is', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                  SizedBox(height: correct(10)),
                                  Text('The River', style: TextStyle(color: Colors.white, fontSize: correct(21), fontWeight: FontWeight.bold))
                                ]
                            )
                        )
                    )
                  ]
              ),
              SizedBox(width: correct(10)),
              SizedBox(
                  width: correct(180),
                  height: correct(370),
                  child:  ClipRRect(
                      borderRadius: BorderRadius.circular(correct(40)),
                      child: Container(
                          color: darkColor,
                          child: Column(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(correct(40)),
                                    child: SizedBox(
                                        width: correct(180),
                                        height: correct(180),
                                        child: Column(
                                            children: [
                                              SizedBox(height: correct(30)),
                                              Text('People like', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                              SizedBox(height: correct(1)),
                                              Text('you liked', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                              SizedBox(height: correct(1)),
                                              Text('the artist', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                              SizedBox(height: correct(12)),
                                              Text('Wolf Alice', style: TextStyle(color: Colors.white, fontSize: correct(21), fontWeight: FontWeight.bold)),
                                            ]
                                        )
                                    )
                                ),
                                SizedBox(height: correct(10)),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(correct(40)),
                                  child: Image.asset('images/WolfAlice.jpg', height: correct(180), width: correct(180)),
                                ),
                              ]
                          )
                      )
                  )
              ),
            ],
          )
      ),

      SizedBox(
          width: correct(370),
          height: correct(370),
          child: Column(
              children: [
                SizedBox(
                    width: correct(370),
                    height: correct(170),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(correct(40)),
                        child: Container(
                            color: midBrightColor,
                            child: Padding(
                                padding: const EdgeInsets.fromLTRB(0,0,0,0),
                                child: Row(
                                    children:[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(correct(40)),
                                        child: Image.asset('images/SleepWellBeast.jpg', height: correct(180), width: correct(180)),
                                      ),
                                      SizedBox(width: correct(6)),
                                      ClipRRect(
                                          borderRadius: BorderRadius.circular(correct(40)),
                                          child: SizedBox(
                                              width: correct(180),
                                              height: correct(180),
                                              child: Column(
                                                  children: [
                                                    SizedBox(height: correct(23)),
                                                    Text('Your top', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                                    SizedBox(height: correct(1)),
                                                    Text('album is', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                                    SizedBox(height: correct(12)),
                                                    Text('Sleep Well', style: TextStyle(color: Colors.white, fontSize: correct(21), fontWeight: FontWeight.bold)),
                                                    SizedBox(height: correct(1)),
                                                    Text('Beast', style: TextStyle(color: Colors.white, fontSize: correct(21), fontWeight: FontWeight.bold))
                                                  ]
                                              )
                                          )
                                      )
                                    ]
                                )
                            )
                        )
                    )
                ),
                SizedBox(height: correct(10)),
                Row(
                    children: [
                      SizedBox(
                          width: correct(180),
                          height: correct(180),
                          child: Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(correct(40))),
                              color: darkColor,
                              child: Column(
                                  children: [
                                    SizedBox(height: correct(23)),
                                    Text('73 of your', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                    SizedBox(height: correct(1)),
                                    Text('songs were', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                    SizedBox(height: correct(1)),
                                    Text('described as', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                    SizedBox(height: correct(12)),
                                    Text('Passionate', style: TextStyle(color: Colors.white, fontSize: correct(21), fontWeight: FontWeight.bold))
                                  ]
                              )
                          )
                      ),
                      SizedBox(width: correct(10)),
                      SizedBox(
                          width: correct(180),
                          height: correct(180),
                          child: Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(correct(40))),
                              color: midDullColor,
                              child: Column(
                                children: [
                                  SizedBox(height: correct(40)),
                                  Text('70% of your', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                  SizedBox(height: correct(1)),
                                  Text('music has', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                  SizedBox(height: correct(11)),
                                  Text('male vocals', style: TextStyle(color: Colors.white, fontSize: correct(21), fontWeight: FontWeight.bold))
                                ],
                              )
                          )
                      )
                    ]
                )
              ]
          )
      ),

      SizedBox(
          width: correct(380),
          height: correct(380),
          child: Column(
              children: [
                Row(
                    children: [
                      SizedBox(
                          width: correct(180),
                          height: correct(180),
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(correct(40))),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(correct(40)),
                              child: Image.asset('images/ForEmmaForeverAgo.jpg', height: correct(180), width: correct(180)),
                            ),
                          )
                      ),
                      SizedBox(width: correct(10)),
                      SizedBox(
                          width: correct(180),
                          height: correct(180),
                          child: Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(correct(40))),
                              color: midBrightColor,
                              child: Column(
                                  children: [
                                    SizedBox(height: correct(23)),
                                    Text('You usually', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                    SizedBox(height: correct(1)),
                                    Text('listen to', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                    SizedBox(height: correct(1)),
                                    Text('music at', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                    SizedBox(height: correct(11)),
                                    Text('11:00 pm', style: TextStyle(color: Colors.white, fontSize: correct(21), fontWeight: FontWeight.bold))
                                  ]
                              )
                          )
                      )
                    ]
                ),
                SizedBox(height: correct(10)),
                Row(
                    children: [
                      SizedBox(
                          width: correct(180),
                          height: correct(180),
                          child: Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(correct(40))),
                              color: darkColor,
                              child: Column(
                                  children: [
                                    SizedBox(height: correct(12)),
                                    Text('5 years ago,', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                    SizedBox(height: correct(1)),
                                    Text('You heard', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                    SizedBox(height: correct(8)),
                                    Text('No Shape', style: TextStyle(color: Colors.white, fontSize: correct(21), fontWeight: FontWeight.bold)),
                                    SizedBox(height: correct(8)),
                                    Text('for the', style: TextStyle(color: Colors.white, fontSize: correct(21))),
                                    SizedBox(height: correct(1)),
                                    Text('first time', style: TextStyle(color: Colors.white, fontSize: correct(21)))
                                  ]
                              )
                          )
                      ),
                      SizedBox(width: correct(10)),
                      SizedBox(
                          width: correct(180),
                          height: correct(180),
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(correct(40))),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(correct(40)),
                              child: Image.asset('images/Hospice.jpg', height: correct(180), width: correct(180)),
                            ),
                          )
                      ),
                    ]
                )
              ]
          )

      )
    ];

    for(int i = 0; i < 5; i++){
      Random random = Random();
      int index = random.nextInt(possibleContainers.length);
      setContainers.add(possibleContainers[index]);
      setContainers.add(SizedBox(height: correct(10)));
      possibleContainers.remove(possibleContainers[index]);
    }
    return getHomeStructure();
  }

  Scaffold getHomeStructure(){
    return Scaffold(
      backgroundColor: lightColor,
      appBar: AppBar(
          title: const Text('HOME'),
          backgroundColor: darkColor,
          automaticallyImplyLeading: false
      ),
      body: Padding(
        padding: EdgeInsets.all(correct(20)),
        child: ListView(
            children: setContainers
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: correct(48),
          backgroundColor: darkColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color(0xffffffff)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_rounded, color: Color(0xffffffff)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Color(0xffffffff)),
              label: '',
            ),
          ],
          selectedItemColor: const Color(0xffffe99c),
          onTap: (int index) {
            setState((){
              if(index == 1){
                Navigator.pushNamed(context, GraphsRoute.routeName);
              }
              if(index == 2){
                Navigator.pushNamed(context, SettingsRoute.routeName);
              }
            });                                                //FILL WHAT HAPPENS WHEN ICON IS TAPPED
          }
      ),
    );
  }

}