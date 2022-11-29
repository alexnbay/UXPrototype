import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Data',
      theme: ThemeData(
        //backgroundColor: const Color(0xfff2ede9),
        scaffoldBackgroundColor: const Color(0xfff2ede9),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xff021329),
            foregroundColor: Colors.white
        ),
      ),
      home: const HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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


  /**
   *
   *
   *        GRAPH DATA
   *
   *
   */

  BarChartData genresChartData() {

    return BarChartData(
        barTouchData: BarTouchData(
            enabled: true,
            touchTooltipData: BarTouchTooltipData(
              tooltipBgColor: Colors.grey,
              tooltipMargin: 8,
              getTooltipItem: (BarChartGroupData group, int groupIndex, BarChartRodData rod, int rodIndex) {
                String text;
                switch(group.x){
                  case 0: text = 'Indie Rock'; break;
                  case 1: text = 'Indie Folk'; break;
                  case 2: text = 'Singer-Songwriter'; break;
                  case 3: text = 'Art Pop'; break;
                  case 4: text = 'Indie Pop'; break;
                  case 5: text = 'Chamber Pop'; break;
                  case 6: text = 'Dream Pop'; break;
                  default: text = 'extra column'; break;
                }
                return BarTooltipItem(
                  text,
                  const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                  )
                );
              },
            )
        ),

        titlesData: FlTitlesData(
            show: true,
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
                reservedSize: 30,
                getTitlesWidget: (double value, TitleMeta meta){
                  const style = TextStyle(
                    color: Color(0xff7589a2),
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                  );
                  String text;
                  switch(value.toInt()){
                    case 0: text = 'Indie Rock'; break;
                    case 1: text = 'Indie Folk'; break;
                    case 2: text = 'Singer-Songwriter'; break;
                    case 3: text = 'Art Pop'; break;
                    case 4: text = 'Indie Pop'; break;
                    case 5: text = 'Chamber Pop'; break;
                    case 6: text = 'Dream Pop'; break;
                    default: text = 'extra column'; break;
                  }
                  return SideTitleWidget(axisSide: meta.axisSide, space: 4, child: Text(text, style: style));
                }
              )
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 45,
                interval: 1,
                getTitlesWidget: (double value, TitleMeta meta){
                  const style = TextStyle(
                      color: Color(0xff7589a2),
                  fontWeight: FontWeight.bold,
                  fontSize: 14
                  );
                  String text;
                  if(value == 180) {
                    text = '180';
                  } else if(value == 135) {
                    text = '135';
                  } else if (value == 90) {
                    text = '90';
                  } else if (value == 45) {
                    text = '45';
                  } else if (value == 0) {
                    text = '0';
                  } else {
                    return Container();
                  }
                  return SideTitleWidget(axisSide: meta.axisSide, space: 10, child: Text(text, style: style));
                }
              ),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
         ),

         borderData: FlBorderData(show: false),
         barGroups: [
           BarChartGroupData(
             x: 0,
             barRods: [
               BarChartRodData(
                 toY: 150,
                 gradient: const LinearGradient(colors: [
                   Color(0xfff2e8ce),
                   Color(0xffffe99c),
                 ],
                     begin: Alignment.bottomCenter,
                     end: Alignment.topCenter
                 ),
                 width: 20,
               )
             ]
           ),
           BarChartGroupData(
               x: 1,
               barRods: [
                 BarChartRodData(
                   toY: 134,
                   //color: Colors.white,
                   width: 20,
                   gradient: const LinearGradient(colors: [
                       Color(0xfff2e8ce),
                       Color(0xffffe99c),
                     ],
                     begin: Alignment.bottomCenter,
                     end: Alignment.topCenter
                   )
                 )
               ]
           ),
           BarChartGroupData(
               x: 2,
               barRods: [
                 BarChartRodData(
                   toY: 133,
                   gradient: const LinearGradient(colors: [
                     Color(0xfff2e8ce),
                     Color(0xffffe99c),
                   ],
                       begin: Alignment.bottomCenter,
                       end: Alignment.topCenter
                   ),
                   width: 20,
                 )
               ]
           ),
           BarChartGroupData(
               x: 3,
               barRods: [
                 BarChartRodData(
                   toY: 88,
                   gradient: const LinearGradient(colors: [
                     Color(0xfff2e8ce),
                     Color(0xffffe99c),
                   ],
                       begin: Alignment.bottomCenter,
                       end: Alignment.topCenter
                   ),
                   width: 20,
                 )
               ]
           ),
           BarChartGroupData(
               x: 4,
               barRods: [
                 BarChartRodData(
                   toY: 88,
                   gradient: const LinearGradient(colors: [
                     Color(0xfff2e8ce),
                     Color(0xffffe99c),
                   ],
                       begin: Alignment.bottomCenter,
                       end: Alignment.topCenter
                   ),
                   width: 20,
                 )
               ]
           ),
           BarChartGroupData(
               x: 5,
               barRods: [
                 BarChartRodData(
                   toY: 81,
                   gradient: const LinearGradient(colors: [
                     Color(0xfff2e8ce),
                     Color(0xffffe99c),
                   ],
                       begin: Alignment.bottomCenter,
                       end: Alignment.topCenter
                   ),
                   width: 20,
                 )
               ]
           ),
           BarChartGroupData(
               x: 6,
               barRods: [
                 BarChartRodData(
                   toY: 76,
                   gradient: const LinearGradient(colors: [
                     Color(0xfff2e8ce),
                     Color(0xffffe99c),
                   ],
                       begin: Alignment.bottomCenter,
                       end: Alignment.topCenter
                   ),
                   width: 20,
                 )
               ]
           )
         ],
         gridData: FlGridData(show: false),
         alignment: BarChartAlignment.spaceAround,
         //backgroundColor: const Color(0xff03000d),
         maxY: 180,
    );
  }

  /*
  * DESCRIPTIONS DATA
  */
  BarChartData descriptionsChartData(){

    return BarChartData(
      barTouchData: BarTouchData(
          enabled: true,
          touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.grey,
            tooltipMargin: 8,
            getTooltipItem: (BarChartGroupData group, int groupIndex, BarChartRodData rod, int rodIndex) {
              String text;
              switch(group.x){
                case 0: text = 'male vocals'; break;
                case 1: text = 'melodic'; break;
                case 2: text = 'melancholic'; break;
                case 3: text = 'bittersweet'; break;
                case 4: text = 'introspective'; break;
                case 5: text = 'atmospheric'; break;
                case 6: text = 'passionate'; break;
                default: text = 'extra column'; break;
              }
              return BarTooltipItem(
                  text,
                  const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                  )
              );
            },
          )
      ),

      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
            sideTitles: SideTitles(
                showTitles: false,
                reservedSize: 30,
                getTitlesWidget: (double value, TitleMeta meta){
                  const style = TextStyle(
                      color: Color(0xff7589a2),
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  );
                  String text;
                  switch(value.toInt()){
                    case 0: text = 'male vocals'; break;
                    case 1: text = 'melodic'; break;
                    case 2: text = 'melancholic'; break;
                    case 3: text = 'bittersweet'; break;
                    case 4: text = 'introspective'; break;
                    case 5: text = 'atmospheric'; break;
                    case 6: text = 'passionate'; break;
                    default: text = 'extra column'; break;
                  }
                  return SideTitleWidget(axisSide: meta.axisSide, space: 4, child: Text(text, style: style));
                }
            )
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 45,
              interval: 1,
              getTitlesWidget: (double value, TitleMeta meta){
                const style = TextStyle(
                    color: Color(0xff7589a2),
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                );
                String text;
                if(value == 350) {
                  text = '350';
                } else if(value == 300) {
                  text = '300';
                } else if (value == 200) {
                  text = '200';
                } else if (value == 100) {
                  text = '100';
                } else if (value == 0) {
                  text = '0';
                } else {
                  return Container();
                }
                return SideTitleWidget(axisSide: meta.axisSide, space: 10, child: Text(text, style: style));
              }
          ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),

      borderData: FlBorderData(show: false),
      barGroups: [
        BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(
                toY: 319,
                gradient: const LinearGradient(colors: [
                  Color(0xfff2e8ce),
                  Color(0xffffe99c),
                ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                ),
                width: 20,
              )
            ]
        ),
        BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(
                toY: 288,
                gradient: const LinearGradient(colors: [
                  Color(0xfff2e8ce),
                  Color(0xffffe99c),
                ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                ),
                width: 20,
              )
            ]
        ),
        BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: 276,
                gradient: const LinearGradient(colors: [
                  Color(0xfff2e8ce),
                  Color(0xffffe99c),
                ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                ),
                width: 20,
              )
            ]
        ),
        BarChartGroupData(
            x: 3,
            barRods: [
              BarChartRodData(
                toY: 223,
                gradient: const LinearGradient(colors: [
                  Color(0xfff2e8ce),
                  Color(0xffffe99c),
                ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                ),
                width: 20,
              )
            ]
        ),
        BarChartGroupData(
            x: 4,
            barRods: [
              BarChartRodData(
                toY: 213,
                gradient: const LinearGradient(colors: [
                  Color(0xfff2e8ce),
                  Color(0xffffe99c),
                ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                ),
                width: 20,
              )
            ]
        ),
        BarChartGroupData(
            x: 5,
            barRods: [
              BarChartRodData(
                toY: 180,
                gradient: const LinearGradient(colors: [
                  Color(0xfff2e8ce),
                  Color(0xffffe99c),
                ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                ),
                width: 20,
              )
            ]
        ),
        BarChartGroupData(
            x: 6,
            barRods: [
              BarChartRodData(
                toY: 179,
                gradient: const LinearGradient(colors: [
                  Color(0xfff2e8ce),
                  Color(0xffffe99c),
                ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                ),
                width: 20,
              )
            ]
        )
      ],
      gridData: FlGridData(show: false),
      alignment: BarChartAlignment.spaceAround,
      //backgroundColor: const Color(0xff03000d),
      maxY: 350,
    );
  }


  /**
   *
   *
   *        PAGE LAYOUTS
   *
   *
   */

  @override
  void initState() {
    super.initState();
    for (var element in allInsights) { 
      visibleInsights.add(element);
    }}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MUSIC DATA')),
        body: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 30),
                ElevatedButton(onPressed: _goToInsights, child: const Text('Insights')),
                const SizedBox(height: 30),
                ElevatedButton(onPressed: _goToGraphs, child: const Text('Graphs')),
                const SizedBox(height: 30),
                ElevatedButton(onPressed: _goToSettings, child: const Text('Settings')),

              ],
            )
        )
    );
  }

  void _goToInsights(){
    Navigator.of(context).push(MaterialPageRoute<void>(
        builder: (context){
          return Scaffold(
              appBar: AppBar(title: const Text('MUSIC DATA')),
              body: ListView(
                padding: const EdgeInsets.all(20),
                children: getInsightList()
              )

          ); //NEEDS STRUCTURE HERE
        }
      )
    );
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
            children: [
              const SizedBox(height: 30),
              const Text('Your Top Genre is:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              const SizedBox(height: 10),
              const Text('shoegaze', style: TextStyle(color: Color(0xff2f37a8), fontWeight: FontWeight.bold, fontSize: 18))
            ],
          )
      );
    }

    if(visibleInsights.contains('Time you tend to listen to music')) {
      returnables.add(
          Column(
            children: [
              const SizedBox(height: 30),
              const Text('You listen to music the most at:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              const SizedBox(height: 10),
              const Text('11:00 pm', style: TextStyle(color: Color(0xff2f37a8), fontWeight: FontWeight.bold, fontSize: 18))
            ],
          )
      );
    }
    if(visibleInsights.contains('Your unique artists and songs')){
      returnables.add(
          Column(
            children: [
              const SizedBox(height: 30),
              const Text('You listen to 800 unique artists, and', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              const SizedBox(height: 10),
              const Text('10,000 unique songs.', style: TextStyle(color: Color(0xff2f37a8), fontWeight: FontWeight.bold, fontSize: 18))
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

  void _goToSettings(){
    Navigator.of(context).push(MaterialPageRoute<void>(
        builder: (BuildContext context){
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState){
                return Scaffold(
                    appBar: AppBar(title: const Text('MUSIC DATA')),
                    body: ListView(
                        children: [
                          const SizedBox(height: 10),
                          const Center(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child:Text('Select which Insights you want to hide or show.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),),),
                          const SizedBox(height: 10),
                          listTileByVisibility('Your Favorite Artist'),
                          listTileByVisibility('Your Most-Listened To Album'),
                          listTileByVisibility('Your Most-Listened Song'),
                          listTileByVisibility('Your Most-Skipped Song'),
                          listTileByVisibility('Your Top Genre'),
                          listTileByVisibility('Time you tend to listen to music'),
                          listTileByVisibility('Your unique artists and songs'),
                        ]
                    )
                );
              }
          );
        }
      )
    );
  }

  void _goToGraphs(){
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (context){
        return Scaffold(
            appBar: AppBar(title: const Text('MUSIC DATA')),
            body: Center(
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 30),
                    const Text('Graphs', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    const SizedBox(height: 10),
                    const SizedBox(height: 30),
                    ElevatedButton(onPressed: _goToGenres, child: const Text('Genres')),
                    const SizedBox(height: 30),
                    ElevatedButton(onPressed: _goToDescriptions, child: const Text('Descriptions')),
                    const SizedBox(height: 30),
                    ElevatedButton(onPressed: _goToFavorites, child: const Text('Favorite Albums'))
                  ],
                )
            )
        );
      }
      )
    );
  }

  void _goToGenres(){
    Navigator.of(context).push(MaterialPageRoute<void>(
    builder: (context) {
      return Scaffold(
          appBar: AppBar(
              title: const Text('MUSIC DATA')
          ),
          body: Column(
            children: [
              const SizedBox(height: 30),
              const Text('Your Most Common Genres:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              const SizedBox(height: 10),
              AspectRatio (
                  aspectRatio: 1,
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                          color: const Color(0xff0d3469),
                          child: Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: BarChart(genresChartData()),
                              )
                          )
                      )
                  )

              ),
              const Text('1. Indie Rock', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24)),
              const SizedBox(height: 10),
              const Text('2. Indie Folk', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24)),
              const SizedBox(height: 10),
              const Text('3. Singer-Songwriter', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24)),
              const SizedBox(height: 10),
              const Text('4. Art Pop', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24)),
              const SizedBox(height: 10),
              const Text('5. Indie Pop', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24)),
              const SizedBox(height: 10),
              const Text('6. Chamber Pop', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24)),
              const SizedBox(height: 10),
              const Text('7. Dream Pop', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24)),
            ],
          )
      );
    }
    )
    );
  }

  void _goToDescriptions(){
    Navigator.of(context).push(MaterialPageRoute<void>(
    builder: (context) {
      return Scaffold(
          appBar: AppBar(
              title: const Text('MUSIC DATA')
          ),
          body: Column(
            children: [
              const SizedBox(height: 30),
              const Text('Your Most Common Descriptions:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              const SizedBox(height: 10),
              AspectRatio (
                  aspectRatio: 1,
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                          color: const Color(0xff0d3469),
                          child: Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: BarChart(descriptionsChartData()),
                              )
                          )
                      )
                  )

              ),
              const Text('1. male vocals', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24)),
              const SizedBox(height: 10),
              const Text('2. melodic', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24)),
              const SizedBox(height: 10),
              const Text('3. melancholic', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24)),
              const SizedBox(height: 10),
              const Text('4. bittersweet', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24)),
              const SizedBox(height: 10),
              const Text('5. introspective', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24)),
              const SizedBox(height: 10),
              const Text('6. atmospheric', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24)),
              const SizedBox(height: 10),
              const Text('7. passionate', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24)),
            ],
          )
      );
    }
    ));

  }

  void _goToFavorites(){
    Navigator.of(context).push(MaterialPageRoute<void>(
    builder: (context) {
      return Scaffold(
          appBar: AppBar(
              title: const Text('MUSIC DATA')
          ),
          body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Center(
                    child: Text('Your Favorite Albums', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
                  ),
                  const Divider(),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Expanded(child: Image.asset('images/IAmEasyToFind.png', height: 100, width: 100),),
                      ),
                      Container(
                        width: 250,
                        child: Center(
                            child: Column(
                              children: const [
                                Text('I Am Easy to Find', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                Text('The National', style: TextStyle(fontWeight: FontWeight.w200, fontSize: 18))
                              ],
                            )
                        )
                      )
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Expanded(child: Image.asset('images/CarrieAndLowell.jpg', height: 100, width: 100),),
                      ),
                      Container(
                          width: 250,
                          child: Center(
                              child: Column(
                                children: const [
                                  Text('Carrie and Lowell', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                  Text('Sufjan Stevens', style: TextStyle(fontWeight: FontWeight.w200, fontSize: 18))
                                ],
                              )
                          )
                      )
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Expanded(child: Image.asset('images/ForEmmaForeverAgo.jpg', height: 100, width: 100),),
                      ),
                      Container(
                          width: 250,
                          child: Center(
                              child: Column(
                                children: const [
                                  Text('For Emma, Forever Ago', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                  Text('Bon Iver', style: TextStyle(fontWeight: FontWeight.w200, fontSize: 18))
                                ],
                              )
                          )
                      )
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Expanded(child: Image.asset('images/UFOF.jpg', height: 100, width: 100),),
                      ),
                      Container(
                          width: 250,
                          child: Center(
                              child: Column(
                                children: const [
                                  Text('U.F.O.F', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                  Text('Big Thief', style: TextStyle(fontWeight: FontWeight.w200, fontSize: 18))
                                ],
                              )
                          )
                      )
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Expanded(child: Image.asset('images/Marigold.jpg', height: 100, width: 100),),
                      ),
                      Container(
                          width: 250,
                          child: Center(
                              child: Column(
                                children: const [
                                  Text('Marigold', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                  Text('Pinegrove', style: TextStyle(fontWeight: FontWeight.w200, fontSize: 18))
                                ],
                              )
                          )
                      )
                    ],
                  ),
                ],
            )
          )
      );
    }
    )
    );
  }

}
