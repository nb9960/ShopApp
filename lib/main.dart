import 'package:ShopApp/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import './screens/products_overview.dart';
import './screens/cart_screen.dart';
import './screens/product_detail.dart';
import './providers/products.dart';
import 'package:provider/provider.dart';
import './providers/cart.dart';
import './providers/orders.dart';
import './screens/orders_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(value: Order())
      ],
      child: MaterialApp(
        title: 'MyApp',
        theme:
            ThemeData(brightness: Brightness.dark, accentColor: Colors.orange),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
        },
      ),
    );
  }
}
