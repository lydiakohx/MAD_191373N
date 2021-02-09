import 'package:flutter/material.dart';
import 'package:newproject/details.dart';
import 'package:newproject/details2.dart';
import 'package:newproject/details3.dart';
import 'package:newproject/details4.dart';
import 'user_data.dart';
import 'preference_helper.dart';
import 'details.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  UserData userData;

  @override
  void initState() {
    // getData();
    super.initState();
  }

  getData() async {
    userData = await PreferenceHelper.getUserData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                  text: 'Welcome,',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: userData?.name,
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ]),
              style: TextStyle(fontSize: 45),
            ),
            SizedBox(height: 25),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, size: 18),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Search',
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Center(
              child: Text(
                'Menu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.pink[100]
                ),
              ),
            ),
           SizedBox(height: 15),
            SizedBox(
                height: 350,
                child: GridView.count(
                  padding: const EdgeInsets.all(20),
                  crossAxisCount: 2,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Details(
                                    imageUrl: 'images/Burger.jpg',
                                  )),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/Burger.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                        ),
                      ),
                    ),

                   InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Details2(
                                    imageUrl: 'images/Chicken.jpg',
                                  )),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/Chicken.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Details3(
                                    imageUrl: 'images/Salad.jpg',
                                  )),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/Salad.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                        ),
                      ),
                    ),
                    
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Details4(
                                    imageUrl: 'images/Toast.jpg',
                                  )),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/Toast.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                        ),
                      ),
                    ),
                  ],
                ))
                  ],
        ),
      ),
    );
  }
}
