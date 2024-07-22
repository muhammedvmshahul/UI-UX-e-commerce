import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sports/images_list/images_list.dart';
import 'package:sports/pages/cart_page.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      // product images section
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  // AppBar section model
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_ios_outlined)),
                        const Spacer(),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 1),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'lib/images/Crown.png',
                                    height: 15,
                                    width: 15,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    'High Rated',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            )),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border))
                      ],
                    ),
                  ),
                  // image slider
                  Container(
                    height: 400,
                    width: double.infinity,
                    child: PageView.builder(
                        onPageChanged: (index) {
                          setState(() {
                            currentindex = index;
                          });
                        },
                        itemCount: images_categories.length,
                        pageSnapping: true,
                        itemBuilder: (context, index) {
                          return Container(
                              height: 400,
                              width: double.infinity,
                              // margin: EdgeInsets.all(10),
                              child: Image.asset(
                                images_categories[index],
                                height: 40,
                                width: 40,
                              ));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: AnimatedSmoothIndicator(
                      activeIndex: currentindex,
                      count: images_categories.length,
                      effect: const WormEffect(
                        activeDotColor: Colors.black,
                          dotHeight: 6, dotWidth: 6, dotColor: Colors.grey),
                    ),
                  ),
                ],
              ),
          
              // product details section
          
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                      child: Row(
                        children: [
                          Text(
                            'Nike Alphafly 2',
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Text(
                            '\$390',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          // description
                          Text(
                            'Mens Rode Racing Shoes',
                            style: TextStyle(
                                color: Colors.grey, fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Text(
                            '\$',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                          Text(
                            '109.5',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 15, left: 15),
                      child: Divider(
                        height: 50,
                        thickness: 1.6,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Select Size',
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // shoe size section
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: SizedBox(
                        height: 45,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: shoes_size.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: SizedBox(
                                  width: 45,
                                  height: 45,
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          side: const BorderSide(
                                              color: Colors.grey, width: 1.2)),
                                      onPressed: () {},
                                      child: Text(
                                        shoes_size[index],
                                        style: const TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      )),
                                ),
                              );
                            }),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Select color',
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height:20 ,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.grey, width: 1.5)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 48,
                              width: 48,
                              child: IconButton(
                                  style: IconButton.styleFrom(

                                    side: const BorderSide(color: Colors.grey,width: 1.2),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                                  ),
                                  onPressed: (){}, icon:const Icon(Icons.message)),
                            ),
                            const  Spacer(),
                            SizedBox(
                              height: 48,
                              width: 48,
                              child: IconButton(
                                  style: IconButton.styleFrom(

                                      side: const BorderSide(color: Colors.grey,width: 1.2),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                                  ),
                                  onPressed: (){}, icon:const Icon(Icons.shopping_cart)),
                            ),
                           const  Spacer(),
                            SizedBox(
                              height: 48,
                              width: 280,
                              child: TextButton(
                                  style:TextButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                                  ),
                                  onPressed:(){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const CartPage()));
                                  }, child:const Text('Mens Shoes',style: TextStyle(color: Colors.white),)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
