import 'package:ethio_commerce_app/widgets/card.dart';
import 'package:ethio_commerce_app/widgets/pattern2.dart';
import 'package:ethio_commerce_app/widgets/popular_menu.dart';
import 'package:ethio_commerce_app/widgets/search_bar.dart';
import 'package:ethio_commerce_app/widgets/section_title_row.dart';
import 'package:flutter/material.dart';
import 'package:ethio_commerce_app/widgets/section_header1.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DefaultTabController(
          length: 4,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: TabBarView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView(
                    children: [
                      const SizedBox(height: 60),
                      const SectionHeader(),
                      const SizedBox(height: 25),
                      const SearchBar1(),
                      const SizedBox(height: 10),
                      Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(243, 129, 223, 132),
                              Color.fromARGB(255, 67, 200, 136),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          image: DecorationImage(
                              image: const AssetImage(
                                  'assets/images/cardImgBG.png'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.white.withValues(alpha: 0.2),
                                  BlendMode.modulate)),
                          color: const Color.fromARGB(255, 122, 211, 125),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              child: Image.asset(
                                'assets/images/cardImg.png',
                                width: 270,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              right: 20,
                              top: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Special Deal For',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const Text(
                                    'October',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      minimumSize: const Size(90, 30),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'Buy Now',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 61, 137, 63),
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      SectionTitleRow(
                        title: 'Nearest Restaurant',
                        onViewMore: () {},
                      ),
                      const SizedBox(height: 15),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card1(
                              url: 'assets/images/veganL.png',
                              title: 'Vegan Resto',
                              time: '12 Mins'),
                          SizedBox(width: 20),
                          Card1(
                              url: 'assets/images/healthy.png',
                              title: 'Healthy Food',
                              time: '8 Mins'),
                        ],
                      ),
                      SectionTitleRow(
                        title: 'Popular New',
                        onViewMore: () {},
                      ),
                      const SizedBox(height: 15),
                      const PopularMenu(
                        title: 'Green Noddle',
                        subtitle: 'Noodel Home',
                        price: '15',
                        url: 'assets/images/greenN.png',
                      )
                    ],
                  ),
                ),
                const Center(child: Text('Profile Page')),
                const Center(child: Text('Cart Page')),
                const Center(child: Text('Chat Page')),
              ],
            ),
            bottomNavigationBar: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: const Border(bottom: BorderSide.none),
                  boxShadow: [
                    const BoxShadow(
                      color: Color.fromARGB(255, 231, 230, 230),
                      spreadRadius: 3,
                      blurRadius: 15,
                      offset: Offset(10, 10),
                    )
                  ]),
              child: TabBar(
                labelPadding: const EdgeInsets.symmetric(horizontal: 10),
                indicator: BoxDecoration(
                    color: const Color.fromARGB(255, 224, 243, 224),
                    borderRadius: BorderRadius.circular(12)),
                tabs: <Widget>[
                  const Tab(
                    icon: Row(
                      children: [
                        Icon(Icons.home, color: Colors.green),
                        SizedBox(width: 5),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Tab(icon: Icon(Icons.person, color: Colors.green)),
                  const Tab(
                      icon: Icon(Icons.shopping_cart, color: Colors.green)),
                  Tab(
                    icon: SvgPicture.asset('assets/images/chat.svg',
                        color: Colors.green),
                  ),
                ],
              ),
            ), // container
          ),
        ),
        const Pattern2(),
      ],
    );
  }
}
