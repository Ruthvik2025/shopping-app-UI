import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.cardColor,
      appBar: AppBar(),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartWidget(),
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({super.key});

  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          title: const Text("item"),
          leading: const Icon(Icons.done_outline),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove_circle),
          ),
        );
      },
    );
  }
}

class _CartWidget extends StatelessWidget {
  const _CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$999".text.xl5.make(),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                    Theme.of(context).buttonTheme.colorScheme!.primary)),
            onPressed: () {},
            child: Text(
              "Buy",
              style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).textTheme.bodySmall?.color),
            ),
          ).w32(context)
        ],
      ),
    );
  }
}
