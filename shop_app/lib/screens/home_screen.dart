import 'package:flutter/material.dart';
import 'package:shop_app/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
              // width: size.width,
              // height: size.height - 210,
              child: Column(children: [
                const _SearchBar(),
                const SizedBox(height: 18),
                Container(
                  height: 48,
                  child: Expanded(
                      child: ListView.builder(
                          // controller: scrollController,
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (_, int index) => Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child: _ChipBranch(idChip: index),
                              ))),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Popular Shoes',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF8B8B94)),
                    )
                  ],
                ),
                SizedBox(height: 27),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _itemProduct(size: size),
                    _itemProduct(size: size),
                  ],
                ),
                SizedBox(height: 27),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _itemProduct(size: size),
                    _itemProduct(size: size),
                  ],
                ),
                SizedBox(height: 27),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _itemProduct(size: size),
                    _itemProduct(size: size),
                  ],
                ),
                SizedBox(height: 27),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _itemProduct(size: size),
                    _itemProduct(size: size),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavShop(selectedIndex: selectedIndex),
    );
  }
}

class _itemProduct extends StatefulWidget {
  const _itemProduct({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<_itemProduct> createState() => _itemProductState();
}

class _itemProductState extends State<_itemProduct> {
  bool heartActive = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 218,
      width: widget.size.width - 260,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: const Color(0XFFFFFFFF),
          borderRadius: BorderRadius.circular(16.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () => setState(() {
                  !heartActive ? heartActive = true : heartActive = false;
                }),
                child: Icon(
                  Icons.heart_broken,
                  color: !heartActive ? Color(0XFF8B8B94) : Colors.red,
                  size: 24,
                ),
              ),
            ],
          ),
          const Image(
              image: AssetImage(
                  'lib/assets/img/image-removebg-preview - 2022-03-04T215907 1.png')),
          const Text(
            'Men’s Shose',
            style: TextStyle(
                color: Color(0XFFF39D1A),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
          ),
          const Text(
            'Energy Runner LP',
            style: TextStyle(
                color: Color(0XFF000000),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    '\u0024180.56',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins'),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0XFFF4C300),
                    size: 14,
                  ),
                  Text(
                    '(5.0)',
                    style: TextStyle(
                        color: Color(0XFF8B8B94),
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins'),
                  ),
                ],
              ),
              Container(
                  height: 22,
                  width: 22,
                  decoration: const BoxDecoration(
                      color: Color(0XFF191D47),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(93, 107, 136, 0.1),
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(11))),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class _ChipBranch extends StatelessWidget {
  final int idChip;

  const _ChipBranch({
    Key? key,
    required this.idChip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104,
      child: Chip(
        padding: const EdgeInsets.all(2),
        backgroundColor: idChip == 0 ? Color(0XFFFFA289) : Colors.white,
        label:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              height: 36,
              width: 36,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(93, 107, 136, 0.1),
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(18))),
              child: const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Image(
                    image: NetworkImage(
                        'https://i.ibb.co/nkxY1bs/image-removebg-preview-2022-03-04-T211650-1-1.png')),
              )),
          Image.asset(
              'lib/assets/img/image-removebg-preview - 2022-03-04T210526 1.png')
        ]),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 12,
          child: TextFormField(
            autofocus: false,
            initialValue: '',
            decoration: const InputDecoration(
              hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              prefixIcon: Icon(
                Icons.search,
                color: Color(0XFF8B8B94),
              ),
              fillColor: Color(0XFFF2F5FF),
              filled: true,
              hintText: 'Search',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
        ),
        Expanded(flex: 1, child: SizedBox()),
        Expanded(
          flex: 2,
          child: Container(
              height: 46,
              width: 46,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 20,
              )),
        ),
      ],
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