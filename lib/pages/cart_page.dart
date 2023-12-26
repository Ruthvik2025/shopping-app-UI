import 'package:days_30_flutter/models/cart_mdeol.dart';
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
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: _cart.items[index].name.text.make(),
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
  final _cart = CartModel();
  _CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}".text.textStyle(context.bodyLarge).xl5.make(),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                    Theme.of(context).buttonTheme.colorScheme!.primary)),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: "Buying is not available yet".text.make()));
            },
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
