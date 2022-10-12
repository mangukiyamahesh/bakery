import 'package:flutter/material.dart';

import 'constant/font_family.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> list = [
    {'image': 'assets/images/books.png', 'name': 'Breakfast'},
    {'image': 'assets/images/sushi.png', 'name': 'Sets'},
    {'image': 'assets/images/sushi (1).png', 'name': 'Shushi'},
    {'image': 'assets/images/salad (2).png', 'name': 'Salads'},
    {'image': 'assets/images/poinsettia.png', 'name': 'Drink'},
  ];

  List<Map<String, dynamic>> list1 = [
    {
      'image': 'assets/images/Cheese Pancakes.png',
      'stock': 'Sale',
      'name': 'Cheese Pancakes',
      'price': '\$4,29',
      'max': '\$4,29',
      'detail': '140g'
    },
    {
      'image': 'assets/images/Toast with Ham.jpg',
      'stock': 'New',
      'name': 'Toast with Ham',
      'price': '\$3,28',
      'max': '',
      'detail': '120g'
    },
    {
      'image': 'assets/images/testy.jpg',
      'stock': 'New',
      'name': 'Testy',
      'price': '\$5,29',
      'max': '',
      'detail': '100g'
    },
  ];

  int select = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 25, top: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(
                              Icons.shopping_bag_outlined,
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "Our menu",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Text(
                            "in the restaurant on",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Nevsky prospekt 42",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w400,
                                fontSize: 17),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 180,
                          width: 330,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.horizontal(
                              left: Radius.circular(30),
                            ),
                            color: Colors.cyan.shade50,
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                5,
                                (index) => Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(
                                          () {
                                            select = index;
                                          },
                                        );
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.all(8),
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color: select == index
                                              ? Colors.teal
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            list[index]['image'],
                                            color: select == index
                                                ? Colors.white
                                                : Colors.black,
                                            height: 30,
                                            width: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      list[index]['name'],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "8 items",
                        style: k20BB,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Flexible(
                        child: SingleChildScrollView(
                          child: Column(
                            children: List.generate(
                              3,
                              (index) => Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        bottom: 10, right: 15),
                                    height: 110,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      color: select == index
                                          ? Colors.white
                                          : Colors.teal,
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          list1[index]['image'],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          height: 20,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: index == 0
                                                ? Colors.orange.shade50
                                                : Colors.cyan.shade50,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Center(
                                            child: Text(
                                              list1[index]['stock'],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: index == 0
                                                      ? Colors.orange
                                                      : Colors.green),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        list1[index]['name'],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            list1[index]['price'],
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          list1[index]["max"] == ''
                                              ? Text(
                                                  list1[index]['detail'],
                                                  style: const TextStyle(
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                  ),
                                                )
                                              : Row(
                                                  children: [
                                                    Text(
                                                      list1[index]['price'],
                                                      style: const TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                      ),
                                                    ),
                                                    const Text(
                                                      '•',
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                    Text(
                                                      list1[index]['detail'],
                                                      style: const TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.menu_book_outlined,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
