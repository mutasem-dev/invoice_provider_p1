import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'details_page.dart';

import 'invoice.dart';
import 'invoice_model.dart';
class AllInvoicesPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Customers'),
      ),
      body: Consumer<InvoiceModel>(
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.invoices.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailsPage(),));
                },
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  color: Colors.blue,
                  child: Text(value.invoices[index].customerName,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
