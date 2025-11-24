import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mqttapp/providers/bpm_providers.dart';

const gradientColors = [Color(0xFF50E4FF), Color(0xFF2196F3)];

class BpmLineChart extends ConsumerStatefulWidget {
  const BpmLineChart({super.key});

  @override
  ConsumerState<BpmLineChart> createState() => _BpmLineChartState();
}

class _BpmLineChartState extends ConsumerState<BpmLineChart> {
  final int limitCount = 100; // Máximo de puntos visibles (ventana)
  final List<FlSpot> points = [];

  double x = -0.05;
  double currentXViewEnd = 0;
  double currentXViewStart = 0;
  // int? firstTime;

  @override
  Widget build(BuildContext context) {
    ref.listen(bpmCurrentValueProvider, (_, next) {
      final v = next.value;
      if (v == null) return;
      x += 0.05;
      //firstTime ??= v.timestamp;
      //final xval = v.timestamp - firstTime!;
      final yval = v.bpm;
      points.add(FlSpot(x.toDouble(), yval));
      if (points.length > limitCount) {
        points.removeAt(0);
      }
      // Pequeño margen visual futuro para que la línea no pegue con el borde derecho
      currentXViewEnd = points.last.x;
      currentXViewStart = points.first.x;
      setState(() {});
    });

    if (x < 0) return const Center(child: CircularProgressIndicator());
    return AspectRatio(
      aspectRatio: 1.70,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: true,
            drawVerticalLine: true,
            horizontalInterval: 40,
            verticalInterval: 1,
          ),
          titlesData: _makeTitles(),
          borderData: FlBorderData(show: false),
          minX: currentXViewStart,
          maxX: currentXViewEnd,
          minY: 0,
          maxY: 220,
          lineBarsData: [
            LineChartBarData(
              spots: points,
              isCurved: true,
              gradient: LinearGradient(colors: gradientColors),
              barWidth: 3,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: gradientColors
                      .map((color) => color.withValues(alpha: 0.3))
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

FlTitlesData _makeTitles() {
  return FlTitlesData(
    show: true,
    rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 30,
        interval: 1,
        getTitlesWidget: (value, meta) {
          return SideTitleWidget(
            meta: meta,
            child: Text(value.toStringAsFixed(2), style: TextStyle(fontSize: 10)),
          );
        },
      ),
    ),
    leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
  );
}
