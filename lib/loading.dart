import 'dart:convert';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:untitled2/invoice_model.dart';
import 'invoice.dart';
import 'main_page.dart';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}
void fetchInvoices(BuildContext context) async{
  http.Response response = await http.get('https://jsonkeeper.com/b/K8P7');
  List<Invoice> _invoices = [];
  if(response.statusCode == 200) {
    var jsonArray = jsonDecode(response.body)['invoices'] as List;
    _invoices = jsonArray.map((e) => Invoice.fromJson(e)).toList();
    //Provider.of<InvoiceModel>(context,listen: false).setInvoices(_invoices);
    context.read<InvoiceModel>().setInvoices(_invoices);
  }
  Navigator.pushReplacementNamed(context,'/');

}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    fetchInvoices(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.white,
          )
      ),
    );
  }
}
