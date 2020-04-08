import 'package:flutter/material.dart';
import 'package:fluttermyapp/data/data.dart';
import 'package:fluttermyapp/model/items_module.dart';
import 'package:fluttermyapp/model/product_module.dart';
import 'package:fluttermyapp/views/details.dart';
import 'package:fluttermyapp/views/detail1.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<productModule> productData = new List();
  List<itemModule> itemdata = new List();
  @override
  void initState() {
    productData = getproductData();
    itemdata = getItemData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            resizeToAvoidBottomPadding: false,
            body: SafeArea(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      ClipPath(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 360,
                          color: Colors.orange,
                        ),
                        clipper: CustomClipPath(),
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(Icons.arrow_back_ios,
                                    color: Colors.black),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.centerLeft,
                                child:
                                    Icon(Icons.more_horiz, color: Colors.black),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 25),
                                child: Text(
                                  "Our Product",
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 250,
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: productData.length,
                                itemBuilder: (context, index) {
                                  return exploreTile(
                                    productName: productData[index].productName,
                                    price: productData[index].price,
                                    size: productData[index].size,
                                    color: productData[index].color,
                                    imgURL: productData[index].imgURL,
                                  );
                                }),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(40, 260, 40, 0),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Color(0xffFBC02D),
                              radius: 25,
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: Color(0xffFBC02D),
                              radius: 25,
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Explore More",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    width: 280,
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                        color: Color(0xffD6E0DF),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(22),
                            topLeft: Radius.circular(22),
                            topRight: Radius.circular(22))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 220,
                          child: TextField(
                            decoration: InputDecoration(
                                hintStyle:
                                    TextStyle(color: Colors.orangeAccent),
                                hintText: "Search",
                                border: InputBorder.none),
                          ),
                        ),
                        Spacer(),
                        InkWell(
                            child: Icon(
                          Icons.search,
                          color: Colors.orangeAccent,
                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 15),
                      height: 20,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: itemdata.length,
                          itemBuilder: (context, index) {
                            return items(
                              price: itemdata[index].price,
                              productName: itemdata[index].productName,
                              imgURL: itemdata[index].imgURL,
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.orange,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.favorite_border, size: 28),
                  Icon(Icons.shopping_cart, size: 28),
                  Icon(Icons.home, size: 28),
                  Icon(Icons.zoom_out_map, size: 28),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("images/ash.png"),
                  )
                ],
              ),
            )));
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

class exploreTile extends StatelessWidget {
  final String productName;
  final String price;
  final String size;
  final String color;
  final String imgURL;

  exploreTile(
      {this.productName, this.price, this.size, this.color, this.imgURL});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
      height: 240,
      width: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                productName,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Price:",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              Text(price, style: TextStyle(fontSize: 14, color: Colors.white)),
              Text("|"),
              Text("Size:",
                  style: TextStyle(fontSize: 14, color: Colors.white)),
              Text(size, style: TextStyle(fontSize: 14, color: Colors.white)),
              Text("|"),
              Text("Color:",
                  style: TextStyle(fontSize: 14, color: Colors.white)),
              Text(color, style: TextStyle(fontSize: 14, color: Colors.white)),
            ],
          ),
          SizedBox(
            height: 8,
          ),
      GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => detail1()));
        },
        child:  Image.asset(
            imgURL,
            fit: BoxFit.fill,
            height: 160,
            width: 150,
          ),),
        ],
      ),
    );
  }
}

class items extends StatelessWidget {
  final String price;
  final String productName;
  final String imgURL;

  items({this.price, this.productName, this.imgURL});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 55, right: 20),
                height: 100,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Details()));
                      },
                      child: Image.asset(
                        imgURL,
                        height: 120,
                        width: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(),
                    Text(
                      productName,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
