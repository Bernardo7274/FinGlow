import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample3 extends StatelessWidget {
  const BarChartSample3({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350, // Ajusta la altura según tu necesidad
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: 30, // Ajusta el valor máximo según tus datos
          barTouchData: BarTouchData(
            enabled: false,
          ),
          titlesData: FlTitlesData(
            leftTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  const style = TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  );
                  Widget text;
                  switch (value.toInt()) {
                    case 0:
                      text = const Text('Dic', style: style);
                      break;
                    case 1:
                      text = const Text('Ene', style: style);
                      break;
                    case 2:
                      text = const Text('Feb', style: style);
                      break;
                    case 3:
                      text = const Text('Mar', style: style);
                      break;
                    case 4:
                      text = const Text('Abr', style: style);
                      break;
                    case 5:
                      text = const Text('May', style: style);
                      break;
                    case 6:
                      text = const Text('Jun', style: style);
                      break;
                    case 7:
                      text = const Text('Jul', style: style);
                      break;
                    default:
                      text = const Text('', style: style);
                      break;
                  }
                  return SideTitleWidget(
                    axisSide: meta.axisSide,
                    space: 10, // Ajusta el espacio entre los títulos y las barras
                    child: text,
                  );
                },
                reservedSize: 40,
              ),
            ),
          ),
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(
            show: false,
          ),
          barGroups: [
            BarChartGroupData(
              x: 0,
              barsSpace: 4,
              barRods: [
                BarChartRodData(
                  toY: 26,
                  color: const Color(0xff19bfff),
                  width: 15,
                ),
                BarChartRodData(
                  toY: 20,
                  color: const Color(0xff2c51a4),
                  width: 15,
                ),
              ],
            ),
            BarChartGroupData(
              x: 1,
              barsSpace: 4,
              barRods: [
                BarChartRodData(
                  toY: 24,
                  color: const Color(0xff19bfff),
                  width: 15,
                ),
                BarChartRodData(
                  toY: 18,
                  color: const Color(0xff2c51a4),
                  width: 15,
                ),
              ],
            ),
            BarChartGroupData(
              x: 2,
              barsSpace: 4,
              barRods: [
                BarChartRodData(
                  toY: 23,
                  color: const Color(0xff19bfff),
                  width: 15,
                ),
                BarChartRodData(
                  toY: 13,
                  color: const Color(0xff2c51a4),
                  width: 15,
                ),
              ],
            ),
            BarChartGroupData(
              x: 3,
              barsSpace: 4,
              barRods: [
                BarChartRodData(
                  toY: 25,
                  color: const Color(0xff19bfff),
                  width: 15,
                ),
                BarChartRodData(
                  toY: 20,
                  color: const Color(0xff2c51a4),
                  width: 15,
                ),
              ],
            ),
            BarChartGroupData(
              x: 4,
              barsSpace: 4,
              barRods: [
                BarChartRodData(
                  toY: 23,
                  color: const Color(0xff19bfff),
                  width: 15,
                ),
                BarChartRodData(
                  toY: 16,
                  color: const Color(0xff2c51a4),
                  width: 15,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
