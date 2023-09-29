import 'package:melisaapp/constant/route_constants.dart';
import 'package:melisaapp/pages/tambahpengeluaran.dart';
import 'package:melisaapp/pages/tambahpemasukan.dart';
import 'package:melisaapp/pages/DetailCashFlowPage.dart';
import 'package:melisaapp/pages/HomePage.dart';
import 'package:melisaapp/pages/LoginPage.dart';
import 'package:melisaapp/pages/SettingsPage.dart';
import 'package:melisaapp/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => UserProvider()),
  ], child: const MyApp()));
}

final routes = {
  loginRoute: (BuildContext context) => LoginPage(),
  homeRoute: (BuildContext context) => HomePage(),
  settingsRoute: (BuildContext context) => SettingsPage(),
  addExpenseRoute: (BuildContext context) => AddExpenditurePage(),
  addIncomeRoute: (BuildContext context) => AddIncomePage(),
  detailCashFlowRoute: (BuildContext context) => DetailCashFlowPage(),
};

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MelisaApp",
      theme: ThemeData(primaryColor: Colors.deepPurple),
      routes: routes,
    );
  }
}
