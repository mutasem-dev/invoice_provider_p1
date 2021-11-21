import 'package:flutter/material.dart';

import 'invoice.dart';

class InvoiceModel extends ChangeNotifier {
  List<Invoice> _invoices = [];
  void addInvoice(Invoice invoice) {
    _invoices.add(invoice);
    notifyListeners();
  }
  void setInvoices(List<Invoice> invoices) {
    _invoices = invoices;
    notifyListeners();
  }
  List<Invoice> get invoices => _invoices;
  // List<Invoice> getInvoices() {
  //   return _invoices;
  // }
}