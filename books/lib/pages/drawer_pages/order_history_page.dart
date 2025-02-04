import 'package:books/models/navigator/order_model.dart';
import 'package:flutter/material.dart';
import '../../services/database_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  List<OrderBook> _orders = [];

  @override
  void initState() {
    super.initState();
    _loadOrders();
  }

  void _loadOrders() async {
    _orders = await FirebaseService.fetchOrders();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Order History")),
      body: _orders.isEmpty
          ? Center(child: Text("No purchases made yet."))
          : ListView.builder(
              itemCount: _orders.length,
              itemBuilder: (context, index) {
                final order = _orders[index];
                return ListTile(
                  title: Text(order.bookTitle),
                  subtitle: Text("Price: \$${order.bookPrice}"),
                  trailing: Text(order.orderDate.split("T")[0]),
                );
              },
            ),
    );
  }
}
