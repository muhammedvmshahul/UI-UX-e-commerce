import 'package:flutter/material.dart';
import 'package:sports/images_list/images_list.dart';
import 'package:wx_divider/wx_divider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back_ios_outlined)),
          ),
          const Spacer(),
          const Text('My Cart', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
         const  Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child:
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                height: 420,
                child: ListView.builder(
                    itemCount: cart_images.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.5),
                              // color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          height: 200,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  // image section
                                  Container(
                                    margin: const EdgeInsets.all(5),
                                    height: 110,
                                    width: 110,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: Image.asset(cart_images[index]),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Nike Dunk Low',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Text(
                                        'Men\'s Shoes',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.grey),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 1),
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: const Padding(
                                            padding: EdgeInsets.all(1.0),
                                            child: Text(
                                              '42,Green',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15),
                                            )),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 45),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.more_vert)),
                                      ),
                                      const SizedBox(
                                        height: 23,
                                      ),
                                      const Row(
                                        children: [
                                          Text(
                                            '\$',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22),
                                          ),
                                          Text(
                                            '109.95',
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Divider(
                                height: 5,
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Add to wishlist',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.delete,
                                          color: Colors.black,
                                          size: 30,
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 0, vertical: 0),
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          // crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.all(5),
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Center(
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon:
                                                      const Icon(Icons.remove),
                                                  padding: EdgeInsets.zero,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Text('1',
                                                style: TextStyle(fontSize: 18),
                                                textAlign: TextAlign.center),
                                            // Center the text
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              margin: const EdgeInsets.all(5),
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Center(
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(Icons.add),
                                                  padding: EdgeInsets.zero,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            Container(
              height: 390,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(12),
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(22)),
                    child: Row(
                      children: [
                        const Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Promo code or Voucher',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'Saving with your Promo code or Voucher',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 17),
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.navigate_next,
                              size: 40,
                            )),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17),
                    child: Row(
                      children: [
                        Text(
                          'Sub total',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Text(
                          '\$',
                          style: TextStyle(color: Colors.red, fontSize: 22),
                        ),
                        Text(
                          '109.5',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17),
                    child: Row(
                      children: [
                        Text(
                          'Shipping',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Text(
                          '\$',
                          style: TextStyle(color: Colors.red, fontSize: 22),
                        ),
                        Text(
                          '109.5',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17),
                    child: WxDivider(
                      direction: Axis.horizontal,
                      pattern: WxDivider.dashed,
                      color: Colors.grey,
                      thickness: 1.3,
                      // spacing: 5.0,
                      align: WxDividerAlign.center,
                      spacing: 10,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17),
                    child: Row(
                      children: [
                        Text(
                          'Sub total',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Text(
                          '\$',
                          style: TextStyle(color: Colors.red, fontSize: 22),
                        ),
                        Text(
                          '109.5',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: SizedBox(
                      height: 60,
                      width: 400,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))),
                          onPressed: () {},
                          child: const Text(
                            'Checkout(2)',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
