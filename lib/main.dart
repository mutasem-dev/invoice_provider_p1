import 'package:flutter/material.dart';
import 'package:untitled2/all_invoices_page.dart';
import 'package:untitled2/details_page.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/invoice_model.dart';
import 'loading.dart';
import 'main_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => InvoiceModel(),
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/loading',
      routes: {
        '/loading' : (context)=>Loading(),
        '/' : (context)=>MainPage(),
        '/allInvoicesPage' : (context)=>AllInvoicesPage(),
        '/detailsPage': (context)=>DetailsPage(),
      },
    );
  }
}

