import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screenassignment/models/UserData.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<UserData>(context, listen: false);
    return GridTile(
      // header: Positioned(
      //     left: 5,
      //     top: 0,
      //     child: Chip(
      //         label: Text(
      //       "123k",
      //     ))),
      child: GestureDetector(
        onTap: () {},
        child: Image.network(
          products.videoUrl,
          fit: BoxFit.cover,
        ),
      ),
      footer: GridTileBar(
        backgroundColor: Colors.grey,
        leading: CircleAvatar(
          backgroundImage: NetworkImage(products.userPicUrl),
        ),
        title: Text(
          products.name,
          textAlign: TextAlign.center,
        ),
        trailing: FlatButton(
          child: const Text("Follow +"
              // color: Colors.deepOrange,
              ),
          onPressed: () {},
        ),
      ),
    );
  }
}
