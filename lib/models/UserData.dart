import 'dart:convert';

import 'package:flutter/material.dart';

class UserData with ChangeNotifier {
  final String id;
  final String name;
  final String userPicUrl;
  final String videoUrl;
  final double viewsCount;
  final String postUrl;

  UserData({
    required this.id,
    required this.name,
    required this.userPicUrl,
    required this.videoUrl,
    required this.viewsCount,
    required this.postUrl,
  });

  notifyListeners();
}
