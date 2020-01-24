import 'package:flutter/material.dart';
import 'package:ui_plants_shop/plants_list.dart';

void main() => runApp(MyApp());

/* 
Part #1 https://www.youtube.com/watch?v=ok5zoeE_5x0

*/
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plants Shop',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    tabController = TabController(vsync: this, length: 6);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                ),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.grey.withOpacity(.3),
                  mini: true,
                  elevation: 0.0,
                  child: Icon(
                    Icons.shopping_cart,
                    size: 25,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(14),
            child: Text('Top Picks',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 40,
                    fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(.5),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text('Top',
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold)),
                ),
                Tab(
                  child: Text('Outdoor',
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold)),
                ),
                Tab(
                  child: Text('Indoor',
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold)),
                ),
                Tab(
                  child: Text('Plants',
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold)),
                ),
                Tab(
                  child: Text('Floor',
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold)),
                ),
                Tab(
                  child: Text('Orhidea',
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                PlantList(),
                PlantList(),
                PlantList(),
                PlantList(),
                PlantList(),
                PlantList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
