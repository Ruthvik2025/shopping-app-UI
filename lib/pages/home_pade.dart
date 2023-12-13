import "package:days_30_flutter/models/catalog.dart";
import "package:days_30_flutter/widgets/drawer.dart";
import "package:days_30_flutter/widgets/item_widget.dart";
import "package:flutter/material.dart";

// day-12 learned about listviebuilder(), how to generate dummylist

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(
      25,
      (index) => CatlogModel.items[0],
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("MyApp"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
