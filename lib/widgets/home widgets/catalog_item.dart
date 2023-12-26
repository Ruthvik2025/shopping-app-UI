// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:days_30_flutter/models/cart_mdeol.dart';
import 'package:days_30_flutter/models/catalog.dart';
import 'package:days_30_flutter/widgets/home%20widgets/catalog_image.dart';
import 'package:days_30_flutter/widgets/themes.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({required Key key, required this.catalog})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(
              catalog.id.toString(),
            ),
            child: Card(
              color: Theme.of(context).canvasColor,
              child: CatalogImage(
                image: catalog.image,
                key: ValueKey(catalog.image),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.lg.color(neavyBlue).bold.make(),
                catalog.desc.text.textStyle(context.captionStyle).make(),
                10.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.bold.xl.make(),
                    _addToCart(catalog: catalog)
                  ],
                ).pOnly(right: 8.0)
              ],
            ),
          )
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().py16();
  }
}

class _addToCart extends StatefulWidget {
  Item catalog;
  _addToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<_addToCart> createState() => _addToCartState();
}

class _addToCartState extends State<_addToCart> {
  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        isAdded = isAdded.toggle();
        final _catalog = CatalogModel();

        final _cart = CartModel();
        _cart.catalog = _catalog;
        _cart.add(widget.catalog);

        setState(() {});
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(neavyBlue),
        shape: MaterialStateProperty.all(StadiumBorder()),
      ),
      child: isAdded
          ? Icon(Icons.done)
          : "Add to cart".text.color(Vx.white).make(),
    );
  }
}
