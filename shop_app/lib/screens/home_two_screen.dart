import 'package:flutter/material.dart';
import 'package:shop_app/widgets/widgets.dart';

class HomeTwoScreen extends StatefulWidget {
  @override
  State<HomeTwoScreen> createState() => _HomeTwoScreenState();
}

class _HomeTwoScreenState extends State<HomeTwoScreen> {
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    int selectedIndex = 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        foregroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: Container(
              height: 36,
              width: 36,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(18))),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 20,
              )),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Container(
                height: 36,
                width: 36,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(18))),
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Color(0XFFF39D1A),
                  size: 20,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(30.0),
              width: size.width,
              child: Column(children: const [
                _photoDisccount(),
                SizedBox(height: 32),
                _itemCart(
                  imageItem:
                      'lib/assets/img/image-removebg-preview - 2022-03-04T215907 1.png',
                  productName: 'Energy Runner LP',
                  priceItem: '180.56',
                ),
                SizedBox(height: 20),
                _itemCart(
                  imageItem:
                      'lib/assets/img/image-removebg-preview - 2022-03-04T223346 1.png',
                  productName: 'Puma Max',
                  priceItem: '190.56',
                ),
                SizedBox(height: 20),
                _itemCart(
                  imageItem:
                      'lib/assets/img/image-removebg-preview - 2022-03-04T223153 1.png',
                  productName: 'Leather sneaker',
                  priceItem: '200.56',
                ),
                SizedBox(height: 20),
                _itemCart(
                  imageItem:
                      'lib/assets/img/image-removebg-preview - 2022-03-04T215907 1.png',
                  productName: 'Sweat Hoodie',
                  priceItem: '35.99',
                ),
                SizedBox(height: 20),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavShop(selectedIndex: selectedIndex),
    );
  }
}

class _photoDisccount extends StatelessWidget {
  const _photoDisccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      height: 128,
      width: double.infinity,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage(
                  'lib/assets/img/image-removebg-preview - 2022-03-05T020340 1.png'),
              fit: BoxFit.fill),
          color: const Color(0XFFF39D1A),
          borderRadius: BorderRadius.circular(12.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(right: 54.0, top: 10),
            child: Text(
              '30% OFF',
              style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class _itemCart extends StatefulWidget {
  final String imageItem;
  final String productName;
  final String priceItem;

  const _itemCart(
      {super.key,
      required this.imageItem,
      required this.productName,
      required this.priceItem,});

  @override
  State<_itemCart> createState() => _itemCartState();
}

class _itemCartState extends State<_itemCart> {
  int itemQty = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
          color: const Color(0XFFFDFDFD),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.14),
              blurRadius: 6,
              offset: Offset(0, 3),
            )
          ],
          borderRadius: BorderRadius.circular(12.0)),
      height: 146,
      child: Row(
        children: [
          Container(
            width: 110,
            height: 110,
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            decoration: BoxDecoration(
                color: const Color.fromRGBO(204, 224, 255, 0.14),
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 0.1),
                    blurRadius: 2,
                  )
                ]),
            child: Image(
              image: AssetImage(widget.imageItem),
            ),
          ),
          const SizedBox(width: 23),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.productName,
                  maxLines: 1,
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Text('\u0024${widget.priceItem}',
                    style: const TextStyle(
                        color: Color(0XFF8B8B94),
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w700)),
                const SizedBox(height: 6),
                SizedBox(
                  width: 190,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 110,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () => setState(() {
                                itemQty -= 1;
                              }),
                              child: Container(
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0XFF8B8B94),
                                          width: 1.5),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(17))),
                                  child: const Icon(
                                    Icons.bolt_outlined,
                                    color: Colors.black,
                                    size: 20,
                                  )),
                            ),
                            Text(
                              '$itemQty',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins'),
                            ),
                            InkWell(
                              onTap: () => setState(() {
                                itemQty += 1;
                              }),
                              child: Container(
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0XFF8B8B94),
                                          width: 1.5),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(17))),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.black,
                                    size: 20,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () => setState(() {
                          itemQty -= 1;
                        }),
                        child: Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0XFF8B8B94), width: 1.5),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(17))),
                            child: const Icon(
                              Icons.delete,
                              color: Colors.red,
                              size: 20,
                            )),
                      ),
                    ],
                  ),
                ),

                //Otro
              ],
            ),
          ),
        ],
      ),
    );
  }
}
