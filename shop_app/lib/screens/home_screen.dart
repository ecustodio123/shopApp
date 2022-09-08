import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    int _selectedIndex = 2;

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
                Icons.menu,
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
                  color: Colors.black,
                  size: 20,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(30.0),
              width: size.width,
              height: size.height - 210,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(211, 199, 199, 0.2),
                  borderRadius: BorderRadius.circular(28.0)),
              child: Column(children: const [
                _cardItem(
                  backgroundColor: 0XFFE5EAFF,
                  imageItem:
                      'lib/assets/img/image-removebg-preview - 2022-03-05T163659 1.png',
                  productName: 'Pink Hoodie',
                  productCategory: 'women wear',
                  priceOriginal: '80.99',
                  priceDiscount: '40.99',
                ),
                SizedBox(height: 20),
                _cardItem(
                  backgroundColor: 0XFFFFF0CD,
                  imageItem:
                      'lib/assets/img/image-removebg-preview - 2022-03-05T165834 1.png',
                  productName: 'Henlock Hoodie',
                  productCategory: 'women wear',
                  priceOriginal: '90.99',
                  priceDiscount: '45.99',
                ),
                SizedBox(height: 20),
                _cardItem(
                  backgroundColor: 0XFFDEFFBF,
                  imageItem:
                      'lib/assets/img/image-removebg-preview - 2022-03-05T170734 1.png',
                  productName: 'Casual Hoddie',
                  productCategory: "Men's wear",
                  priceOriginal: '60.99',
                  priceDiscount: '30.99',
                ),
                SizedBox(height: 20),
                _cardItem(
                  backgroundColor: 0XFFE8E0FF,
                  imageItem:
                      'lib/assets/img/image-removebg-preview - 2022-03-05T170441 1.png',
                  productName: 'Sweat Hoodie',
                  productCategory: "Men's wear",
                  priceOriginal: '70.99',
                  priceDiscount: '35.99',
                ),
                SizedBox(height: 20),
                _resumeCart(),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavShop(selectedIndex: _selectedIndex),
    );
  }
}



class _resumeCart extends StatelessWidget {
  const _resumeCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: const [
            Text('Total price:',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                )),
            Text('\u0024152.00',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                )),
          ],
        ),
        ElevatedButton(
            onPressed: () => {},
            style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(0),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  const StadiumBorder()),
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFF1E1E2D)),
            ),
            child: SizedBox(
              width: 148,
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(width: 5),
                  Icon(Icons.login_outlined),
                  SizedBox(width: 10),
                  Text('Chick Out'),
                ],
              ),
            )),
      ],
    );
  }
}

class _cardItem extends StatefulWidget {
  final int backgroundColor;
  final String imageItem;
  final String productName;
  final String productCategory;
  final String priceDiscount;
  final String priceOriginal;

  const _cardItem(
      {super.key,
      required this.backgroundColor,
      required this.imageItem,
      required this.productName,
      required this.productCategory,
      required this.priceDiscount,
      required this.priceOriginal});

  @override
  State<_cardItem> createState() => _cardItemState();
}

class _cardItemState extends State<_cardItem> {
  int itemQty = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
          color: Color(0XFFFDFDFD), borderRadius: BorderRadius.circular(16.0)),
      height: 129,
      child: Row(
        children: [
          Container(
            width: 101,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
            decoration: BoxDecoration(
                color: Color(widget.backgroundColor),
                borderRadius: BorderRadius.circular(12.0)),
            child: Image(
              image: AssetImage(widget.imageItem),
            ),
          ),
          SizedBox(width: 23),
          Container(
            width: 140,
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
                Text(widget.productCategory,
                    style: const TextStyle(
                        color: Color(0XFF8B8B94),
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        fontWeight: FontWeight.w500)),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Text('\u0024${widget.priceDiscount}',
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(
                      width: 12,
                    ),
                    Text('\u0024${widget.priceOriginal}',
                        style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Color(0XFF8B8B94),
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                )
              ],
            ),
          ),
          SizedBox(width: 35),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () => setState(() {
                  itemQty -= 1;
                }),
                child: Container(
                    height: 36,
                    width: 36,
                    decoration: const BoxDecoration(
                        color: Color(0XFFFDFDFD),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(93, 107, 136, 0.1),
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 20,
                    )),
              ),
              Text(
                '${itemQty}',
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
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(93, 107, 136, 0.1),
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
