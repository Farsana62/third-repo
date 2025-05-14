import 'package:flutter/material.dart';
import 'package:ui_project/payment_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Manage Store",
          style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 61, 108),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(230, 255, 255, 255),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 3 / 2,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ThirdScreen()));
            },
            child: Card(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 35,
                        width: 45,
                        child: Image.network(
                          "https://noa-vu.com/media/1yrcnmr2/nieuws.png",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Marketing Designs",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 35,
                    width: 50,
                    child: Image.network(
                      "https://play-lh.googleusercontent.com/OBD0aeFa6kyMnL-VkAI66sh_KS9FVejKmf5ho3rHlONLbJ7s4F8dGs6HWCu_S2idH9fT=w240-h480-rw",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Online   Payments",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              )
            ]),
          ),
          Card(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 35,
                      width: 40,
                      child: Image.network(
                        "https://i0.wp.com/glintcleaning.co.uk/wp-content/uploads/2024/10/discount.png?fit=512%2C512&ssl=1",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Discount Coupons",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Card(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 38,
                      width: 50,
                      child: Image.network(
                          "https://www.plex.tv/wp-content/uploads/2024/04/disco-friends-icon.png"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "My        Customers",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Card(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 38,
                      width: 50,
                      child: Image.network(
                        "https://media.decentralized-content.com/-/rs:fill:315:315/g:ce/f:webp/aHR0cHM6Ly9tYWdpYy5kZWNlbnRyYWxpemVkLWNvbnRlbnQuY29tL2lwZnMvYmFmeWJlaWJhNjJndnV3enZlZ21yNHZ4M295ajdjNWJscnRjenZjaW5qcmF2MmVldmFzMmVzeTRmZmk",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Store QR       Code",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Card(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 38,
                      width: 50,
                      child: Image.network(
                          "https://m.media-amazon.com/images/I/21oaS-al4aL.png"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Extra          Changes",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Card(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 38,
                          width: 40,
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/11447/11447280.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Chip(
                      label: Text(
                        "NEW",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      backgroundColor: Colors.green,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Order             Form",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedFontSize: 14,
          unselectedFontSize: 12,
          type: BottomNavigationBarType.fixed,
          elevation: 12,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.check_box), label: "Ordes"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: "Products"),
            BottomNavigationBarItem(
                icon: Icon(Icons.manage_accounts_outlined), label: "Manage"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box_rounded), label: "Account")
          ]),
    );
  }
}
