import 'package:flutter/material.dart';
import 'package:ui_project/dukaanpremium_screen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payments",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold),
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
                Icons.info_outline,
                color: Colors.white,
              ))
        ],
        backgroundColor: const Color.fromARGB(255, 3, 69, 123),
      ),
      backgroundColor: const Color.fromARGB(246, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 16.0, right: 16.0, top: 8.0, bottom: 4.0),
                      child: Text(
                        "Transaction Limit",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, top: 4.0, bottom: 8.0),
                      child: Text(
                          "A free limit up to which you will receive the online payments directly in your bank",
                          style: TextStyle(
                              fontFamily: "Poppins", color: Colors.black54)),
                    ),
                    SizedBox(
                      height: 10,
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, top: 0.0, bottom: 0.0),
                      child: LinearProgressIndicator(
                        value: 0.3,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, top: 0.0, bottom: 8.0),
                      child: Text(
                        "36,668 left out of ₹50,000",
                        style: TextStyle(
                            fontFamily: "Poppins", color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext ctx) =>
                                        DukaanPremiumScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          child: Text(
                            "Increase limit",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            ListTile(
              title: Text(
                "Default Method",
                style: TextStyle(fontFamily: "Poppins", fontSize: 20),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Online Payment",
                    style: TextStyle(fontFamily: "Poppins", color: Colors.grey),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Payment Profile",
                style: TextStyle(fontFamily: "Poppins", fontSize: 20),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Bank Account",
                    style: TextStyle(fontFamily: "Poppins", color: Colors.grey),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Payments Overview",
                style: TextStyle(fontFamily: "Poppins", fontSize: 20),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Life Time",
                    style: TextStyle(fontFamily: "Poppins", color: Colors.grey),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 85,
                  width: 170,
                  margin: EdgeInsets.only(left: 25),
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      shape: BoxShape.rectangle),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "AMOUNT ON HOLD",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.white,
                            fontSize: 15),
                      ),
                      Text(
                        "₹0",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Container(
                  height: 85,
                  width: 170,
                  margin: EdgeInsets.only(right: 5, left: 20),
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 14, 210, 7),
                      shape: BoxShape.rectangle),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "AMOUNT RECEIVED",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.white,
                            fontSize: 15),
                      ),
                      Text(
                        "₹13,332",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Transactions",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white10,
                      ),
                      child: Text("On hold",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Colors.black38))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: Text("Payouts(15)",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Colors.white))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white10,
                      ),
                      child: Text("Refunds",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Colors.black38))),
                ),
              ],
            ),
            ListView.builder(
              itemCount: 15,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                            "https://i.etsystatic.com/8155076/r/il/04981b/4590780552/il_fullxfull.4590780552_g0zz.jpg"),
                      ),
                      title: Text(
                        "Order #1688068",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontFamily: "Poppins"),
                      ),
                      subtitle: Text(
                        "Jul 12,02:06PM \n   \n799deposited to: 588602000000138",
                        style: TextStyle(
                            fontFamily: "Poppins", color: Colors.grey),
                      ),
                      trailing: Column(
                        children: [
                          Text(
                            "₹799",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Successful",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                      indent: 16,
                      endIndent: 16,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
