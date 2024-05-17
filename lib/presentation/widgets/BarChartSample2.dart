import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350, // Ajusta la altura según tu necesidad
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: 30, // Ajusta el valor máximo según tus datos
          barTouchData: BarTouchData(
            enabled: false,
          ),
          titlesData: FlTitlesData(
            leftTitles: SideTitles(showTitles: false),
            bottomTitles: SideTitles(
              showTitles: true,
              getTextStyles: (context, value) => const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18), // Aumenta el tamaño de fuente
              margin: 10,
              getTitles: (double value) {
                switch (value.toInt()) {
                  case 0:
                    return 'L';
                  case 1:
                    return 'M';
                  case 2:
                    return 'M';
                  case 3:
                    return 'J';
                  case 4:
                    return 'V';
                  default:
                    return '';
                }
              },
            ),
          ),
          gridData: FlGridData(show: false),
          borderData: FlBorderData(
            show: false,
          ),
          barGroups: [
            BarChartGroupData(
              x: 0,
              barsSpace: 4,
              barRods: [
                BarChartRodData(
                    y: 26,
                    colors: [Color(0xff19bfff)],
                    width: 15), // Aumenta el ancho
                BarChartRodData(
                    y: 20,
                    colors: [Color(0xff2c51a4)],
                    width: 15), // Aumenta el ancho
              ],
            ),
            BarChartGroupData(
              x: 1,
              barsSpace: 4,
              barRods: [
                BarChartRodData(
                    y: 24,
                    colors: [Color(0xff19bfff)],
                    width: 15), // Aumenta el ancho
                BarChartRodData(
                    y: 18,
                    colors: [Color(0xff2c51a4)],
                    width: 15), // Aumenta el ancho
              ],
            ),
            BarChartGroupData(
              x: 2,
              barsSpace: 4,
              barRods: [
                BarChartRodData(
                    y: 23,
                    colors: [Color(0xff19bfff)],
                    width: 15), // Aumenta el ancho
                BarChartRodData(
                    y: 13,
                    colors: [Color(0xff2c51a4)],
                    width: 15), // Aumenta el ancho
              ],
            ),
            BarChartGroupData(
              x: 3,
              barsSpace: 4,
              barRods: [
                BarChartRodData(
                    y: 25,
                    colors: [Color(0xff19bfff)],
                    width: 15), // Aumenta el ancho
                BarChartRodData(
                    y: 20,
                    colors: [Color(0xff2c51a4)],
                    width: 15), // Aumenta el ancho
              ],
            ),
            BarChartGroupData(
              x: 4,
              barsSpace: 4,
              barRods: [
                BarChartRodData(
                    y: 23,
                    colors: [Color(0xff19bfff)],
                    width: 15), // Aumenta el ancho
                BarChartRodData(
                    y: 16,
                    colors: [Color(0xff2c51a4)],
                    width: 15), // Aumenta el ancho
              ],
            ),
          ],
        ),
      ),
    );
  }
}
