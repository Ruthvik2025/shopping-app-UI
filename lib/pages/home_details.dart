import 'package:days_30_flutter/models/catalog.dart';
import 'package:days_30_flutter/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetails extends StatelessWidget {
  final Item catalog;
  const HomeDetails({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.canvasColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                tag: Key(
                  catalog.id.toString(),
                ),
                child: Image.network(catalog.image),
              ).p16().h32(context),
              Expanded(
                child: VxArc(
                  height: 10,
                  edge: VxEdge.top,
                  arcType: VxArcType.convey,
                  child: Container(
                    width: context.screenWidth,
                    color: Theme.of(context).cardColor,
                    child: Column(
                      children: [
                        catalog.name.text.xl2.color(neavyBlue).bold.make(),
                        catalog.desc.text.xl
                            .textStyle(context.captionStyle)
                            .make(),
                        10.heightBox,
                        "Eiusmod sit magna ut amet est laborum elit Lorem est tempor consectetur. Pariatur deserunt aute consequat est minim amet mollit proident est sit ex occaecat mollit. Cupidatat ullamco nisi ex ipsum sunt aliquip adipisicing tempor in dolore ut. Deserunt quis do dolore do amet duis nisi eiusmod est laborum quis officia"
                            .text
                            .textStyle(context.captionStyle)
                            .make()
                            .p8(),
                      ],
                    ).py64(),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.blue800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(neavyBlue),
                shape: MaterialStateProperty.all(StadiumBorder()),
              ),
              child: "Add to cart".text.xl2.color(Vx.white).make(),
            ).w40(context).h4(context)
          ],
        ).wh(200, 100).p12());
  }
}
