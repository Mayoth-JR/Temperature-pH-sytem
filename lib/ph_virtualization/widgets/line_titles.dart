import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles1 {
  static getTitleData() => FlTitlesData(
    show: true,
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 35,
        getTitlesWidget: (double value, TitleMeta meta) {
          final style = TextStyle(
            color: Color(0xff68737d),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          );
          Widget text;
          switch (value.toInt()) {
            case 2:
              text = Text('MAR', style: style);
              break;
            case 5:
              text = Text('JUN', style: style);
              break;
            case 8:
              text = Text('SEP', style: style);
              break;
            default:
              text = Text('', style: style);
          }
          return SideTitleWidget(
            axisSide: meta.axisSide,
            space: 8, // Space between the chart and the title
            child: text,
          );
        },
      ),
    ),
    leftTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 35,
        getTitlesWidget: (double value, TitleMeta meta) {
          final style = TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          );
          Widget text;
          switch (value.toInt()) {
            case 1:
              text = Text('10k');
              break;
            case 3:
              text = Text('30k');
              break;
            case 5:
              text = Text('50k');
              break;
            default:
              text = Text('', style: style);
          }
          return SideTitleWidget(
            axisSide: meta.axisSide,
            space: 12, // Space between the chart and the title
            child: text,
          );
        },
      ),
    ),
  );
}

class LineTitles2 {
  static getTitleData() => FlTitlesData(
    show: true,
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 35,
        getTitlesWidget: (double value, TitleMeta meta) {
          final style = TextStyle(
            color: Color(0xff68737d),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          );
          Widget text;
          switch (value.toInt()) {
            case 2:
              text = Text('MAR');
              break;
            case 5:
              text = Text('JUN');
              break;
            case 8:
              text = Text('SEP');
              break;
            default:
              text = Text('', style: style);
          }
          return SideTitleWidget(
            axisSide: meta.axisSide,
            space: 8, // Space between the chart and the title
            child: text,
          );
        },
      ),
    ),
    leftTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 35,
        getTitlesWidget: (double value, TitleMeta meta) {
          final style = TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          );
          Widget text;
          switch (value.toInt()) {
            case 1:
              text = Text('10k', style: style);
              break;
            case 3:
              text = Text('30k', style: style);
              break;
            case 5:
              text = Text('50k', style: style);
              break;
            default:
              text = Text('', style: style);
          }
          return SideTitleWidget(
            axisSide: meta.axisSide,
            space: 12, // Space between the chart and the title
            child: text,
          );
        },
      ),
    ),
  );
}
