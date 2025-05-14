import 'package:flutter/material.dart';
import 'package:ui_project/order_screen.dart';

class DukaanPremiumScreen extends StatelessWidget {
  const DukaanPremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: MySliverAppBar(expandedHeight: 250),
              pinned: true,
            ),
            SliverPadding(
              padding: const EdgeInsets.all(16.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      "Features",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    _buildFeatureTile(
                      icon: Icons.domain_add_rounded,
                      title: "Custom domain name",
                      subtitle:
                          "Get your own custom domain and build your brand on the internet.",
                    ),
                    _buildFeatureTile(
                      icon: Icons.verified_outlined,
                      title: "Verified seller badge",
                      subtitle:
                          "Get green verified badge under your store name and build trust.",
                    ),
                    _buildFeatureTile(
                      icon: Icons.laptop_chromebook_outlined,
                      title: "Dukaan for PC",
                      subtitle:
                          "Access all the exclusive premium features on Dukaan for PC.",
                    ),
                    _buildFeatureTile(
                      icon: Icons.support_agent_outlined,
                      title: "Priority support",
                      subtitle:
                          "Get your questions resolved with our priority customer support.",
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "What is Dukaan Premium?",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: Image.network(
                          "https://tse4.mm.bing.net/th?id=OIP.cThwjOy7auix_DZ7ugzHKQHaEK&pid=Api&P=0&h=180"),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Frequently asked questions",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    _buildFAQTile(
                      question:
                          "What types of businesses can use Dukaan Premium?",
                      answer:
                          "Dukaan caters to a wide variety of sellers. Be it a small grocery store to big legacy brands - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.",
                    ),
                    _buildFAQTile(
                        question:
                            "Will there be an automatic charge after the paid trial?"),
                    _buildFAQTile(
                        question: "What payment methods do you offer?"),
                    _buildFAQTile(
                        question: "What are the terms for the custom domain?"),
                    const SizedBox(height: 20),
                    Text(
                      "Need help? Get in touch",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: _buildContactButton(
                            icon: Icons.chat_bubble_outline,
                            label: "Live Chat",
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _buildContactButton(
                            icon: Icons.call_outlined,
                            label: "Phone Call",
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: const EdgeInsets.all(16.0),
                            ),
                            child: Text(
                              "Select Domain",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => OrderScreen(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: const EdgeInsets.all(16.0),
                            ),
                            child: Text(
                              "Get Premium",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureTile(
      {required IconData icon,
      required String title,
      required String subtitle}) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue, size: 50),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 18),
      ),
      subtitle: Text(subtitle,
          style: TextStyle(fontFamily: "Poppins", color: Colors.grey)),
    );
  }

  Widget _buildFAQTile({required String question, String? answer}) {
    return ExpansionTile(
      trailing: Icon(Icons.add, color: Colors.black54),
      title: Text(
        question,
        style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            color: Colors.black54,
            fontSize: 18),
      ),
      children: answer != null
          ? [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  answer,
                  style:
                      TextStyle(fontFamily: "Poppins", color: Colors.grey[700]),
                ),
              )
            ]
          : [],
    );
  }

  Widget _buildContactButton(
      {required IconData icon,
      required String label,
      required VoidCallback onPressed}) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 40, color: Colors.black54),
      label: Text(
        label,
        style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black54),
      ),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final showCollapsedTitle =
        shrinkOffset > expandedHeight - kToolbarHeight - 20;

    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: [
        //background color
        Container(
          color: const Color.fromARGB(255, 7, 84, 148),
        ),

        //Back arrow icon
        Positioned(
          top: 30,
          left: 8,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        //Expanded title (fade out)
        Align(
          alignment: Alignment.topCenter,
          child: Opacity(
            opacity: ((1 - shrinkOffset / expandedHeight)),
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                "Dukaan Premium",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        // Collapsed Title (fades in)
        if (showCollapsedTitle)
          Positioned(
            top: 18,
            left: 150,
            child: Text(
              "Dukaan Premium",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        //IN CARD

        Positioned(
          top: expandedHeight / 2.5 - shrinkOffset,
          left: 16,
          right: 16,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Card(
              elevation: 6,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Image.network(
                      "https://cdn.prod.website-files.com/634fa785d369cb60d80b6dd1/6639fae692d49b6e8042d5ad_logo.png",
                      height: 60,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Get Dukaan Premium for just ₹4,999/year",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "All the advanced features for scaling your business",
                      style:
                          TextStyle(fontFamily: "Poppins", color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 10;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
