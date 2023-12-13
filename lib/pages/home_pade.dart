import "package:days_30_flutter/models/catalog.dart";
import "package:days_30_flutter/widgets/drawer.dart";
import "package:days_30_flutter/widgets/item_widget.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "dart:convert";

// day-13 learned about to add local files (Load and decode Json)

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final jsonData = await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(jsonData);
    var productsData = decodeData["products"];
    print(productsData);
  }

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
