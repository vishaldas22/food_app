import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(top: 8.0, left: 12.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: ()=>Navigator.pop(context),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.orange,
                      ),
                    ),
                    Material(
                      elevation: 20.0,
                      //shadowColor: Colors.black,
                      borderRadius: BorderRadius.circular(25.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.share,
                          color: Colors.orange,
                          size: 18.0,
                        ),
                        radius: 18.0,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 13.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 3.5,
                      width: MediaQuery.of(context).size.width / 1.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/1268558/pexels-photo-1268558.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height / 7.5,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 7.5,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/675951/pexels-photo-675951.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                          radius: 25.0,
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
                              "Ann Gordon",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 18.0,
                        ),
                        Text(
                          "54",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16.0),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          new SizedBox(
            height: 2.0,
            child: new Center(
              child: new Container(
                //margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                height: 3.0,
                color: Colors.black12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 25,
                      width: MediaQuery.of(context).size.height / 10,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Center(
                        child: Text(
                          "CHICKEN",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              //color: Colors.black26,
                              fontSize: 12.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    SmoothStarRating(
                      color: Colors.orangeAccent,
                      allowHalfRating: true,
                      rating: 4,
                      starCount: 5,
                      size: 20.0,
                      borderColor: Colors.grey,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "2981 reviews",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black26,
                          fontSize: 12.0),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Chicken Italiano with \nGarlic Bread",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          //color: Colors.black26,
                          fontSize: 25.0),
                    ),
                    Text(
                      "~48",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.orange,
                          fontSize: 22.0),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.0,
            child: new Center(
              child: new Container(
                //margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                height: 3.0,
                color: Colors.black12,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "9",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          //color: Colors.orange,
                          fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Servings",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black26,
                          fontSize: 12.0),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
                width: 2.0,
                child: new Center(
                  child: new Container(
                    //margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                    width: 30.0,
                    color: Colors.black12,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    "35min",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        //color: Colors.orange,
                        fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Time",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black26,
                        fontSize: 12.0),
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
                width: 2.0,
                child: new Center(
                  child: new Container(
                    //margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                    width: 30.0,
                    color: Colors.black12,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    "480",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        //color: Colors.orange,
                        fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Calories",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black26,
                        fontSize: 12.0),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 2.0,
            child: new Center(
              child: new Container(
                //margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                height: 3.0,
                color: Colors.black12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "ABOUT",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      //color: Colors.black26,
                      fontSize: 15.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Buttery bread stuffing makes this easy crab recipe\nsavory and delicious. Use fresh or frozen crab meat \nfor this recipe. ",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black26,
                      fontSize: 14.0),
                )
              ],
            ),
          ),
          SizedBox(
            height: 2.0,
            child: new Center(
              child: new Container(
                //margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                height: 3.0,
                color: Colors.black12,
              ),
            ),
          ),
          ListTile(
            title: Text(
              "INGREDIENTS",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 15.0,
                  color: Colors.grey),
            ),
            trailing: Icon(Icons.keyboard_arrow_up),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 14,
                  width: MediaQuery.of(context).size.width / 1.35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35.0),
                    gradient: LinearGradient(colors: [
                      const Color(0xFFFFA846),
                      const Color(0xFFFF8E40)
                    ]),
                  ),
                  child: Center(
                    child: Text(
                      "Order now",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Material(
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(25.0),
                  child: CircleAvatar(
                    radius: 27.0,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.greenAccent,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
