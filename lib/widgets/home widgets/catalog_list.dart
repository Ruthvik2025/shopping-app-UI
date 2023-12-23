import 'package:days_30_flutter/models/catalog.dart';
import 'package:days_30_flutter/pages/home_details.dart';
import 'package:days_30_flutter/widgets/home%20widgets/catalog_item.dart';
import 'package:flutter/material.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetails(
                catalog: catalog,
              ),
            ),
          ),
          child: CatalogItem(
            catalog: catalog,
            key: ValueKey<int>(index),
          ),
        );
      },
    );
  }
}
