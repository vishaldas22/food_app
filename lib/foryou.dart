import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ForYou extends StatefulWidget {
  @override
  _ForYouState createState() => _ForYouState();
}

class _ForYouState extends State<ForYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, right: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Dishes",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18.0),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(color: Color(0xFFFF9C43)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        dishes(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRORx0sblqBGD7CfFpuC4UK_FLoLGccRnf3HTBGRN0mE_PsDP07",
                            "Chicken bowl",
                            3,
                            "10",
                            "12",
                            "200"),
                        SizedBox(
                          width: 10.0,
                        ),
                        dishes(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9UKfXytLJqS4tHhkI-UwJ1jCnyWEtOi3DD5IO6r7J9sIY4zEb",
                            "Rich bowl",
                            4,
                            "20",
                            "15",
                            "250"),
                        SizedBox(
                          width: 10.0,
                        ),
                        dishes(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJFZrXvH9v4gPW3nFbE91zhUNPHtDiMWr0Dt5tr8XEHbkqmrsK",
                            "Crabos",
                            2,
                            "10",
                            "12",
                            "200"),
                        SizedBox(
                          width: 10.0,
                        ),
                        dishes(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZASjwiZ1qeu65jc3cfQJByiMPjo8uEbk1Hvi3xPl94y7raLB2fg",
                            "Biryani",
                            4.5,
                            "10",
                            "12",
                            "200"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 3.5,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, right: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Food types",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18.0),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(color: Color(0xFFFF9C43)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4.9,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        types("images/nood.jpg", "Chinese"),
                        SizedBox(
                          width: 10.0,
                        ),
                        types("images/french.jpg", "French"),
                        SizedBox(
                          width: 10.0,
                        ),
                        types("images/indian.jpg", "Indian"),
                        SizedBox(
                          width: 10.0,
                        ),
                        types("images/american.jpg", "American"),
//                        types("", "African"),
//                        types("", "Thai"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 12.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Popular",
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(color: Color(0xFFFF9C43)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        dishes(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRORx0sblqBGD7CfFpuC4UK_FLoLGccRnf3HTBGRN0mE_PsDP07",
                            "Chicken bowl",
                            3,
                            "10",
                            "12",
                            "200"),
                        SizedBox(
                          width: 10.0,
                        ),
                        dishes(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9UKfXytLJqS4tHhkI-UwJ1jCnyWEtOi3DD5IO6r7J9sIY4zEb",
                            "Rich bowl",
                            4,
                            "20",
                            "15",
                            "250"),
                        SizedBox(
                          width: 10.0,
                        ),
                        dishes(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJFZrXvH9v4gPW3nFbE91zhUNPHtDiMWr0Dt5tr8XEHbkqmrsK",
                            "Crabos",
                            2,
                            "10",
                            "12",
                            "200"),
                        SizedBox(
                          width: 10.0,
                        ),
                        dishes(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZASjwiZ1qeu65jc3cfQJByiMPjo8uEbk1Hvi3xPl94y7raLB2fg",
                            "Biryani",
                            4.5,
                            "10",
                            "12",
                            "200"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget types(String imgUrl, String names) {
    return Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 7.0,
          width: MediaQuery.of(context).size.width / 3.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0), color: Colors.white),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
                child: Image.asset(imgUrl,width: 50.0,height: 50.0,)
            ),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          names,
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
      ],
    );
  }

  Widget dishes(String imgUrl, String dishName, double rating, String reviews,
      String money, String calorie) {
    String rat = rating.toString();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 5.0,
          width: MediaQuery.of(context).size.width / 1.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            image:
                DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          dishName,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 4.0,
        ),
        Row(
          children: <Widget>[
            SmoothStarRating(
              color: Colors.yellow,
              starCount: 5,
              rating: rating,
              size: 13.0,
              allowHalfRating: true,
              borderColor: Colors.grey,
            ),
            SizedBox(
              width: 4.0,
            ),
            Text(
              rat,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10.0),
            ),
            SizedBox(
              width: 2.0,
            ),
            Text(
              "(${reviews}+ Reviews)",
              style: TextStyle(fontSize: 8.0, color: Colors.black26),
            ),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Row(
          children: <Widget>[
            Container(
              height: 10.0,
              width: 10.0,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(
                  child: Text(
                "~",
                style: TextStyle(fontSize: 5.0, color: Colors.white),
              )),
            ),
            SizedBox(
              width: 4.0,
            ),
            Text(
              "~${money}/person",
              style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 8.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.whatshot,
                  color: Colors.black26,
                  size: 8.0,
                ),
                SizedBox(
                  width: 2.0,
                ),
                Text("${calorie} cal",
                    style:
                        TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500)),
              ],
            )
          ],
        )
      ],
    );
  }
}
