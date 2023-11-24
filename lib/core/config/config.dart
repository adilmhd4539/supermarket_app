class Config {
  static String productBox = 'product';
  static String cartBox = 'cart';
  static String customerBox = 'customer';
  static ApiEnv apiEnv = ApiEnv.test;
  static get domain {
    switch (apiEnv) {
      default:
        return 'http://62.72.44.247';
    }
  }

  static String get productsEndPoint => '$domain/api/products/';
  static String get customerEndPoint => '$domain/api/customers/';
  static String get orderEndPoint => '$domain/api/orders/';
}

enum ApiEnv { test }
