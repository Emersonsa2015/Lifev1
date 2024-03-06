// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/painting.dart';

Future<int> weekNumber(DateTime dataAtual) async {
  // DateTime now = DateTime.now();
  DateTime now = dataAtual;
  DateTime startOfYear = DateTime(now.year, 1, 1);

  // Calculate the difference in days
  int differenceInDays = now.difference(startOfYear).inDays;

  // Calculate the week number (1-based)
  int weekNumber = (differenceInDays ~/ 7) + 1;

  FFAppState().Week = weekNumber;
  return weekNumber;
}
