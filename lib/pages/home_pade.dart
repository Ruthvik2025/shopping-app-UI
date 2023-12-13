import "package:days_30_flutter/widgets/drawer.dart";
import "package:flutter/material.dart";

//learn about widget tree,Buildcontext,Constraints
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("MyApp"),
      ),
      body: Center(
        child: Container(
          child: const Text("Legion"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
