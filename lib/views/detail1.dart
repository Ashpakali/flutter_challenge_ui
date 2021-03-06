import 'package:flutter/material.dart';

class detail1 extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<detail1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipPath(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  color: Colors.orange,
                ),
                clipper: CustomClipPath(),
              ),
              Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.arrow_back_ios, color: Colors.black),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.more_horiz, color: Colors.black),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Text(
                      "Details",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Reviews"),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: <Widget>[
                                Image.asset(
                                  "images/star.png",
                                  height: 14,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Image.asset(
                                  "images/star.png",
                                  height: 14,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Image.asset(
                                  "images/star.png",
                                  height: 14,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Image.asset(
                                  "images/star.png",
                                  height: 14,
                                ),

                              ],
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Product Name"),
                            SizedBox(
                              height: 5,
                            ),
                            Text("iphone 11 pro",
                                style: TextStyle(color: Colors.orange))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Price"),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "\$20",
                              style: TextStyle(color: Colors.orange),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Pages"),
                            SizedBox(
                              height: 6,
                            ),
                            Text("218", style: TextStyle(color: Colors.orange))
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 160,
                              backgroundColor: Color(0xffE1E9E8),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(1, 35, 10, 0),
                              child: Image.asset(
                                "images/beat.png",
                                height: 230,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 200),
                              height: 55,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(27),
                                    topLeft: Radius.circular(27),
                                  )),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Spacer(),
                            Container(
                                margin: EdgeInsets.only(top: 215, right: 40),
                                child: Text(
                                  "Price: \$20",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.black),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 350,
                    margin: EdgeInsets.fromLTRB(20, 10, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Details",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Container(
                              width: 330,
                              child: Text(
                                'lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century',
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 75),
        color: Color(0xffFBC02D),
        height: 70,
        child: Row(
          children: <Widget>[
            Text(
              "BUY IT NOW",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            Spacer(),
            Container(
                height: 70,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.orange
                ),
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 32,
                ))
          ],
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
