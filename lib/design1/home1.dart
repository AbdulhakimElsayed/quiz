import 'package:flutter/material.dart';
import """
package:smooth_page_indicator/smooth_page_indicator.dart""" show SlideEffect, SmoothIndicator, SmoothPageIndicator, SwapEffect;

class Home1 extends StatefulWidget {
  static const String routeName = "home1";

  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

final _controller = PageController();

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Column(
              children: [
                //moody app bar
                Row(
                  children: [
                    Image.asset("assets1/logo.png"),
                    const Spacer(),
                    Image.asset("assets1/bell.png"),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                //hello text
                const Row(
                  children: [
                    Text("Hello, ", style: TextStyle(fontSize: 22)),
                    Text(
                      "Sara Rose",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                //how are you text
                const Row(
                  children: [
                    Text("How are you feeling today ?",
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                //moods icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // love
                    Column(
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Image.asset("assets1/Frame 10.png")),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text("love", style: TextStyle(fontSize: 18)),
                      ],
                    ),
                    //cool
                    Column(
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Image.asset("assets1/Frame 8.png")),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text("cool", style: TextStyle(fontSize: 18)),
                      ],
                    ),
                    //happy
                    Column(
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Image.asset("assets1/Frame 10 (1).png")),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text("happy", style: TextStyle(fontSize: 18)),
                      ],
                    ),
                    //sad
                    Column(
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Image.asset("assets1/Frame 12.png")),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text("sad", style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                //see more
                Row(
                  children: [
                    const Text("Feature",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    const Spacer(),
                    const Text(
                      "see more ",
                      style: TextStyle(color: Colors.green, fontSize: 18),
                    ),
                    InkWell(
                        onTap: () {},
                        child: const Icon(Icons.arrow_forward_ios,
                            color: Colors.green, size: 18)),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                //positive container
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffECFDF3),
                      borderRadius: BorderRadius.circular(18)),
                  padding: const EdgeInsets.all(18),
                  child: Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Positive vibes",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Boost your mood with"),
                          SizedBox(
                            height: 8,
                          ),
                          Text("positive vibes"),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 12,
                                backgroundColor: Color(0xff32D583),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Colors.greenAccent,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "10 mins",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset("assets1/Walking the Dog.png")
                    ],
                  ),
                ),
                // indicator
                const SizedBox(height: 5,),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: SmoothIndicator
                      (offset:0, count:3, size:Size.fromRadius(3),
                      effect: SlideEffect(
                          radius: 15,
                          dotColor: Colors.grey
                      ),
                    ),
                  ),
                ),
                // SmoothPageIndicator(
                //   controller: _controller,
                //   count: 3,
                //   effect: const SwapEffect(
                //     activeDotColor: Color(0xff98A2B3),
                //     dotColor: Color(0xffD9D9D9),
                //     dotHeight: 6,
                //   ),
                // ),
                const SizedBox(
                  height: 15,
                ),
                // exercise
                Row(
                  children: [
                    const Text("Exercise",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22)),
                    const Spacer(),
                    const Text(
                      "see more ",
                      style: TextStyle(color: Colors.green, fontSize: 18),
                    ),
                    InkWell(
                        onTap: () {},
                        child: const Icon(Icons.arrow_forward_ios,
                            color: Colors.green, size: 18)),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                // exercise items
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: const Color(0xffF9F5FF),
                            borderRadius: BorderRadius.circular(18)),
                        child: Row(
                          children: [
                            Image.asset("assets1/Frame.png"),
                            const SizedBox(
                              width: 12,
                            ),
                            const Text(
                              "Relaxation",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: const Color(0xffFDF2FA),
                            borderRadius: BorderRadius.circular(18)),
                        child: Row(
                          children: [
                            Image.asset("assets1/Frame (1).png"),
                            const SizedBox(
                              width: 12,
                            ),
                            const Text(
                              "Meditation",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: const Color(0xffF9F5FF),
                            borderRadius: BorderRadius.circular(18)),
                        child: Row(
                          children: [
                            Image.asset("assets1/Group (1).png"),
                            const SizedBox(
                              width: 12,
                            ),
                            const Text(
                              "Breathing",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: const Color(0xffFDF2FA),
                            borderRadius: BorderRadius.circular(18)),
                        child: Row(
                          children: [
                            Image.asset("assets1/Group.png"),
                            const SizedBox(
                              width: 12,
                            ),
                            const Text(
                              "Yoga",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // BOTTOM navigation bar
                const SizedBox(height: 8),
              ],
            ),
          ),
          const Spacer(),
          BottomNavigationBar(
            iconSize: 10,
            items: [
              BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {}, child: Image.asset("assets1/Icon.png")),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {}, child: Image.asset("assets1/Icon (1).png")),
                label: 'Items',
              ),
              BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {}, child: Image.asset("assets1/Icon (2).png")),
                label: 'Calender',
              ),
              BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {}, child: Image.asset("assets1/user-03.png")),
                label: 'User',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
