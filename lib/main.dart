import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: null,
          title: Text(
            "Shoes",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            ),
          ]),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "All",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Center(
                        child: Text(
                          "Sneakers",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Center(
                        child: Text(
                          "Football",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Center(
                        child: Text(
                          "Soccer",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Center(
                        child: Text(
                          "Golf",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      )),
    );
  }
}

Widget makeitem({Image, tag}) {
  return Hero(
    tag: tag,
    child: GestureDetector(
      child: Container(
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage())),
      ),
    ),
  );
}
