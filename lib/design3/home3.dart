import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

Container x = Container(
  height: 160,
  width: 326,
  child: const Image(image: AssetImage("assets3/Frame 3466530.png")),
);
Container y = Container(
  height: 160,
  width: 326,
  child: const Image(image: AssetImage("assets3/Frame 3466530 (1).png")),
);
List<Widget> list = [x, y];

class Home3 extends StatelessWidget {
  Home3({super.key});

  static const String routeName = "Home3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Image.asset("assets3/logo.png"),
                ),
                const SizedBox(
                  height: 10,
                ),
                //Text field for search
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Articles, Video, Audio and More,...",
                    hintStyle:
                        const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Hot topics with see more
                Row(
                  children: [
                    const Text(
                      "Hot topics",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    const Text(
                      "see more ",
                      style: TextStyle(color: Color(0xff5925DC), fontSize: 18),
                    ),
                    InkWell(
                        onTap: () {},
                        child: const Icon(Icons.arrow_forward_ios,
                            color: Color(0xff5925DC), size: 18)),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),

                Column(
                  children:[
                    CarouselSlider.builder(
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                            ListView(
                              children:[ Container(
                                  child: Image.asset("assets3/Frame 3466530.png")),
                                Container(
                                    child: Image.asset("assets3/Frame 3466530 (1).png")),
                              ],), options:CarouselOptions(
                      height: 180,
                      aspectRatio: 16/8,
                      viewportFraction: 1,
                      initialPage: 1,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: false,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 600),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      onPageChanged: (index, raeson){},
                      scrollDirection: Axis.horizontal,
                    )
                    ),
                  ],
                ),//carousel slider


                // Container(
                //   height: 160,
                //   width: 326,
                //   child: Expanded(
                //     child: CarouselSlider.builder(
                //         itemCount: 2,
                //         itemBuilder: (BuildContext context, int itemIndex,
                //                 int pageViewIndex) =>
                //             list[itemIndex],
                //         options: CarouselOptions(
                //           height: 44,
                //           aspectRatio: 16 / 9,
                //           viewportFraction: 0.8,
                //           initialPage: 0,
                //           enableInfiniteScroll: true,
                //           reverse: false,
                //           autoPlay: true,
                //           autoPlayInterval: Duration(seconds: 3),
                //           autoPlayAnimationDuration: Duration(milliseconds: 800),
                //           autoPlayCurve: Curves.fastOutSlowIn,
                //           enlargeCenterPage: true,
                //           enlargeFactor: 0.3,
                //           onPageChanged: (index, reason) {},
                //           scrollDirection: Axis.horizontal,
                //         )),
                //   ),
                // ),
                const SizedBox(height: 10,),
                // Text of get tips
                const Text(
                  "Get Tips",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                const SizedBox(height: 9,),
                //Tips container
                Container(
                  alignment: Alignment.bottomLeft,
                  height: 196,
                  width: 326,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffE4E7EC)),
                    color: const Color(0xffF2F4F7),
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(width: 8,),
                      Image.asset("assets3/Doctor-PNG-Images 1.png"),
                      const SizedBox(width: 8,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 24,),
                            const Text("Connect with doctors & get suggestions", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                            const SizedBox(height: 8,),
                            const Text("Connect now and get expert insights", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                            const SizedBox(height: 24,),
                            InkWell(
                              onTap: () {

                              },
                              child: Container(
                               decoration: BoxDecoration(
                                 border: Border.all(color: const Color(0xff7F56D9)),
                                 color:  const Color(0xff7F56D9),
                                 borderRadius: BorderRadius.circular(8)
                               ),
                                height: 36,
                                width: 104,
                                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                                child: const Text("View detail", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.white)),
                              ),
                            )


                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12,),
                //Cycles phases and period
                Row(
                  children: [
                    const Text(
                      "Cycle Phases and Period",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    const Text(
                      "see more ",
                      style: TextStyle(color: Color(0xff5925DC), fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                        onTap: () {},
                        child: const Icon(Icons.arrow_forward_ios,
                            color: Color(0xff5925DC), size: 16)),
                  ],
                ),

              ],
            ),
          ),
          const Spacer(),
          // Bottom navigation bar
          BottomNavigationBar(
            iconSize: 10,
            items: [
              BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {}, child: Image.asset("assets3/calendar.png")),
                label: 'Today',
              ),
              BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {}, child: Image.asset("assets3/Icon (6).png")),
                label: 'Insights',
              ),
              BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {}, child: Image.asset("assets3/Icon (7).png")),
                label: 'Chat',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
