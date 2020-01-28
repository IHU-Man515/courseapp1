import 'package:course1/categories.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.list),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                // color: Colors.amber,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      color: Colors.blue,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(bottom: 19, left: 21),
                      child: Text(
                        "Byneet",
                        style: GoogleFonts.arvo(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      right: 5,
                      top: 70,
                      bottom: 20,
                      child: Card(
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17)),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Start typing...",
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.blue,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 25),
                height: 40,
                child: CategoriesList(),
              ),
              SizedBox(height: 18),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Featured",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Text(
                      "See All",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 25),
                height: 170,
                child: FeaturedList(),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Top Rated",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Text(
                      "See All",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ListView.builder(
                itemCount: 10,
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.fromLTRB(16, 5, 16, 5),
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "http://3.bp.blogspot.com/-t-NkF7jQnzE/VYTjQazHY9I/AAAAAAAABWs/7NP5LZa9t94/s1600/logo-adobe-photoshop.jpg"),
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(width: 8),
                        Container(
                          width: 240,
                          margin: EdgeInsets.only(top: 6, bottom: 6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "Photoshop affter effect 2020: Coompile course from novice to expert",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.group, color: Colors.blue),
                                      SizedBox(width: 5),
                                      Text(
                                        "134.k",
                                        style: GoogleFonts.roboto(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.star_border,
                                          color: Colors.blue),
                                      SizedBox(width: 5),
                                      Text(
                                        "4.8",
                                        style: GoogleFonts.roboto(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.access_time,
                                          color: Colors.blue),
                                      SizedBox(width: 5),
                                      Text(
                                        "45 Hours",
                                        style: GoogleFonts.roboto(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.amber[300],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyCategories.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        final category = dummyCategories[index];
        return Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Chip(
            backgroundColor: Colors.blue[100],
            padding: EdgeInsets.all(12),
            label: Text(
              category.name,
              style: GoogleFonts.roboto(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  }
}

class FeaturedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        // final category = dummyCategories[index];
        return Container(
          width: 250,
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            image: DecorationImage(
              image: NetworkImage(
                  "https://storage.googleapis.com/storage.algo.money/2019/03/6ec84e67-flutter_logo_10.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.black12,
                        Colors.black54,
                        Colors.black87,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 13),
                        child: Chip(
                          backgroundColor: Colors.green[100],
                          label: Text("Web Design",
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ))),
                          padding: EdgeInsets.all(7),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 230,
                              child: Text(
                                "Flutter Theme Development with Material App Cross-Platform with Firestore firebase",
                                style: GoogleFonts.roboto(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                            Container(
                              width: 230,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.group, color: Colors.white),
                                      SizedBox(width: 5),
                                      Text(
                                        "134.k",
                                        style: GoogleFonts.roboto(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.star_border,
                                          color: Colors.white),
                                      SizedBox(width: 5),
                                      Text(
                                        "4.8",
                                        style: GoogleFonts.roboto(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.access_time,
                                          color: Colors.white),
                                      SizedBox(width: 5),
                                      Text(
                                        "45 Hours",
                                        style: GoogleFonts.roboto(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.amber,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
