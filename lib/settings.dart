import 'package:flutter/material.dart';
import 'home.dart';
import 'graph.dart';

class SettingsRoute extends StatefulWidget{
  const SettingsRoute({super.key});

  static const String routeName = '/settings';

  @override
  State<SettingsRoute> createState() => _SettingsRouteState();
}

class _SettingsRouteState extends State<SettingsRoute> {
  int graphColumnsLocal = HomePageState.graphColumns;
  double corrector = 1.0;

  double correct(int n){
    return (n * corrector);
  }

  void updateGraphColumns(int value){
    setState((){
      graphColumnsLocal = value;
      HomePageState.graphColumns = value;
    });
  }

  Widget getColorBoxes(Color dark, Color mid, Color dull, Color light){
    return GestureDetector(
      onTap: (){
        setState(() {
          HomePageState.darkColor = dark;
          HomePageState.midBrightColor = mid;
          HomePageState.midDullColor = dull;
          HomePageState.lightColor = light;
        });
      },
      child: ClipRRect(
          borderRadius: BorderRadius.circular(correct(30)),
          child: Container(
              width: correct(180),
              height: correct(200),
              color: dark,
              child: Column(children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(correct(30)),
                    child: Container(
                        width: correct(180),
                        height: correct(150),
                        color: mid,
                        child: Column(children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(correct(30)),
                              child: Container(
                                  width: correct(180),
                                  height: correct(100),
                                  color: dull,
                                  child: Column(children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(correct(30)),
                                        child: Container(
                                          width: correct(180),
                                          height: correct(50),
                                          color: light,
                                        )
                                    )
                                  ],)
                              )
                          )

                        ])
                    )
                )

              ],)
          )
      )
    );
  }

  @override
  Widget build(BuildContext context){
    corrector = MediaQuery.of(context).size.width / 414.0;


    return Scaffold(
      backgroundColor: HomePageState.lightColor,
      appBar: AppBar(
          title: const Text('SETTINGS'),
          backgroundColor: HomePageState.darkColor,
          automaticallyImplyLeading: false
      ),
      body: ListView(
              children: [
                SizedBox(height: correct(20)),
                Center(child: Text('Number of Bars in each Graph', style: TextStyle(fontSize: correct(21)))),
                SizedBox(height: correct(20)),
                Row(children: [
                  SizedBox(width: correct(20)),
                  const Text('5'),
                  SizedBox(width: correct(165)),
                  const Text('10'),
                  SizedBox(width: correct(165)),
                  const Text('15')
                ],),
                Slider(
                  value: graphColumnsLocal.toDouble(),
                  min: 5.0,
                  max: 15.0,
                  label: graphColumnsLocal.toString(),
                  divisions: 10,
                  onChanged: (double newValue) {
                    setState(() {
                      updateGraphColumns(newValue.toInt());
                    });
                  },
                ),
                SizedBox(height: correct(40)),
                Center(child: Text('Choose a Color Scheme', style: TextStyle(fontSize: correct(21)))),
                SizedBox(height: correct(30)),
                Row(
                  children: [
                    SizedBox(width:correct(20)),
                    getColorBoxes(const Color(0xff1c286c),
                        const Color(0xff3243a2),
                        const Color(0xff7580be),
                        const Color(0xffefeff8)),
                    SizedBox(width: correct(20)),
                    getColorBoxes(const Color(0xff712828),
                        const Color(0xff9b3333),
                        const Color(0xffbe6b6b),
                        const Color(0xfffde8e8)),
                  ],
                ),
                SizedBox(height: correct(20)),
                Row(
                  children: [
                    SizedBox(width:correct(20)),
                    getColorBoxes(const Color(0xff261060),
                        const Color(0xff7621ac),
                        const Color(0xffb157a9),
                        const Color(0xffFDEDF3)),
                    SizedBox(width: correct(20)),
                    getColorBoxes(const Color(0xff102360),
                        const Color(0xff5F4DC1),
                        const Color(0xffD9A06F),
                        const Color(0xffFFF8E0)),
                  ],

                )
              ]
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: correct(48),
          backgroundColor: HomePageState.darkColor,
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
              if(index == 0){
                Navigator.pushNamed(context, HomePage.routeName);
              }
            });                                                //FILL WHAT HAPPENS WHEN ICON IS TAPPED
          }
      ),
    );

  }
}

