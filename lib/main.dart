import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'my_app.dart';

void main() async{
  await initHive();
  runApp(const MyApp());
}

Future<void> initHive() async{

  await Hive.initFlutter();
  await Hive.openBox("login");
  await Hive.openBox("accounts");
}
