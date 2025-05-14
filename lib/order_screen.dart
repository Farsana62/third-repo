import 'package:flutter/material.dart';
import 'package:ui_project/catelogue_screen.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order #1688068",
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
        backgroundColor: const Color.fromARGB(255, 1, 60, 109),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          ListTile(
            title: Text(
              "May 31, 05:42 PM",
              style: TextStyle(fontFamily: "Poppins"),
            ),
            trailing: Text(
              "Delivered",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.grey),
            ),
          ),
          const Divider(),
          ListTile(
            title: Text(
              "1 ITEM",
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold),
            ),
            trailing: SizedBox(
                width: 92,
                child: Row(
                  children: [
                    Icon(
                      Icons.receipt_outlined,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 40,
                      width: 10,
                    ),
                    Text(
                      "RECEIPT",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 17,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Image.network(
                "https://i.etsystatic.com/8155076/r/il/04981b/4590780552/il_fullxfull.4590780552_g0zz.jpg"),
            title: Text(
              "Explore|Men|Navy Blue",
              style: TextStyle(fontFamily: "Poppins", fontSize: 18),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1 piece",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Text(
                  "Size: XL",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                SizedBox(height: 4),
                Text("₹799", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            trailing: Text(
              "₹799",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Item Total\nDelivery",
              style: TextStyle(fontFamily: "Poppins", fontSize: 14),
            ),
            trailing: SizedBox(
                width: 90,
                child: Column(
                  children: [
                    Text(
                      "₹799",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "FREE",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          ListTile(
            title: Text(
              "Grand Total",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            trailing: Text(
              "₹799",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Divider(),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "CUSTOMER DETAILS",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.grey),
            ),
            trailing: SizedBox(
                width: 90,
                child: Row(
                  children: [
                    Icon(
                      Icons.share_outlined,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 40,
                      width: 10,
                    ),
                    Text(
                      "SHARE",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 17,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Deepa",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            subtitle: Text(
              "+91-7829000484",
              style: TextStyle(
                  fontFamily: "Poppins", color: Colors.grey, fontSize: 18),
            ),
            trailing: SizedBox(
                width: 85,
                child: Row(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.chat_bubble_outline_rounded,
                      color: Colors.green,
                    ),
                  ],
                )),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Address",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            subtitle: Text(
              "D 1101 Chartered Beverly Hills,Subramanyapuram P.O",
              style: TextStyle(fontFamily: "Poppins", fontSize: 18),
            ),
            trailing: SizedBox(
              width: 150,
              height: 50,
            ),
          ),
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            title: Row(
              children: const [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "City",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    "Bangalore",
                    style: TextStyle(fontSize: 18, fontFamily: "Poppins"),
                  )
                ]),
                SizedBox(
                  width: 90,
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pincode",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      "560061",
                      style: TextStyle(fontSize: 18, fontFamily: "Poppins"),
                    )
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Payment',
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            subtitle: Text(
              "Online",
              style: TextStyle(fontFamily: "Poppins", fontSize: 18),
            ),
            trailing: Chip(
              label: Text(
                "PAID",
                style: TextStyle(
                    color: Colors.green,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              backgroundColor: const Color.fromARGB(255, 194, 234, 149),
              padding: EdgeInsets.zero,
            ),
          ),
          Divider(),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "ADDITIONAL INFORMATION",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.grey),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "State",
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              "Karnataka",
              style: TextStyle(fontFamily: "Poppins", fontSize: 18),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Email",
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              "greeniceaqua@gmail.com",
              style: TextStyle(fontFamily: "Poppins", fontSize: 18),
            ),
          ),
          OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext ctx) => CatelogueScreen()));
              },
              style: OutlinedButton.styleFrom(
                  side:
                      BorderSide(color: Colors.blue, style: BorderStyle.solid),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              child: Text(
                "Share receipt",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue),
              ))
        ],
      ),
    );
  }
}
