import 'dart:math' show Random;

import 'package:flutter/material.dart';
import 'package:shop_app/widgets/widgets.dart';

class DetailScreen extends StatefulWidget {
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    int selectedIndex = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Luxary Shoes'),
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
                  Icons.heart_broken,
                  color: Colors.red,
                  size: 20,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
              child: Column(children: const [
                _ViewItem(),
                SizedBox(height: 35),
                _sizeColorSelect(),
                SizedBox(height: 27),
              ]),
            ),
            const SizedBox(height: 35),
            const _priceResume()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavShop(selectedIndex: selectedIndex),
    );
  }
}

class _priceResume extends StatelessWidget {
  const _priceResume({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93,
      width: double.maxFinite,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Total Price',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'S1900.30',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF8B8B94)),
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () => {},
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                )),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFF79F1A)),
              ),
              child: SizedBox(
                width: 151,
                height: 46,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Add to Cart',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class _ViewItem extends StatelessWidget {
  const _ViewItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: const [
            Positioned(
                child: Image(
                    width: 244,
                    image: AssetImage(
                        'lib/assets/img/image-removebg-preview - 2022-03-04T223153 2.png'))),
            Positioned(
              top: 120,
              child: Image(
                  width: 244,
                  image: AssetImage('lib/assets/img/Group 1000001168.png')),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Puma Max 200 Brand',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            Container(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Color(0XFFF4C300),
                    ),
                    Text('5.0',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Color(0XFF8B8B94),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold))
                  ]),
            )
          ],
        ),
        const SizedBox(height: 16),
        const Text(
          'Puma made a big comeback onto the road running scene in 2022 with an entirly new line up of running style, Which were well- received by runners looking for new options for road shoes. The velocity Nitro 2 is a great option for an everyday running trainer in which to log the miles for your A race goal.',
          style: TextStyle(
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color: Color(0XFF8B8B94)),
        )
      ],
    );
  }
}

class _sizeColorSelect extends StatefulWidget {
  const _sizeColorSelect({
    Key? key,
    // required this.size,
  }) : super(key: key);

  // final Size size;

  @override
  State<_sizeColorSelect> createState() => _sizeColorSelectState();
}

class _sizeColorSelectState extends State<_sizeColorSelect> {
  bool heartActive = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 195,
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
          color: const Color(0XFFFFFFFF),
          borderRadius: BorderRadius.circular(18.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Size',
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 34,
            child: Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (_, int index) => Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: _sizeCard(idChip: index),
                        ))),
          ),
          const SizedBox(height: 16),
          const Text(
            'Available Colour',
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 34,
            child: Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (_, int index) => Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: _colorCircle(idChip: index),
                        ))),
          ),
        ],
      ),
    );
  }
}

class _sizeCard extends StatefulWidget {
  final int idChip;

  const _sizeCard({
    Key? key,
    required this.idChip,
  }) : super(key: key);

  @override
  State<_sizeCard> createState() => _sizeCardState();
}

class _sizeCardState extends State<_sizeCard> {
  bool sizeActive = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() {
        !sizeActive ? sizeActive = true : sizeActive = false;
      }),
      child: Container(
        height: 34,
        width: 51,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            border: Border.all(color: Color(0XFFF79F1A), width: 3)),
        child: Container(
          color: sizeActive ? Color(0XFFF79F1A) : Colors.white,
          alignment: Alignment.center,
          child: Text(
            '${widget.idChip + 5}',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: !sizeActive ? Color(0XFFF79F1A) : Colors.white,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}

class _colorCircle extends StatefulWidget {
  final int idChip;

  const _colorCircle({
    Key? key,
    required this.idChip,
  }) : super(key: key);

  @override
  State<_colorCircle> createState() => _colorCircleState();
}

class _colorCircleState extends State<_colorCircle> {
  final random = Random();
  bool colorActive = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() {
        !colorActive ? colorActive = true : colorActive = false;
      }),
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
            color: Color.fromRGBO(random.nextInt(255), random.nextInt(255),
                random.nextInt(255), 1),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Container(
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
