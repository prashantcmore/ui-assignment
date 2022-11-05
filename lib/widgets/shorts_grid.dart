import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screenassignment/models/UserDatas.dart';

import 'Yoga_items.dart';
import 'shorts_view.dart';

class ShortsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<UserInfo>(context);
    final products = productsData.item;
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(10),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: products[i],
        child: ShortsItem(),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.5,
      ),
    );
  }
}
