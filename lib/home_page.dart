import 'package:flutter/material.dart';
import 'package:instax_18111137/data_camera.dart';
import 'package:instax_18111137/detail_camera.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var list = listCamera;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {},
          child: Container(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            margin: const EdgeInsets.all(8),
            child: const Icon(
              Icons.menu,
              size: 20,
            ),
          ),
        ),
        title: const Image(
          height: 20,
          width: 120,
          image: AssetImage(
            "assets/images/fujifilm-banner.png",
          ),
          fit: BoxFit.fill,
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              margin: const EdgeInsets.only(right: 8),
              child: const Icon(
                Icons.shopping_bag_outlined,
                size: 20,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 34,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black,
              ),
              child: TextField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  contentPadding: EdgeInsets.zero,
                ),
                style: const TextStyle(
                  color: Colors.white,
                ),
                onChanged: (value) {
                  setState(() {
                    if (value.isEmpty) {
                      list = listCamera;
                    } else {
                      list = listCamera
                          .where((element) => element.name
                              .toLowerCase()
                              .contains(value.toLowerCase()))
                          .toList();
                    }
                  });
                },
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: list.length,
              itemBuilder: (_, index) {
                return cardCamera(context, list[index]);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget cardCamera(BuildContext context, DataCamera data) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailCamera(
              data: data,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        height: 160,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 60,
              height: 160,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                color: data.color,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Limited Edition",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Instax",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        data.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    data.price,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      "Buy",
                      style: TextStyle(
                        color: data.color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Image(
                image: AssetImage(
                  data.image,
                ),
                height: 140,
              ),
            )
          ],
        ),
      ),
    );
  }
}
