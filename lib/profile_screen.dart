import 'dart:math';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.32,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/background.jpeg'),
                                    fit: BoxFit.cover)),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.7,
                        color: Colors.white60,
                      )
                    ],
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const ProfileStackWidget(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 16, top: 20),
                                child: Text(
                                  'Collection',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.width * 0.5,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: const [
                                    CollectionContainer(
                                      title: 'Winter',
                                      subTitle: 'Unstitched Fabrics',
                                      image: 'images/winter_collection.jpeg',
                                    ),
                                    CollectionContainer(
                                      title: 'Summer',
                                      subTitle: 'Unstitched Fabrics',
                                      image: 'images/summer_collection.jpg',
                                    ),
                                    CollectionContainer(
                                      title: 'Spring',
                                      subTitle: 'Stitched Fabrics',
                                      image: 'images/spring_collection.jpg',
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 16, top: 5),
                                child: Text(
                                  'Tags',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Wrap(
                                  spacing: 8.0,
                                  runSpacing: 8.0,
                                  children: [
                                    TagItem(
                                        color1: getRandomColor(),
                                        color2: getRandomColor(),
                                        name: 'Kurta'),
                                    TagItem(
                                        color1: getRandomColor(),
                                        color2: getRandomColor(),
                                        name: 'Jackets'),
                                    TagItem(
                                        color1: getRandomColor(),
                                        color2: getRandomColor(),
                                        name: 'Lehenga'),
                                    TagItem(
                                        color1: getRandomColor(),
                                        color2: getRandomColor(),
                                        name: 'Coats'),
                                    TagItem(
                                        color1: getRandomColor(),
                                        color2: getRandomColor(),
                                        name: 'Shirts'),
                                    TagItem(
                                        color1: getRandomColor(),
                                        color2: getRandomColor(),
                                        name: '3 Piece'),
                                    TagItem(
                                        color1: getRandomColor(),
                                        color2: getRandomColor(),
                                        name: '2 Piece'),
                                    TagItem(
                                        color1: getRandomColor(),
                                        color2: getRandomColor(),
                                        name: 'Lehlan'),
                                    TagItem(
                                        color1: getRandomColor(),
                                        color2: getRandomColor(),
                                        name: 'Cotton'),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileStackWidget extends StatelessWidget {
  const ProfileStackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
          color: Colors.white.withOpacity(0.7),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.loose,
        children: [
          Positioned(
            top: -40,
            left: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset(
                      'images/profile.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    children: [
                      Text(
                        'Maria Eliott',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Atlanta , New York',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16.0,
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                                text: 'Purchases\n',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                                children: [
                                  TextSpan(
                                      text: '120',
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                ])),
                        RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                                text: 'Wish Items\n',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                                children: [
                                  TextSpan(
                                      text: '1',
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                ])),
                        RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                                text: 'Likes\n',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                                children: [
                                  TextSpan(
                                      text: '12K',
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                ])),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TagItem extends StatelessWidget {
  const TagItem({
    super.key,
    required Color color1,
    required Color color2,
    required this.name,
  })  : _color1 = color1,
        _color2 = color2;

  final String name;
  final Color _color1;
  final Color _color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: [
            _color1,
            _color2,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        child: Text(
          name,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

Color getRandomColor() {
  final Random random = Random();
  return Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
}

class CollectionContainer extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const CollectionContainer(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});
  @override
  Widget build(BuildContext context) {
    Color _color = getRandomColor();
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 10, bottom: 16),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.35,
        height: MediaQuery.of(context).size.width * 0.4,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
          BoxShadow(
              color: _color.withOpacity(0.5),
              offset: const Offset(0, 6),
              spreadRadius: 2,
              blurRadius: 10)
        ]),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [
                    _color.withOpacity(0.8),
                    _color.withOpacity(0.1),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: '$title\n',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: subTitle,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
