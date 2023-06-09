import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:feeportal/app/constants/color_constants.dart';
import 'package:feeportal/view/bottom_navigation_bar/app_development_content_screen.dart';
import 'package:feeportal/view/bottom_navigation_bar/game_development_content_screen.dart';
import 'package:feeportal/view/bottom_navigation_bar/trendings_content_screen.dart';
import 'package:feeportal/view/bottom_navigation_bar/web_development_content_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  bool isDrawerTapped = false;
  late TabController controller = TabController(length: 4, vsync: this);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          backgroundColor: kBackgroundColor,
          appBar: AppBar(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            elevation: 7,
            shadowColor: Colors.grey.shade100,
            toolbarHeight: 60,
            titleSpacing: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
              child: Center(
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Text(
                          'C',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.orange,
                            fontSize: 35,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Positioned(
                        top: 2,
                        right: 4,
                        child: Text(
                          ';',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            title: const Text(
              'CipherSchools',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            automaticallyImplyLeading: false,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => setState(() {
                    isDrawerTapped = !isDrawerTapped;
                  }),
                  child: isDrawerTapped
                      ? Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.close_rounded,
                              size: 15,
                            ),
                          ),
                        )
                      : const Icon(
                          Icons.menu,
                        ),
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  width: device.width,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text.rich(
                              textAlign: TextAlign.center,
                              TextSpan(
                                text: 'Welcome to ',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'the Future ',
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'of Learning!',
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              'Start Learning by best creators for',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              child: DefaultTextStyle(
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.orange,
                                ),
                                child: AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      'absolutely Free',
                                      speed: const Duration(milliseconds: 200),
                                    ),
                                  ],
                                  onTap: () {
                                    print("Tap Event");
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 45,
                                          width: 45,
                                          padding: const EdgeInsets.all(5),
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 30,
                                        child: Container(
                                          height: 45,
                                          width: 45,
                                          padding: const EdgeInsets.all(5),
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 60,
                                        child: Container(
                                          height: 45,
                                          width: 45,
                                          padding: const EdgeInsets.all(5),
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      '50+',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Mentors',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 1,
                                  height: 35,
                                  color: kBackgroundColor,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      '4.8/5',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          size: 14,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star_half,
                                          size: 14,
                                          color: Colors.orange,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          'Ratings',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Container(
                              width: 220,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Start Learning Now',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_outlined,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            CarouselSlider.builder(
                              itemCount: 5,
                              itemBuilder: (context, index, realIndex) {
                                return GestureDetector(
                                  onTap: () {},
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 230,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 45,
                                                width: 45,
                                                decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                'Earn CipherPoints',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 20,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              const Text(
                                                'Earn exclusive rewards by developing your skills with us!',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 20,
                                        right: 0,
                                        child: Container(
                                          width: 90,
                                          height: 30,
                                          color: Colors.orange,
                                          child: const Center(
                                            child: Text(
                                              'Free',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              options: CarouselOptions(
                                viewportFraction: 0.65,
                                enlargeCenterPage: true,
                                height: 230,
                                autoPlay: true,
                                enableInfiniteScroll: true,
                              ),
                            ),
                            const SizedBox(
                              height: 75,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: device.width / 2 - 35,
                                  child: Column(
                                    children: const [
                                      Text(
                                        '15K+',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Students',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                SizedBox(
                                  width: device.width / 2 - 35,
                                  child: Column(
                                    children: const [
                                      Text(
                                        '10K+',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Certificates delivered',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: device.width / 2 - 35,
                                  child: Column(
                                    children: const [
                                      Text(
                                        '450K+',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Streamed minutes',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                SizedBox(
                                  width: device.width / 2 - 35,
                                  child: Column(
                                    children: const [
                                      Text(
                                        '12TB+',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Content streamed in last 60 days',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: device.width / 2 - 35,
                                  child: Column(
                                    children: const [
                                      Text(
                                        '50+',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Creators',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                SizedBox(
                                  width: device.width / 2 - 35,
                                  child: Column(
                                    children: const [
                                      Text(
                                        '110+',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Programs available',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: device.width - 30,
                        height: 260,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              width: device.width - 60,
                              height: 260,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              bottom: 0,
                              right: 0,
                              left: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFF555555),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              child: Container(
                                width: device.width - 60,
                                color: Colors.transparent,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Unlock your learning potential with CiperSchools',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      'Best platform for the Students',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 26,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(color: Colors.white),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 23),
                                        child: Text(
                                          'For Students',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: device.width - 30,
                        height: 260,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              width: device.width - 60,
                              height: 260,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              bottom: 0,
                              right: 0,
                              left: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFF555555),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              child: Container(
                                width: device.width - 60,
                                color: Colors.transparent,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Empowering students to open their minds to utmost knowledge',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      'Best the mentor you never had',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 26,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(color: Colors.white),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 23),
                                        child: Text(
                                          'For Creators',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        'Bests are here',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ButtonsTabBar(
                          controller: controller,
                          backgroundColor: Colors.orange,
                          unselectedBackgroundColor: Colors.grey.shade200,
                          unselectedLabelStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          radius: 12,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 25),
                          labelStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          tabs: const [
                            Tab(
                              text: "Trendings",
                            ),
                            Tab(
                              text: "App Development",
                            ),
                            Tab(
                              text: "Web Development",
                            ),
                            Tab(
                              text: "Game Development",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 500,
                        child: TabBarView(
                          controller: controller,
                          children: const [
                            TrendingsContentScreen(),
                            AppDevelopmentContentScreen(),
                            WebDevelopmentContentScreen(),
                            GameDevelopmentContentScreen(),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        'Our Expert Mentors',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: SizedBox(
                          height: 230,
                          width: device.width,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 20,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Container(
                                    height: 150,
                                    width: 190,
                                    decoration: BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    'Satyam',
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Text(
                                    'Microsoft',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              width: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  '2020 CiperSchools All Right Reserved',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
        if (isDrawerTapped)
          Positioned(
            top: 105,
            right: 10,
            left: 10,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset.zero,
                    color: Colors.grey.shade100,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Home',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Creator Access',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Live Reviews',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Community',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Explore Courses',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'SignIn',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
