import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List Reviews = [
    "5.0",
    "4.1",
    "4.9",
    "4.2",
    "4.7",
    "4.5",
    "4.8",
    "4.8",
    "4.2",
    "4.1",
    "4.3",
    "4.0",
  ];
  List images = [
    "assets/images/shoes.png",
    "assets/images/t-shirts.jpg",
    "assets/images/top.jpg",
    "assets/images/blazer.jpg",
    "assets/images/hodie.jpg",
    "assets/images/jeans.jpg",
    "assets/images/shorts.jpg",
    "assets/images/jacket.jpg",
    "assets/images/shrug.jpg",
    "assets/images/hot_wear.jpg",
    "assets/images/ear_ring.jpg",
    "assets/images/shirt.jpg",
  ];
  List feshionoductsName = [
    "SHOES",
    "T-SHIRTS",
    "TOP",
    "BLAZER",
    "HODIE",
    "JEANS",
    "EAR-RINGS",
    "JACKET",
    "SHRUG",
    "HOT WEAR",
    "SHORTS",
    "SHIRTS",
  ];

  List feshionice = [
    "\$30.33",
    "\$52.00",
    "\$40.00",
    "\$99.99",
    "\$70.00",
    "\$72.30",
    "\$56.27",
    "\$60.90",
    "\$90.99",
    "\$45.90",
    "\$99.99",
    "\$25.33",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "SHOPPING GALLERY UI",
            style: TextStyle(fontSize: 22, color: Color(0xffF9F9F9)),
          ),
          backgroundColor: Color(0xff5780b9),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xffF6F6F6),
                Color(0xff937bd6),
                Color(0xffb935cd),
              ],
            ),
          ),
          child: GridView.builder(
            itemCount: feshionoductsName.length,
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) => FashionWidget(
                feshionoductsName[index],
                feshionice[index],
                images[index],
                Reviews[index]),
          ),
        ),
      ),
    );
  }

  Widget FashionWidget(
      String? feshion, String? fes, String? image, String? rate) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "$image",
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 40,
              width: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${rate}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 10,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 42,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xff7b7b7b),
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(10), left: Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${fes}",
                      style: TextStyle(color: Colors.white, letterSpacing: 1),
                    ),
                    Text(
                      "${fes}",
                      style: TextStyle(color: Colors.white, letterSpacing: 1),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
