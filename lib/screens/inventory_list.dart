import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inventory_taker/models/inventory.dart';
import 'package:inventory_taker/models/product.dart';

class InventoryList extends StatefulWidget {
  @override
  _InventoryListState createState() => _InventoryListState();
}

class _InventoryListState extends State<InventoryList> {
  List<Inventory> inventories = <Inventory>[
    new Inventory(
        date: DateTime.now(),
        products: [new Product(name: 'bread', quantity: 0)])
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: SizedBox(
                height: 200.0,
                child: FutureBuilder(builder: (context, snapshot) {
                  return ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: inventories == null ? 0 : inventories.length,
                      itemBuilder: (BuildContext context, int index) {
                        Inventory inv = inventories[index];
                        return ListTile(
                          leading: Text(inv.date.toString()),
                        );
                      });
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
