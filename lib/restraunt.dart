import 'dart:ui';

import 'package:flutter/material.dart';

class Restaurent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 16,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            size: 20.0,
                            color: Colors.black87,
                          ),
                          suffixIcon: Icon(
                            Icons.tune,
                            size: 20.0,
                            color: Colors.orange,
                          ),
                          hintText: 'Search',
                          hintStyle:
                              TextStyle(color: Colors.black87, fontSize: 15.0),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                InkWell(
                  onTap: ()=> Navigator.pop(context),
                  child: Icon(
                    Icons.clear,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            color: Colors.black12,
            child: Column(
              children: <Widget>[
                cards(
                    "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                    "Ann Gordon",
                    "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                    "20"),
                SizedBox(
                  height: 5.0,
                ),
                cards(
                    "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                    "Stella Casper",
                    "https://images.pexels.com/photos/5938/food-salad-healthy-lunch.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                    "30"),
                SizedBox(
                  height: 5.0,
                ),
                cards(
                    "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                    "Marian Peters",
                    "https://images.pexels.com/photos/46239/salmon-dish-food-meal-46239.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                    "50")
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget cards(String personImgUrl, String name, String imgUrl, String favs) {
    return Container(
      height: 250.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(personImgUrl),
                      radius: 20.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Recipe by",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: 13.0),
                        ),
                        Text(
                          name,
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16.0),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.linear_scale),
              ],
            ),
            SizedBox(
              height: 7.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Stack(
                alignment: Alignment.bottomCenter,
                //fit: StackFit.loose,
                children: <Widget>[
                  Container(
                    height: 180.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(imgUrl), fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    child: new BackdropFilter(
                      filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: new Container(
                        decoration: new BoxDecoration(
                          color: Colors.white.withOpacity(0.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Little America Backpack",
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                              size: 18.0,
                            ),
                            SizedBox(
                              width: 3.0,
                            ),
                            Text(
                              favs,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15.0),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
