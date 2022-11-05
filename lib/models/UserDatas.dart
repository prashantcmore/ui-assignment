import 'package:flutter/cupertino.dart';

import 'UserData.dart';

class UserInfo with ChangeNotifier {
  List<UserData> _items = [
    UserData(
      id: 'p1',
      name: 'Lorem Ipsum',
      viewsCount: 29.99,
      userPicUrl:
          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      postUrl: 'https://i.pinimg.com/736x/d1/b3/13/d1b31329266b0a49b065afed8de1dbca.jpg',
      videoUrl: 'https://blog-images.pharmeasy.in/2021/02/01200417/shutterstock_324427688-1.jpg',
    ),
    UserData(
      id: 'p2',
      name: 'Vk',
      viewsCount: 59.99,
      userPicUrl:
          'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      postUrl:
          'https://images.hindustantimes.com/img/2022/04/30/1600x900/morning_meditation_thumb_1651293378329_1651293388288.jpg',
      videoUrl:
          'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80',
    ),
    UserData(
      id: 'p3',
      name: 'Ipsum Lorem',
      viewsCount: 19.99,
      userPicUrl:
          'https://w7.pngwing.com/pngs/340/956/png-transparent-profile-user-icon-computer-icons-user-profile-head-ico-miscellaneous-black-desktop-wallpaper.png',
      postUrl:
          'https://images.hindustantimes.com/img/2022/04/30/1600x900/morning_meditation_thumb_1651293378329_1651293388288.jpg',
      videoUrl: 'https://images.newindianexpress.com/uploads/user/imagelibrary/2020/3/29/w1200X800/cxvxcv.jpg',
    ),
    // UserData(
    //   id: 'p4',
    //   name: 'A Pan',
    //   viewsCount: 49.99,
    //   userPicUrl: 'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    //   videoUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    // ),
  ];

  List<UserData> get item {
    return [..._items];
  }
}
