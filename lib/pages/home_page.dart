// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sports/images_list/images_list.dart';
import 'package:sports/pages/product_page.dart';
// import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // List of bottom navigation bar icons
    final List<GButton> _items = [
      const GButton(icon: Icons.home_filled),
      const GButton(icon: Icons.notes),
      const GButton(icon: Icons.favorite),
      const GButton(icon: Icons.message_sharp),
      const GButton(icon: Icons.person),
    ];

    return Scaffold(
      // navigation bar
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, bottom: 23),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius:
                BorderRadius.circular(30), // Adjust the radius as needed
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: GNav(
              // haptic: true,
              iconSize: 24,
              // curve: Curves.easeOutExpo,
              // backgroundColor: Colors.transparent, // Make the GNav background transparent
              color: Colors.white60,
              tabs: _items,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.deepOrange,
              padding: const EdgeInsets.all(20),
              // selectedIndex: currentIndex,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // search bar and two icons
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade100)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade100, width: 1)),
                          hintText: 'Search',
                          hintStyle: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w300),
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        style: IconButton.styleFrom(
                            backgroundColor: Colors.grey.shade200,
                            padding: const EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {},
                        icon: const Icon(Icons.notifications)),
                    const Spacer(),
                    IconButton(
                        style: IconButton.styleFrom(
                            backgroundColor: Colors.grey.shade200,
                            padding: const EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {},
                        icon: const Icon(Icons.card_travel_sharp))
                  ],
                ),
              ),
              // offer image
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                  ),
                  height: 200,
                  width: 400,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'lib/images/unsplash.jpg',
                        fit: BoxFit.fill,
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // brand icons row
              SizedBox(
                height: 120,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: icons.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: index == 0 ? 15 : 5,
                            right: index == icons.length -1 ? 15:5,
                          top: 10
                        ),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(50)),
                              height: 80,
                              width: 80,
                              child: Image.asset(
                                icons[index],
                                width: 40,
                                height: 40,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              text[index],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 30,
              ),
              // sale date and time
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    const Text(
                      'Today Sale !',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 1),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 160, 143),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Text('04:43:23'),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'See More',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w400),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // categories section
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductPage()));
                },
                child: SizedBox(
                    height: 330,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories_images.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              left: index == 0 ? 15 : 5,
                              right: index == categories_images.length -1 ? 15:5
                            ),
                            child: SizedBox(
                              height: 350,
                              width: 190,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade100,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      height: 210,
                                      width: double.infinity,
                                      child:
                                          Image.asset(categories_images[index])),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  // name
                                  Text(
                                    names_categories_images[index],
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  // description
                                  Text(
                                    description[index],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.5,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5
                                  ),
                                  const Text(
                                    'Colors 1',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    pricetag[index],
                                    style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                          );
                        })),
              )
            ],
          ),
        ),
      ),
    );
  }
}
