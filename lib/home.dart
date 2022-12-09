import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math';
import 'home.dart';
import 'settings.dart';
import 'graph.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String routeName = '/home';

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  static int graphColumns = 7;
  static Color darkColor = const Color(0xff1c286c);
  static Color midBrightColor = const Color(0xff3243a2);
  static Color midDullColor = const Color(0xff7580be);
  static Color lightColor = const Color(0xffefeff8);
  static Color accentColorHigh = const Color(0xffffe99c);
  static Color accentColorLow = const Color(0xfff2e8ce);

  final allInsights = <String>[
    'Your Favorite Artist',
    'Your Most-Listened To Album',
    'Your Most-Listened Song',
    'Your Most-Skipped Song',
    'Your Top Genre',
    'Time you tend to listen to music',
    'Your unique artists and songs',
  ];
  final visibleInsights = <String>[];
  var count = 0;
  final possibleContainers = <Widget>[
    SizedBox(
        width: 370,
        height: 375,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                    width: 180,
                    height: 180,
                    child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                        color: midBrightColor,
                        child: Column(
                          children: const [
                            SizedBox(height: 13),
                            Text("Last week,", style: TextStyle(color: Colors.white, fontSize: 21)),
                            SizedBox(height:1),
                            Text("You listened to", style: TextStyle(color: Colors.white, fontSize: 21)),
                            SizedBox(height: 6),
                            Text("Art Rock", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 21)),
                            SizedBox(height: 6),
                            Text("music", style: TextStyle(color: Colors.white, fontSize: 21)),
                            SizedBox(height: 1),
                            Text("the most.", style: TextStyle(color: Colors.white, fontSize: 21))
                          ],
                        )
                    )
                ),
                const SizedBox(width: 10),
                SizedBox(
                    width: 180,
                    height: 180,
                    child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                        color: darkColor,
                        child: Column(
                          children: const [
                            SizedBox(height: 17),
                            Text("You listen", style: TextStyle(color: Colors.white, fontSize: 21)),
                            SizedBox(height: 1),
                            Text("to music from", style: TextStyle(color: Colors.white, fontSize: 21)),
                            SizedBox(height: 10),
                            Text("2019", style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold)),
                            SizedBox(height: 10),
                            Text("the most.", style: TextStyle(color: Colors.white, fontSize: 21))
                          ],
                        )
                    )
                )
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
                width: 370,
                height: 180,
                child:  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                        color: midDullColor,
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: SizedBox(
                                  width: 180,
                                  height: 180,
                                  child: Column(
                                    children: const [
                                      SizedBox(height: 40),
                                      Text("Your favorite", style: TextStyle(color: Colors.white, fontSize: 21)),
                                      SizedBox(height: 1),
                                      Text("song is", style: TextStyle(color: Colors.white, fontSize: 21)),
                                      SizedBox(height: 15),
                                      Text("UFOF", style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                )
                            ),
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset('images/UFOF.jpg', height: 180, width: 180),
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
        height: 370,
        width: 370,
        child: Row(
          children: [
            SizedBox(
                width: 180,
                height: 370,
                child:  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                    color: darkColor,
                    child: Column(
                        children: [
                          const SizedBox(height: 30),
                          const Text('54 of the', style: TextStyle(color: Colors.white, fontSize: 21)),
                          const SizedBox(height: 1),
                          const Text('artists you', style: TextStyle(color: Colors.white, fontSize: 21)),
                          const SizedBox(height: 1),
                          const Text('listen to', style: TextStyle(color: Colors.white, fontSize: 21)),
                          const SizedBox(height: 1),
                          const Text('come from',style: TextStyle(color: Colors.white, fontSize: 21)),
                          const SizedBox(height: 17),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset('images/Washington.png', height: 120, width: 120),
                          ),
                          const SizedBox(height: 17),
                          const Text('Washington', style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold)),
                        ]
                    )
                )
            ),
            const SizedBox(width: 10),
            Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset('images/Marigold.jpg', height: 180, width: 180),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                      width: 180,
                      height: 180,
                      child:  Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                          color: midBrightColor,
                          child: Column(
                              children: const [
                                SizedBox(height: 35),
                                Text('Your longest', style: TextStyle(color: Colors.white, fontSize: 21)),
                                SizedBox(height: 1),
                                Text('album is', style: TextStyle(color: Colors.white, fontSize: 21)),
                                SizedBox(height: 10),
                                Text('The Wall', style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold))
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
        height: 370,
        width: 370,
        child: Row(
          children: [
            Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset('images/CarrieAndLowell.jpg', height: 180, width: 180),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                      width: 180,
                      height: 180,
                      child:  Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                          color: midDullColor,
                          child: Column(
                              children: const [
                                SizedBox(height: 23),
                                Text('Your most', style: TextStyle(color: Colors.white, fontSize: 21)),
                                SizedBox(height: 1),
                                Text('skipped song', style: TextStyle(color: Colors.white, fontSize: 21)),
                                SizedBox(height: 1),
                                Text('is', style: TextStyle(color: Colors.white, fontSize: 21)),
                                SizedBox(height: 10),
                                Text('The River', style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold))
                              ]
                          )
                      )
                  )
                ]
            ),
            const SizedBox(width: 10),
            SizedBox(
                width: 180,
                height: 370,
                child:  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                        color: darkColor,
                        child: Column(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: SizedBox(
                                      width: 180,
                                      height: 180,
                                      child: Column(
                                          children: const [
                                            SizedBox(height: 30),
                                            Text('People like', style: TextStyle(color: Colors.white, fontSize: 21)),
                                            SizedBox(height: 1),
                                            Text('you liked', style: TextStyle(color: Colors.white, fontSize: 21)),
                                            SizedBox(height: 1),
                                            Text('the artist', style: TextStyle(color: Colors.white, fontSize: 21)),
                                            SizedBox(height: 12),
                                            Text('Wolf Alice', style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold)),
                                          ]
                                      )
                                  )
                              ),
                              const SizedBox(height: 10),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset('images/WolfAlice.jpg', height: 180, width: 180),
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
        width: 370,
        height: 370,
        child: Column(
            children: [
              SizedBox(
                  width: 370,
                  height: 180,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                          color: midBrightColor,
                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              child: Row(
                                  children:[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset('images/SleepWellBeast.jpg', height: 180, width: 180),
                                    ),
                                    const SizedBox(width: 6),
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(40),
                                        child: SizedBox(
                                            width: 180,
                                            height: 180,
                                            child: Column(
                                                children:const [
                                                  SizedBox(height: 23),
                                                  Text('Your top', style: TextStyle(color: Colors.white, fontSize: 21)),
                                                  SizedBox(height: 1),
                                                  Text('album is', style: TextStyle(color: Colors.white, fontSize: 21)),
                                                  SizedBox(height: 12),
                                                  Text('Sleep Well', style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold)),
                                                  SizedBox(height: 1),
                                                  Text('Beast', style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold))
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
              const SizedBox(height: 10),
              Row(
                  children: [
                    SizedBox(
                        width: 180,
                        height: 180,
                        child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                            color: darkColor,
                            child: Column(
                                children:const [
                                  SizedBox(height: 23),
                                  Text('73 of your', style: TextStyle(color: Colors.white, fontSize: 21)),
                                  SizedBox(height: 1),
                                  Text('songs were', style: TextStyle(color: Colors.white, fontSize: 21)),
                                  SizedBox(height: 1),
                                  Text('described as', style: TextStyle(color: Colors.white, fontSize: 21)),
                                  SizedBox(height: 12),
                                  Text('Passionate', style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold))
                                ]
                            )
                        )
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                        width: 180,
                        height: 180,
                        child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                            color: midDullColor,
                            child: Column(
                              children: const [
                                SizedBox(height: 40),
                                Text('70% of your', style: TextStyle(color: Colors.white, fontSize: 21)),
                                SizedBox(height: 1),
                                Text('music has', style: TextStyle(color: Colors.white, fontSize: 21)),
                                SizedBox(height: 11),
                                Text('male vocals', style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold))
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
        width: 380,
        height: 380,
        child: Column(
            children: [
              Row(
                  children: [
                    SizedBox(
                        width: 180,
                        height: 180,
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset('images/ForEmmaForeverAgo.jpg', height: 180, width: 180),
                          ),
                        )
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                        width: 180,
                        height: 180,
                        child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                            color: midBrightColor,
                            child: Column(
                                children: const [
                                  SizedBox(height: 23),
                                  Text('You usually', style: TextStyle(color: Colors.white, fontSize: 21)),
                                  SizedBox(height: 1),
                                  Text('listen to', style: TextStyle(color: Colors.white, fontSize: 21)),
                                  SizedBox(height: 1),
                                  Text('music at', style: TextStyle(color: Colors.white, fontSize: 21)),
                                  SizedBox(height: 11),
                                  Text('11:00 pm', style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold))
                                ]
                            )
                        )
                    )
                  ]
              ),
              const SizedBox(height: 10),
              Row(
                  children: [
                    SizedBox(
                        width: 180,
                        height: 180,
                        child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                            color: darkColor,
                            child: Column(
                                children: const [
                                  SizedBox(height: 12),
                                  Text('5 years ago,', style: TextStyle(color: Colors.white, fontSize: 21)),
                                  SizedBox(height: 1),
                                  Text('You heard', style: TextStyle(color: Colors.white, fontSize: 21)),
                                  SizedBox(height: 8),
                                  Text('No Shape', style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold)),
                                  SizedBox(height: 8),
                                  Text('for the', style: TextStyle(color: Colors.white, fontSize: 21)),
                                  SizedBox(height: 1),
                                  Text('first time', style: TextStyle(color: Colors.white, fontSize: 21))
                                ]
                            )
                        )
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                        width: 180,
                        height: 180,
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset('images/Hospice.jpg', height: 180, width: 180),
                          ),
                        )
                    ),
                  ]
              )
            ]
        )

    )
  ];
  final setContainers = <Widget>[];

  @override
  void initState() {
    super.initState();
    for (var element in allInsights) {
      visibleInsights.add(element);
    }
    setContainers.add(const SizedBox(height:10));
    // setContainers.add(
    //   SizedBox(
    //     width: 100,
    //     height: 240,
    //     child: Card(
    //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    //         color: const Color(0xff5c6598),
    //         child: Column(
    //           children: [
    //             Text('Welcome to your'),
    //             Text('Music Data!')
    //           ]
    //         )
    //     )
    //   )
    // );
    // setContainers.add(SizedBox(height: 20));

    for(int i = 0; i < 5; i++){
      Random random = Random();
      int index = random.nextInt(possibleContainers.length);
      setContainers.add(possibleContainers[index]);
      setContainers.add(const SizedBox(height: 10));
      possibleContainers.remove(possibleContainers[index]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return getHomeStructure();
  }

  List<Widget> getInsightList(){
    final returnables = <Widget>[];

    if(visibleInsights.contains('Your Favorite Artist')) {
      returnables.add(Column(
        children: [
          const Text('Your Favorite Artist Is:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const SizedBox(height: 10),
          Center(child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('images/IAmEasyToFind.png', height: 65, width: 65),        //REPLACE IMAGE
              ),
              const SizedBox(width: 20),
              const Text('The National', style: TextStyle(color: Color(0xff2f37a8), fontWeight: FontWeight.bold, fontSize: 18))
            ],
          )
          )
        ],
      )
      );
    }


    if(visibleInsights.contains('Your Most-Listened To Album')){
      returnables.add(
          Column(
            children: [
              const SizedBox(height: 30),
              const Text('Your Most-Listened Album is:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              const SizedBox(height: 10),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('images/IAmEasyToFind.png', height: 65, width: 65),        //REPLACE IMAGE
                  ),
                  const SizedBox(width: 20),
                  const Text('I Am Easy To Find', style: TextStyle(color: Color(0xff2f37a8), fontWeight: FontWeight.bold, fontSize: 18))
                ],
              )
            ],
          )
      );
    }
    if(visibleInsights.contains('Your Most-Listened Song')) {
      returnables.add(Column(
        children: [
          const SizedBox(height: 30),
          const Text('Your Most-Listened Song is:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const SizedBox(height: 10),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('images/UFOF.jpg', height: 65, width: 65),        //REPLACE IMAGE
              ),
              const SizedBox(width: 20),
              const Text('UFOF', style: TextStyle(color: Color(0xff2f37a8), fontWeight: FontWeight.bold, fontSize: 18))
            ],
          )
        ],
      )
      );
    }

    if(visibleInsights.contains('Your Most-Skipped Song')) {
      returnables.add(
          Column(
            children: [
              const SizedBox(height: 30),
              const Text('Your Most-Skipped Song:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              const SizedBox(height: 10),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('images/TheRiver.jpg', height: 65, width: 65),        //REPLACE IMAGE
                  ),
                  const SizedBox(width: 20),
                  const Text('The River', style: TextStyle(color: Color(0xff2f37a8), fontWeight: FontWeight.bold, fontSize: 18))
                ],
              )
            ],
          )
      );
    }

    if(visibleInsights.contains('Your Top Genre'))  {
      returnables.add(
          Column(
            children: const [
              SizedBox(height: 30),
              Text('Your Top Genre is:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 10),
              Text('shoegaze', style: TextStyle(color: Color(0xff2f37a8), fontWeight: FontWeight.bold, fontSize: 18))
            ],
          )
      );
    }

    if(visibleInsights.contains('Time you tend to listen to music')) {
      returnables.add(
          Column(
            children: const [
              SizedBox(height: 30),
              Text('You listen to music the most at:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 10),
              Text('11:00 pm', style: TextStyle(color: Color(0xff2f37a8), fontWeight: FontWeight.bold, fontSize: 18))
            ],
          )
      );
    }
    if(visibleInsights.contains('Your unique artists and songs')){
      returnables.add(
          Column(
            children: const [
              SizedBox(height: 30),
              Text('You listen to 800 unique artists, and', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 10),
              Text('10,000 unique songs.', style: TextStyle(color: Color(0xff2f37a8), fontWeight: FontWeight.bold, fontSize: 18))
            ],
          )
      );
    }

    return returnables;
  }

  ListTile listTileByVisibility(String source){
    final isVisible = visibleInsights.contains(source);

    return ListTile(
      title: Text(source),
      trailing: Icon(
        isVisible ? Icons.check : Icons.add,
        color: isVisible ?  Colors.green : null,
        semanticLabel: isVisible? 'remove from insights' : 'add to insights',
      ),
      onTap: () {
        setState(() {
          count++;
          if (isVisible){
            visibleInsights.remove(source);
          } else {
            visibleInsights.add(source);
          }
        });
      },
    );
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
        padding: const EdgeInsets.all(20),
        child: ListView(
            children: setContainers
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 48,
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