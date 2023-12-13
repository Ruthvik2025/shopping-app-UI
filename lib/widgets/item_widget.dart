import 'package:days_30_flutter/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(
          item.image,
        ),
        title: Text(
          item.name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
