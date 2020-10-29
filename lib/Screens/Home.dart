import 'package:customer_contact/Components/CustomCards.dart';
import 'package:customer_contact/Utilities/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Utilities/Data.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 24,
              backgroundColor: Colors.black,
              pinned: true,
              // floating: true,
              expandedHeight: 140.0,
              title: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Text(
                      "Home",
                      style: TextStyle(
                          fontFamily: "Stat", fontSize: 25.0, color: signature),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed("/detail");
                        },
                        icon: Icon(
                          Icons.add_rounded,
                          color: signature,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: IconButton(
                        icon: Icon(
                          Icons.sort,
                          color: signature,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  padding: EdgeInsets.only(top: 60.0),
                  width: double.infinity,
                  height: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: TextField(
                                onChanged: (e) {
                                  print(e);
                                },
                                style: TextStyle(
                                  color: signature,
                                ),
                                cursorColor: signature,
                                decoration: InputDecoration(
                                  hintText: "Search...",
                                  hintStyle: TextStyle(
                                    color: signature,
                                  ),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.0, right: 15.0),
                                    child: Icon(
                                      Icons.search_rounded,
                                      color: signature,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30.0),
                                    ),
                                    borderSide: BorderSide(
                                        color: signature, width: 2.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30.0),
                                    ),
                                    borderSide: BorderSide(
                                        color: signature, width: 2.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: RaisedButton(
                                padding:
                                    EdgeInsets.only(top: 17.0, bottom: 17.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: BorderSide(
                                    color: signature,
                                  ),
                                ),
                                onPressed: () {},
                                color: signature,
                                textColor: Colors.black,
                                child: Text(
                                  "S e a r c h",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Stat"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // THIS IS JUST TESTING NOT A FINAL DESIGN!!!!!!!!!!!!!!!!!
            SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return CustomCards(data[index]);
              }, childCount: data.length),
            ),
          ],
        ),
      ),
    );
  }
}
