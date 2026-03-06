
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/src/data/dummy_products.dart';
import 'package:myapp/src/features/authentication/presentation/login_screen.dart';
import 'package:myapp/src/features/cart/presentation/cart_screen.dart';
import 'package:myapp/src/features/home/presentation/home_screen.dart';
import 'package:myapp/src/features/products/domain/product.dart';
import 'package:myapp/src/features/products/presentation/product_detail_screen.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        }),
    GoRoute(
      path: '/cart',
      builder: (BuildContext context, GoRouterState state) {
        return const CartScreen();
      },
    ),
    GoRoute(
      path: '/product/:id',
      builder: (BuildContext context, GoRouterState state) {
        final String productId = state.pathParameters['id']!;
        try {
          final Product product = dummyProducts.firstWhere((p) => p.id == productId);
          return ProductDetailScreen(product: product);
        } catch (e) {
          // If firstWhere throws an error (product not found), show a not found screen.
          return const Scaffold(
            body: Center(
              child: Text('Product not found!'),
            ),
          );
        }
      },
    ),
  ],
);
