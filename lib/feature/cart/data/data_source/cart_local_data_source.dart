import 'package:hive/hive.dart';
import 'package:supermarket/feature/cart/data/model/cart_item/cart_item_model.dart';

abstract class CartLocalDataSource {
  Future<CartItemModel> updateCartItem(CartItemModel item);
  Future<int> delete(int id);
  Future<List<CartItemModel>> getCartItems();
  Future<bool> clearCart();
}

class CartLocalDataSourceImpl implements CartLocalDataSource {
  final Box<CartItemModel> _box;
  CartLocalDataSourceImpl(this._box);

  @override
  Future<int> delete(int id) async {
    try {
      await _box.delete(id);
    } catch (e) {
      rethrow;
    }
    return id;
  }

  @override
  Future<List<CartItemModel>> getCartItems() async {
    try {
      return _box.values.toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CartItemModel> updateCartItem(CartItemModel item) async {
    try {
      await _box.put(item.id, item);
    } catch (e) {
      rethrow;
    }
    return item;
  }

  @override
  Future<bool> clearCart() async {
    try {
      await _box.clear();
      return true;
    } catch (e) {
      rethrow;
    }
  }
}
