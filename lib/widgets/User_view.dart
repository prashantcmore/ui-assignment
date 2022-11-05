import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screenassignment/models/UserData.dart';

class UserItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<UserData>(context, listen: false);
    return Column(
      children: [
        Container(
          height: 60,
          child:
              //  GridTile(
              // child:
              CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blue,
            backgroundImage: NetworkImage(products.userPicUrl),
          ),
        ),
        // ),
        Text(
          products.name,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
