import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ExpenditureData {
  final String year;
  final int subscribers;
  final charts.Color barColor;

  ExpenditureData(
    {
      required this.year,
      required this.subscribers,
      required this.barColor
    }
  );
}