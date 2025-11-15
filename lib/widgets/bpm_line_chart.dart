import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

const gradientColors = [Color(0xFF50E4FF), Color(0xFF2196F3)];

class BpmLineChart extends StatelessWidget {
  const BpmLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1.70, child: LineChart(mainData()));
  }
}

LineChartData mainData() {
  return LineChartData(
    gridData: FlGridData(
      show: true,
      drawVerticalLine: true,
      horizontalInterval: 1,
      verticalInterval: 1,
      // getDrawingHorizontalLine: (value) {
      //   return const FlLine(color: Colors.white10, strokeWidth: 1);
      // },
      // getDrawingVerticalLine: (value) {
      //   return const FlLine(color: Colors.white10, strokeWidth: 1);
      // },
    ),
    titlesData: FlTitlesData(
      show: true,
      rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          interval: 5,
          getTitlesWidget: (value, meta) {
            return SideTitleWidget(meta: meta, child: Text(value.toString()));
          },
        ),
      ),
      leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
    ),
    borderData: FlBorderData(
      show: false,
      //border: Border.all(color: const Color(0xff37434d)),
    ),
    minX: 0,
    maxX: 11,
    minY: 0,
    maxY: 6,
    lineBarsData: [
      LineChartBarData(
        spots: const [
          FlSpot(0, 3),
          FlSpot(2.6, 2),
          FlSpot(4.9, 5),
          FlSpot(6.8, 3.1),
          FlSpot(8, 4),
          FlSpot(9.5, 3),
          FlSpot(11, 4),
        ],
        isCurved: true,
        gradient: LinearGradient(colors: gradientColors),
        barWidth: 5,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            colors: gradientColors.map((color) => color.withValues(alpha: 0.3)).toList(),
          ),
        ),
      ),
    ],
  );
}
