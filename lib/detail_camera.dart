import 'package:flutter/material.dart';
import 'package:instax_18111137/data_camera.dart';

class DetailCamera extends StatelessWidget {
  DataCamera data;
  DetailCamera({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: data.color,
              ),
            ),
            margin: const EdgeInsets.all(8),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 20,
              color: data.color,
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
                Icons.more_vert,
                size: 20,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 44),
                      child: Image(
                        image: AssetImage(
                          data.image,
                        ),
                        height: 200,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Instax",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        data.name,
                        style: TextStyle(
                          color: data.color,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Be real and fun with the INSTAX MINI 7+. Cool design, colorful and compact, this instant camera is fun and easy to use. Point and shoot and give your day some fun!",
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Point & Shoot",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "The Mini 7+ is easy to use! Simply point and shoot! With its exposure control adjustment and 60mm fixed-focus lens, the Mini 7+ makes it easy for you to be creative and live in the moment.",
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Mini But With Full-Size Memories",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Pop it in your wallet, stick it to your wall – the INSTAX Mini film brings you instant 2 x 3 sized photos you can show and tell. Using professional high-quality film technology (as you’d expect from Fujifilm), your festival frolicking, sun worshipping, crowd surfing memories that you print will transport you right back into that moment.",
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Mini Film",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                      "Mini moments with maximum impact. What’s your next mini moment?"),
                  const SizedBox(height: 20),
                  const Text(
                    "Plenty of Great Color Choices",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                      "Available in five awesome colors: Lavender, Seafoam Green, Coral, Light Pink & Light Blue"),
                  const SizedBox(height: 20),
                  const Text(
                    "The Mini 7+ Has Your Back!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Depending upon the weather conditions, you can easily control brightness to obtain a great picture",
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Fun All The Time!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Live in the moment and enjoy your Mini 7+, and give your day some instant fun!",
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, -1),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data.price,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: data.color,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
