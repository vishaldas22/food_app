import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:food_app/cart.dart';
import 'package:food_app/restraunt.dart';
import './foryou.dart' as foryou;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/restr':(BuildContext ctx) => Restaurent(),
        '/cart':(BuildContext ctx) => Cart(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Color(0xFFCC6600),child: Icon(Icons.home),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        //color: Colors.red,
        shape: CircularNotchedRectangle(
          
        ),
        notchMargin: 7.0,
        clipBehavior: Clip.hardEdge,
        child: Container(
          //color: Colors.black,
          height: MediaQuery.of(context).size.height / 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(onPressed: (){},icon: Icon(Icons.location_on,color: Colors.grey,),),
              //SizedBox(width: 10.0,),
              IconButton(onPressed: (){Navigator.pushNamed(context, '/restr');},icon: Icon(Icons.restaurant,color: Colors.grey,),),
              SizedBox(width: 10.0,),
              IconButton(onPressed: (){},icon: Icon(Icons.favorite_border,color: Colors.grey,),),
              //SizedBox(width: 10.0,),
              IconButton(onPressed: (){Navigator.pushNamed(context, '/cart');},icon: Icon(Icons.clear_all,color: Colors.grey,),),
            ],
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom:5.0,top: 16.0,left: 16.0,right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "What would you like",
                  style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 25.0),
                ),
                Material(
                  borderRadius: BorderRadius.circular(25.0),
                  elevation: 2.0,
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        gradient: LinearGradient(colors: [
                          const Color(0xFF4EC78C),
                          const Color(0xFF7ACE7F)
                        ])),
                    child: Center(
                        child: Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
                  ),
                )
              ],
            ),
          ),
          //SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.only(left:12.0),
            child: new Container(
              //width: 200.0,
              child: new TabBar(
                controller: controller,
                unselectedLabelColor: Colors.black54,
                labelColor: Colors.white,
                isScrollable: true,
                labelStyle: TextStyle(fontSize: 12.0),
                indicator: new BubbleTabIndicator(
                  indicatorHeight: 25.0,
                  indicatorColor: Color(0xFFEF7C4A),
                  tabBarIndicatorSize: TabBarIndicatorSize.tab,
                  indicatorRadius: 15.0
                ),
                tabs: [
                  new Tab(
                    child: Text(
                      "For you",
                      style: TextStyle(fontWeight: FontWeight.w500,),
                    ),
                  ),
                  new Tab(
                    child: Text(
                      "Recommended",
                      style: TextStyle(fontWeight: FontWeight.w500,),
                    ),
                  ),
                  new Tab(
                    child: Text(
                      "Trendy",
                      style: TextStyle(fontWeight: FontWeight.w500,),
                    ),
                  ),
                  new Tab(
                    child: Text(
                      "Reality",
                      style: TextStyle(fontWeight: FontWeight.w500,),
                    ),
                  ),
                  new Tab(
                    child: Text(
                      "Hello",
                      style: TextStyle(fontWeight: FontWeight.w500,),
                    ),
                  )
                ],
              ),
            ),
          ),
          new Container(
            height: MediaQuery.of(context).size.height * 1.1,
            child: new TabBarView(
              controller: controller,
              children: <Widget>[
                foryou.ForYou(),
                foryou.ForYou(),
                foryou.ForYou(),
                foryou.ForYou(),
                foryou.ForYou(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
