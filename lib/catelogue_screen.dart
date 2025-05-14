import 'package:flutter/material.dart';

class CatelogueScreen extends StatefulWidget {
  const CatelogueScreen({super.key});

  @override
  State<CatelogueScreen> createState() => _CatelogueScreenState();
}

class _CatelogueScreenState extends State<CatelogueScreen> {
  List<bool> isSwitchList = List.generate(10, (index) => true);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Catalogue",
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                ))
          ],
          backgroundColor: const Color.fromARGB(255, 1, 60, 109),
          bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              labelStyle: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  text: "Products",
                ),
                Tab(
                  text: "Categories",
                )
              ]),
        ),
        backgroundColor: Colors.white70,
        body: TabBarView(
          children: [
            ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Card(
                          margin:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  margin: EdgeInsets.only(right: 10),
                                  child: Image.network(
                                      "https://i.etsystatic.com/8155076/r/il/04981b/4590780552/il_fullxfull.4590780552_g0zz.jpg",
                                      fit: BoxFit.cover),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Couch Potato|Women...",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 18),
                                      ),
                                      Text(
                                        "1 piece",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "₹799",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "In Stock",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                color: Colors.green,
                                                fontSize: 18),
                                          ),
                                          SizedBox(
                                            width: 157,
                                          ),
                                          Switch(
                                              value: isSwitchList[index],
                                              onChanged: (value) {
                                                setState(() {
                                                  isSwitchList[index] = value;
                                                });
                                              }),
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        children: [
                                          Icon(Icons.share_outlined),
                                          Text(
                                            "Share Product",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 18),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Icon(Icons.more_vert_rounded),
                              ],
                            ),
                          ))
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}
