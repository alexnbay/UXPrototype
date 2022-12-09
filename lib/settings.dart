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
          borderRadius: BorderRadius.circular(30),
          child: Container(
              width: 180,
              height: 200,
              color: dark,
              child: Column(children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                        width: 180,
                        height: 150,
                        color: mid,
                        child: Column(children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Container(
                                  width: 180,
                                  height: 100,
                                  color: dull,
                                  child: Column(children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Container(
                                          width: 180,
                                          height: 50,
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
    return Scaffold(
      backgroundColor: HomePageState.lightColor,
      appBar: AppBar(
          title: const Text('SETTINGS'),
          backgroundColor: HomePageState.darkColor,
          automaticallyImplyLeading: false
      ),
      body: Column(
          children: [
            const SizedBox(height: 20),
            const Text('Number of Bars in each Graph', style: TextStyle(fontSize: 21)),
            const SizedBox(height: 20),
            Row(children: const [
              SizedBox(width: 20),
              Text('5'),
              SizedBox(width: 165),
              Text('10'),
              SizedBox(width: 165),
              Text('15')
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
            const SizedBox(height: 40),
            const Text('Choose a Color Scheme', style: TextStyle(fontSize: 21)),
            const SizedBox(height:30),
            Row(
              children: [
                const SizedBox(width:20),
                getColorBoxes(const Color(0xff1c286c),
                  const Color(0xff3243a2), 
                  const Color(0xff7580be),
                  const Color(0xffefeff8)),
                const SizedBox(width: 20),
                getColorBoxes(const Color(0xff712828),
                    const Color(0xff9b3333),
                    const Color(0xffbe6b6b),
                    const Color(0xfffde8e8)),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
              const SizedBox(width:20),
              getColorBoxes(const Color(0xff261060),
                  const Color(0xff7621ac),
                  const Color(0xffb157a9),
                  const Color(0xffFDEDF3)),
              const SizedBox(width: 20),
              getColorBoxes(const Color(0xff102360),
                  const Color(0xff5F4DC1),
                  const Color(0xffD9A06F),
                  const Color(0xffFFF8E0)),
            ],

            )


          ]
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 48,
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

