import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screenassignment/widgets/Users.dart';
import 'package:screenassignment/widgets/shorts_grid.dart';
import 'package:screenassignment/widgets/yoga_view.dart';

import '../widgets/Category_item.dart';

class TrendsScreen extends StatefulWidget {
  const TrendsScreen({Key? key}) : super(key: key);

  static const TextStyle optionStyle = TextStyle(
    fontSize: 10,
    // fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Progress',
      style: optionStyle,
    ),
    Text(
      'Index 4: More',
      style: optionStyle,
    ),
  ];

  @override
  State<TrendsScreen> createState() => _TrendsScreenState();
}

class _TrendsScreenState extends State<TrendsScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "FYTRACK",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
              left: 8,
            ),
            child: GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                backgroundColor: Colors.green,
                child: Text("VK"),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: deviceSize.height * 0.15,
              width: deviceSize.width,
              child: UsersGrid(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "POPULAR",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: const Text(
                    "See All",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                ),
              ],
            ),
            Divider(),
            Container(
              height: deviceSize.height * 0.05,
              width: deviceSize.width,
              child: CategoryWidget(),
            ),
            Divider(),
            Container(
              height: deviceSize.height * 0.25,
              width: deviceSize.width,
              child: ProductsGrid(),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "SHORTS",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: const Text(
                    "See All",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                ),
              ],
            ),
            Divider(),
            Container(
              height: deviceSize.height * 0.25,
              width: deviceSize.width,
              child: ShortsGrid(),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Post",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: const Text(
                    "See All",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                ),
              ],
            ),
            Divider(),
            Container(
              height: deviceSize.height * 0.22,
              width: deviceSize.width,
              child: ShortsGrid(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.flag,
              color: Colors.black,
            ),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle),
            label: 'Trends',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.run_circle_outlined,
              color: Colors.black,
            ),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.trending_up_outlined,
              color: Colors.black,
            ),
            label: "More",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
