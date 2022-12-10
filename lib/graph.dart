import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'home.dart';
import 'settings.dart';



class GraphsRoute extends StatefulWidget{
  const GraphsRoute({super.key});

  static const String routeName = '/graph';

  @override
  State<GraphsRoute> createState() => _GraphsRouteState();
}

class _GraphsRouteState extends State<GraphsRoute>{

  double corrector = 1.0;

  double correct(int n){
    return (n * corrector);
  }

  double correctDouble(double n){
    return (n * corrector);
  }


  List<BarChartGroupData> getGenresBars(int n){
    double barWidth = correctDouble(10.0 + 20.0 * ((15.0-n) / 15.0));

    List<BarChartGroupData> allBars = [
      BarChartGroupData(
          x: 0,
          barRods: [
            BarChartRodData(
              toY: 150,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 1,
          barRods: [
            BarChartRodData(
                toY: 134,
                //color: Colors.white,
                width: barWidth,
                gradient: LinearGradient(colors: [
                  HomePageState.accentColorLow,
                  HomePageState.accentColorHigh,
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
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 3,
          barRods: [
            BarChartRodData(
              toY: 88,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 4,
          barRods: [
            BarChartRodData(
              toY: 88,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 5,
          barRods: [
            BarChartRodData(
              toY: 81,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 6,
          barRods: [
            BarChartRodData(
              toY: 76,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 7,
          barRods: [
            BarChartRodData(
              toY: 61,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 8,
          barRods: [
            BarChartRodData(
              toY: 57,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 9,
          barRods: [
            BarChartRodData(
              toY: 52,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 10,
          barRods: [
            BarChartRodData(
              toY: 43,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 11,
          barRods: [
            BarChartRodData(
              toY: 40,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 12,
          barRods: [
            BarChartRodData(
              toY: 40,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 13,
          barRods: [
            BarChartRodData(
              toY: 36,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 14,
          barRods: [
            BarChartRodData(
              toY: 36,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
    ];

    List<BarChartGroupData> toReturn = <BarChartGroupData>[];

    for(int i = 0; i < n; i++ ){
      toReturn.add(allBars[i]);
    }

    return toReturn;
  }

  List<BarChartGroupData> getDescriptionsBars(int n){
    double barWidth = correctDouble(10.0 + 20.0 * ((15.0-n) / 15.0));

    List<BarChartGroupData> allBars = [
      BarChartGroupData(
          x: 0,
          barRods: [
            BarChartRodData(
              toY: 319,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 1,
          barRods: [
            BarChartRodData(
              toY: 288,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 2,
          barRods: [
            BarChartRodData(
              toY: 276,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 3,
          barRods: [
            BarChartRodData(
              toY: 223,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 4,
          barRods: [
            BarChartRodData(
              toY: 213,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 5,
          barRods: [
            BarChartRodData(
              toY: 180,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 6,
          barRods: [
            BarChartRodData(
              toY: 179,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 7,
          barRods: [
            BarChartRodData(
              toY: 155,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 8,
          barRods: [
            BarChartRodData(
              toY: 143,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 9,
          barRods: [
            BarChartRodData(
              toY: 142,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 10,
          barRods: [
            BarChartRodData(
              toY: 139,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 11,
          barRods: [
            BarChartRodData(
              toY: 125,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 12,
          barRods: [
            BarChartRodData(
              toY: 125,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 13,
          barRods: [
            BarChartRodData(
              toY: 121,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 14,
          barRods: [
            BarChartRodData(
              toY: 115,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
    ];

    List<BarChartGroupData> toReturn = <BarChartGroupData>[];

    for(int i = 0; i < n; i++ ){
      toReturn.add(allBars[i]);
    }

    return toReturn;

  }

  List<BarChartGroupData> getSkippedBars(int n){
    double barWidth = correctDouble(10.0 + 20.0 * ((15.0-n) / 15.0));

    List<BarChartGroupData> allBars = [
      BarChartGroupData(
          x: 0,
          barRods: [
            BarChartRodData(
              toY: 6,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 1,
          barRods: [
            BarChartRodData(
              toY: 6,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 2,
          barRods: [
            BarChartRodData(
              toY: 5,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 3,
          barRods: [
            BarChartRodData(
              toY: 5,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 4,
          barRods: [
            BarChartRodData(
              toY: 5,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 5,
          barRods: [
            BarChartRodData(
              toY: 4,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 6,
          barRods: [
            BarChartRodData(
              toY: 3,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 7,
          barRods: [
            BarChartRodData(
              toY: 3,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 8,
          barRods: [
            BarChartRodData(
              toY: 3,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 9,
          barRods: [
            BarChartRodData(
              toY: 3,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 10,
          barRods: [
            BarChartRodData(
              toY: 3,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 11,
          barRods: [
            BarChartRodData(
              toY: 3,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 12,
          barRods: [
            BarChartRodData(
              toY: 2,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 13,
          barRods: [
            BarChartRodData(
              toY: 2,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
      BarChartGroupData(
          x: 14,
          barRods: [
            BarChartRodData(
              toY: 2,
              gradient: LinearGradient(colors: [
                HomePageState.accentColorLow,
                HomePageState.accentColorHigh,
              ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              ),
              width: barWidth,
            )
          ]
      ),
    ];

    List<BarChartGroupData> toReturn = <BarChartGroupData>[];

    for(int i = 0; i < n; i++ ){
      toReturn.add(allBars[i]);
    }

    return toReturn;

  }

  BarChartData genresChartData() {

    return BarChartData(
      barTouchData: BarTouchData(
          enabled: true,
          touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.grey,
            tooltipMargin: correct(8),
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
                case 7: text = 'Art Rock'; break;
                case 8: text = 'Ambient Pop'; break;
                case 9: text = 'Indietronica'; break;
                case 10: text = 'Alternative Rock'; break;
                case 11: text = 'Americana'; break;
                case 12: text = 'Synthpop'; break;
                case 13: text = 'Chamber Folk'; break;
                case 14: text = 'Pop Rock'; break;
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
                reservedSize: correct(30),
                getTitlesWidget: (double value, TitleMeta meta){
                  var style = TextStyle(                                      //MAY CAUSE ERROR; THIS WAS CONST
                      color: HomePageState.midDullColor,
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
                    case 7: text = 'Art Rock'; break;
                    case 8: text = 'Ambient Pop'; break;
                    case 9: text = 'Indietronica'; break;
                    case 10: text = 'Alternative Rock'; break;
                    case 11: text = 'Americana'; break;
                    case 12: text = 'Synthpop'; break;
                    case 13: text = 'Chamber Folk'; break;
                    case 14: text = 'Pop Rock'; break;
                    default: text = 'extra column'; break;
                  }
                  return SideTitleWidget(axisSide: meta.axisSide, space: 4, child: Text(text, style: style));
                }
            )
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
              showTitles: true,
              reservedSize: correct(45),
              interval: 1,
              getTitlesWidget: (double value, TitleMeta meta){
                var style = TextStyle(
                    color: HomePageState.midDullColor,
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
                return SideTitleWidget(axisSide: meta.axisSide, space: correct(10), child: Text(text, style: style));
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
      barGroups: getGenresBars(HomePageState.graphColumns),                                       //REPLACE WITH FUNCTION
      gridData: FlGridData(show: false),
      alignment: BarChartAlignment.spaceAround,
      //backgroundColor: const Color(0xff03000d),
      maxY: 180,
    );
  }

  BarChartData descriptionsChartData(){

    return BarChartData(
      barTouchData: BarTouchData(
          enabled: true,
          touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.grey,
            tooltipMargin: correct(8),
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
                case 7: text = 'lush'; break;
                case 8: text = 'poetic'; break;
                case 9: text = 'mellow'; break;
                case 10: text = 'love'; break;
                case 11: text = 'warm'; break;
                case 12: text = 'female vocals'; break;
                case 13: text = 'longing'; break;
                case 14: text = 'lonely'; break;
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
                reservedSize: correct(30),
                getTitlesWidget: (double value, TitleMeta meta){
                  var style = TextStyle(
                      color: HomePageState.midDullColor,
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
                    case 7: text = 'lush'; break;
                    case 8: text = 'poetic'; break;
                    case 9: text = 'mellow'; break;
                    case 10: text = 'love'; break;
                    case 11: text = 'warm'; break;
                    case 12: text = 'female vocals'; break;
                    case 13: text = 'longing'; break;
                    case 14: text = 'lonely'; break;
                    default: text = 'extra column'; break;
                  }
                  return SideTitleWidget(axisSide: meta.axisSide, space: correct(4), child: Text(text, style: style));
                }
            )
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
              showTitles: true,
              reservedSize: correct(45),
              interval: 1,
              getTitlesWidget: (double value, TitleMeta meta){
                var style = TextStyle(
                    color: HomePageState.midDullColor,
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
                return SideTitleWidget(axisSide: meta.axisSide, space: correct(10), child: Text(text, style: style));
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
      barGroups: getDescriptionsBars(HomePageState.graphColumns),
      gridData: FlGridData(show: false),
      alignment: BarChartAlignment.spaceAround,
      //backgroundColor: const Color(0xff03000d),
      maxY: 350,
    );
  }

  BarChartData skippedChartData(){

    return BarChartData(
      barTouchData: BarTouchData(
          enabled: true,
          touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.grey,
            tooltipMargin: correct(8),
            getTooltipItem: (BarChartGroupData group, int groupIndex, BarChartRodData rod, int rodIndex) {
              String text;
              switch(group.x){
                case 0: text = 'The River'; break;
                case 1: text = 'Clavado en un Bar'; break;
                case 2: text = 'Hate Me'; break;
                case 3: text = 'Born to Run'; break;
                case 4: text = "Waitin' on a Sunny Day"; break;
                case 5: text = 'Fly to Paradise'; break;
                case 6: text = 'Song of Our So-Cal...'; break;
                case 7: text = 'Another Brick in...'; break;
                case 8: text = 'Dance With Me'; break;
                case 9: text = "Don't Worry Baby"; break;
                case 10: text = 'Float On'; break;
                case 11: text = "when the party's..."; break;
                case 12: text = 'Give Me Love'; break;
                case 13: text = 'Sunflower Vol. 8'; break;
                case 14: text = '"A Far Green Country"'; break;
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
                reservedSize: correct(30),
                getTitlesWidget: (double value, TitleMeta meta){
                  var style = TextStyle(
                      color: HomePageState.midDullColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  );
                  String text;
                  switch(value.toInt()){
                    case 0: text = 'The River'; break;
                    case 1: text = 'Clavado en un Bar'; break;
                    case 2: text = 'Hate Me'; break;
                    case 3: text = 'Born to Run'; break;
                    case 4: text = "Waitin' on a Sunny Day"; break;
                    case 5: text = 'Fly to Paradise'; break;
                    case 6: text = 'Song of Our So-Cal...'; break;
                    case 7: text = 'Another Brick in...'; break;
                    case 8: text = 'Dance With Me'; break;
                    case 9: text = "Don't Worry Baby"; break;
                    case 10: text = 'Float On'; break;
                    case 11: text = "when the party's..."; break;
                    case 12: text = 'Give Me Love'; break;
                    case 13: text = 'Sunflower Vol. 8'; break;
                    case 14: text = '"A Far Green Country"'; break;
                    default: text = 'extra column'; break;
                  }
                  return SideTitleWidget(axisSide: meta.axisSide, space: correct(4), child: Text(text, style: style));
                }
            )
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
              showTitles: true,
              reservedSize: correct(45),
              interval: 1,
              getTitlesWidget: (double value, TitleMeta meta){
                var style = TextStyle(
                    color: HomePageState.midDullColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                );
                String text;
                if(value == 8) {
                  text = '8';
                } else if(value == 6) {
                  text = '6';
                } else if (value == 4) {
                  text = '4';
                } else if (value == 2) {
                  text = '2';
                } else if (value == 0) {
                  text = '0';
                } else {
                  return Container();
                }
                return SideTitleWidget(axisSide: meta.axisSide, space: correct(10), child: Text(text, style: style));
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
      barGroups: getSkippedBars(HomePageState.graphColumns),
      gridData: FlGridData(show: false),
      alignment: BarChartAlignment.spaceAround,
      //backgroundColor: const Color(0xff03000d),
      maxY: 8,
    );
  }

  Widget getGenresGraph(){
    return ClipRRect(
        borderRadius: BorderRadius.circular(correct(40)),
        child: SizedBox(
            height: correct(500),
            width: correct(380),
            child: Container(
                color: HomePageState.darkColor,
                child: Column(
                    children: [
                      SizedBox(height: correct(20)),
                      Text("Top Genres", style: TextStyle(color: Colors.white, fontSize: correct(30))),
                      SizedBox(height: correct(1)),
                      Text("By Play Count", style: TextStyle(color: Colors.white, fontSize: correct(18), )),
                      SizedBox(height: correct(5)),
                      Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(correct(20)),
                            child: BarChart(genresChartData()),
                          )
                      ),
                      SizedBox(height: correct(10)),
                      Text("1. Indie Rock", style: TextStyle(color: Colors.white, fontSize: correct(26))),
                      SizedBox(height: correct(10)),
                      Row(
                          children: [
                            SizedBox(width: correct(60)),
                            Text("2. Indie Folk", style: TextStyle(color: Colors.white, fontSize: correct(21))),
                            SizedBox(width: correct(20)),
                            Text("3. Singer-S...", style: TextStyle(color: Colors.white, fontSize: correct(21))),
                          ]
                      ),
                      SizedBox(height: correct(10)),
                      Row(
                          children: [
                            SizedBox(width: correct(60)),
                            Text("4. Art Pop", style: TextStyle(color: Colors.white, fontSize: correct(21))),
                            SizedBox(width: correct(40)),
                            Text("5. Indie Pop", style: TextStyle(color: Colors.white, fontSize: correct(21))),
                          ]
                      ),
                      SizedBox(height: correct(30)),
                    ]
                )
            )
        )
    );
  }

  Widget getDescriptionsGraph(){
    return ClipRRect(
        borderRadius: BorderRadius.circular(correct(40)),
        child: SizedBox(
            height: correct(500),
            width: correct(380),
            child: Container(
                color: HomePageState.darkColor,
                child: Column(
                    children: [
                      SizedBox(height: correct(20)),
                      Text("Top Descriptors", style: TextStyle(color: Colors.white, fontSize: correct(30))),
                      SizedBox(height: correct(1)),
                      Text("By Play Count", style: TextStyle(color: Colors.white, fontSize: correct(18), )),
                      SizedBox(height: correct(5)),
                      Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(correct(20)),
                            child: BarChart(descriptionsChartData()),
                          )
                      ),
                      SizedBox(height: correct(10)),
                      Text("1. melodic", style: TextStyle(color: Colors.white, fontSize: correct(26))),
                      SizedBox(height: correct(10)),
                      Row(
                          children: [
                            SizedBox(width: correct(30)),
                            Text("2. melancholic", style: TextStyle(color: Colors.white, fontSize: correct(21))),
                            SizedBox(width: correct(30)),
                            Text("3. bittersweet", style: TextStyle(color: Colors.white, fontSize: correct(21))),
                          ]
                      ),
                      SizedBox(height: correct(10)),
                      Row(
                          children: [
                            SizedBox(width: correct(30)),
                            Text("4. introspective", style: TextStyle(color: Colors.white, fontSize: correct(21))),
                            SizedBox(width: correct(20)),
                            Text("5. atmospheric", style: TextStyle(color: Colors.white, fontSize: correct(21))),
                          ]
                      ),
                     SizedBox(height: correct(30)),
                    ]
                )
            )
        )
    );
  }

  Widget getSkippedSongsGraph(){
    return ClipRRect(
        borderRadius: BorderRadius.circular(correct(40)),
        child: SizedBox(
            height: correct(500),
            width: correct(380),
            child: Container(
                color: HomePageState.darkColor,
                child: Column(
                    children: [
                      SizedBox(height: correct(20)),
                      Text("Most Skipped Songs", style: TextStyle(color: Colors.white, fontSize: correct(30))),
                      SizedBox(height: correct(1)),
                      Text("By Skip Count", style: TextStyle(color: Colors.white, fontSize: correct(18), )),
                      SizedBox(height: correct(5)),
                      Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(correct(20)),
                            child: BarChart(skippedChartData()),
                          )
                      ),
                      SizedBox(height: correct(10)),
                      Text("1. The River", style: TextStyle(color: Colors.white, fontSize: correct(26))),
                      SizedBox(height: correct(10)),
                      Row(
                          children: [
                            SizedBox(width: correct(40)),
                            Text("2. Clavado...", style: TextStyle(color: Colors.white, fontSize: correct(21))),
                            SizedBox(width: correct(38)),
                            Text("3. Hate Me", style: TextStyle(color: Colors.white, fontSize: correct(21))),
                          ]
                      ),
                      SizedBox(height: correct(10)),
                      Row(
                          children: [
                            SizedBox(width: correct(40)),
                            Text("4. Born to Run", style: TextStyle(color: Colors.white, fontSize: correct(21))),
                            SizedBox(width: correct(20)),
                            Text("5. Waitin' on...", style: TextStyle(color: Colors.white, fontSize: correct(21))),
                          ]
                      ),
                      SizedBox(height: correct(30)),
                    ]
                )
            )
        )
    );
  }

  Widget getAlbumsChart(){
    return ClipRRect(
        borderRadius: BorderRadius.circular(correct(20)),
        child: SizedBox(
            width: correct(380),
            height: correct(670),
            child: Container(
                color: HomePageState.midBrightColor,
                child: Column(
                  children: [
                    SizedBox(height: correct(20)),
                    Center(
                      child: Text('Your Favorite Albums', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: correct(28))),
                    ),
                    const Divider(),
                    SizedBox(height: correct(10)),
                    Row(
                      children: [
                        SizedBox(width: correct(20)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(correct(20)),
                          child: Image.asset('images/IAmEasyToFind.png', height: correct(100), width: correct(100)),
                        ),
                        SizedBox(
                            width: correct(250),
                            child: Center(
                                child: Column(
                                  children: [
                                    Text('I Am Easy to Find', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: correct(21))),
                                    Text('The National', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: correct(18)))
                                  ],
                                )
                            )
                        )
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        SizedBox(width: correct(20)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(correct(20)),
                          child: Image.asset('images/CarrieAndLowell.jpg', height: correct(100), width: correct(100)),
                        ),
                        SizedBox(
                            width: correct(250),
                            child: Center(
                                child: Column(
                                  children: [
                                    Text('Carrie and Lowell', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: correct(21))),
                                    Text('Sufjan Stevens', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: correct(18)))
                                  ],
                                )
                            )
                        )
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        SizedBox(width: correct(20)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(correct(20)),
                          child: Image.asset('images/ForEmmaForeverAgo.jpg', height: correct(100), width: correct(100)),
                        ),
                        SizedBox(
                            width: correct(250),
                            child: Center(
                                child: Column(
                                  children:  [
                                    Text('For Emma, Forever...', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: correct(21))),
                                    Text('Bon Iver', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: correct(18)))
                                  ],
                                )
                            )
                        )
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        SizedBox(width: correct(20)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(correct(20)),
                          child: Image.asset('images/UFOF.jpg', height: correct(100), width: correct(100)),
                        ),
                        SizedBox(
                            width: correct(250),
                            child: Center(
                                child: Column(
                                  children:  [
                                    Text('U.F.O.F', style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold, fontSize: correct(21))),
                                    Text('Big Thief', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: correct(18)))
                                  ],
                                )
                            )
                        )
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        SizedBox(width: correct(20)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(correct(20)),
                          child: Image.asset('images/Marigold.jpg', height: correct(100), width: correct(100)),
                        ),
                        SizedBox(
                            width: correct(250),
                            child: Center(
                                child: Column(
                                  children: [
                                    Text('Marigold', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: correct(21))),
                                    Text('Pinegrove', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: correct(18)))
                                  ],
                                )
                            )
                        )
                      ],
                    ),
                  ],
                )
            )
        )
    );
  }

  Widget getArtistsChart(){
    return ClipRRect(
        borderRadius: BorderRadius.circular(correct(20)),
        child: SizedBox(
            width: correct(380),
            height: correct(670),
            child: Container(
                color: HomePageState.midBrightColor,
                child: Column(
                  children: [
                    SizedBox(height: correct(20)),
                    Center(
                      child: Text('Your Favorite Artists', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: correct(28))),
                    ),
                    const Divider(),
                    SizedBox(height: correct(10)),
                    Row(
                      children: [
                        SizedBox(width: correct(20)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(correct(20)),
                          child: Image.asset('images/TheNational.jpeg', height: correct(100), width: correct(100)),
                        ),
                        SizedBox(
                            width: correct(250),
                            child: Center(
                                child: Column(
                                  children:  [
                                    Text('The National', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: correct(21))),
                                  ],
                                )
                            )
                        )
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                         SizedBox(width: correct(20)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(correct(20)),
                          child: Image.asset('images/BenHoward.jpg', height: correct(100), width: correct(100)),
                        ),
                        SizedBox(
                            width: correct(250),
                            child: Center(
                                child: Column(
                                  children: [
                                    Text('Ben Howard', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: correct(21))),
                                  ],
                                )
                            )
                        )
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        SizedBox(width: correct(20)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(correct(20)),
                          child: Image.asset('images/BigThief.jpg', height: correct(100), width: correct(100)),
                        ),
                        SizedBox(
                            width: correct(250),
                            child: Center(
                                child: Column(
                                  children: [
                                    Text('Big Thief', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: correct(21))),
                                  ],
                                )
                            )
                        )
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        SizedBox(width: correct(20)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(correct(20)),
                          child: Image.asset('images/BonIver.jpg', height: correct(100), width: correct(100)),
                        ),
                        SizedBox(
                            width: correct(250),
                            child: Center(
                                child: Column(
                                  children: [
                                    Text('Bon Iver', style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold, fontSize: correct(21))),
                                  ],
                                )
                            )
                        )
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        SizedBox(width: correct(20)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(correct(20)),
                          child: Image.asset('images/Waxahatchee.jpg', height: correct(100), width: correct(100)),
                        ),
                        SizedBox(
                            width: correct(250),
                            child: Center(
                                child: Column(
                                  children: [
                                    Text('Waxahatchee', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: correct(21))),
                                  ],
                                )
                            )
                        )
                      ],
                    ),
                  ],
                )
            )
        )
    );
  }

  Widget getSongsChart(){
    return ClipRRect(
        borderRadius: BorderRadius.circular(correct(20)),
        child: SizedBox(
            width: correct(380),
            height: correct(670),
            child: Container(
                color: HomePageState.midBrightColor,
                child: Column(
                  children: [
                    SizedBox(height: correct(20)),
                    Center(
                      child: Text('Your Favorite Songs', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: correct(28))),
                    ),
                    const Divider(),
                    SizedBox(height: correct(10)),
                    Row(
                      children: [
                        SizedBox(width: correct(20)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(correct(20)),
                          child: Image.asset('images/UFOF.jpg', height: correct(100), width: correct(100)),
                        ),
                        SizedBox(
                            width: correct(250),
                            child: Center(
                                child: Column(
                                  children: [
                                    Text('UFOF', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: correct(21))),
                                    Text('Big Thief', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: correct(18))),
                                    Text('U.F.O.F', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: correct(18)))
                                  ],
                                )
                            )
                        )
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        SizedBox(width: correct(20)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(correct(20)),
                          child: Image.asset('images/Marigold.jpg', height: correct(100), width: correct(100)),
                        ),
                        SizedBox(
                            width: correct(250),
                            child: Center(
                                child: Column(
                                  children: [
                                    Text('Spiral', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: correct(21))),
                                    Text('Pinegrove', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: correct(18))),
                                    Text('Marigold', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: correct(18)))
                                  ],
                                )
                            )
                        )
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        SizedBox(width: correct(20)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(correct(20)),
                          child: Image.asset('images/UFOF.jpg', height: correct(100), width: correct(100)),
                        ),
                        SizedBox(
                            width: correct(250),
                            child: Center(
                                child: Column(
                                  children: [
                                    Text('Contact', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: correct(21))),
                                    Text('Big Thief', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: correct(18))),
                                    Text('U.F.O.F', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: correct(18)))
                                  ],
                                )
                            )
                        )
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        SizedBox(width: correct(20)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(correct(20)),
                          child: Image.asset('images/IAmEasyToFind.png', height: correct(100), width: correct(100)),
                        ),
                        SizedBox(
                            width: correct(250),
                            child: Center(
                                child: Column(
                                  children:  [
                                    Text('Light Years', style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold, fontSize: correct(21))),
                                    Text('The National', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: correct(18))),
                                    Text('I Am Easy to Find', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: correct(18)))
                                  ],
                                )
                            )
                        )
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        SizedBox(width: correct(20)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(correct(20)),
                          child: Image.asset('images/IAmEasyToFind.png', height: correct(100), width: correct(100)),
                        ),
                        SizedBox(
                            width: correct(250),
                            child: Center(
                                child: Column(
                                  children: [
                                    Text('Hey Rosey', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: correct(21))),
                                    Text('The National', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: correct(18))),
                                    Text('I Am Easy to Find', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: correct(18)))
                                  ],
                                )
                            )
                        )
                      ],
                    ),
                  ],
                )
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
          title: const Text('GRAPHS AND CHARTS'),
          backgroundColor: HomePageState.darkColor,
          automaticallyImplyLeading: false
      ),
      body: Padding(
        padding: EdgeInsets.all(correct(20)),
        child: ListView(
            children:[
              getGenresGraph(),
              SizedBox(height: correct(20)),
              getDescriptionsGraph(),
              SizedBox(height: correct(20)),
              getSkippedSongsGraph(),
              SizedBox(height: correct(20)),
              getArtistsChart(),
              SizedBox(height: correct(20)),
              getAlbumsChart(),
              SizedBox(height: correct(20)),
              getSongsChart()
            ]
        ),
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
              if(index == 0){
                Navigator.pushNamed(context, HomePage.routeName);
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