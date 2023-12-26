import 'package:days_30_flutter/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel._iternal();

  CartModel._iternal();

  factory CartModel() => cartModel;

  //catalog fields
  late CatalogModel _catalog;

  //to get items to store ids
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    // ignore: unnecessary_null_comparison
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

//get items in cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

//get total price
  num get totalPrice =>
      items.fold(0, (totalvalue, current) => totalvalue + current.price);

//add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

//remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
