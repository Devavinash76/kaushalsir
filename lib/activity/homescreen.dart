import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  BottomNav4State createState() => BottomNav4State();
}

class BottomNav4State extends State<HomeScreen> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(0),
        height: width * .155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.11),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(0),
        ),
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: width * .024),
          itemBuilder: (context, index) =>
              InkWell(
                onTap: () {
                  setState(
                        () {
                      currentIndex = index;
                    },
                  );
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      margin: EdgeInsets.only(
                        bottom: index == currentIndex ? 0 : width * .029,
                        right: width * .0422,
                        left: width * .0422,
                      ),
                      width: width * .128,
                      height: index == currentIndex ? width * .014 : 0,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(10),
                        ),
                      ),
                    ),
                    Icon(
                      listOfIcons[index],
                      size: width * .076,
                      color: index == currentIndex ? Colors.black : Colors
                          .black54,
                    ),
                    SizedBox(height: width * .03),
                  ],
                ),
              ),
        ),
      ),
    );
  }
  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.auto_graph_rounded,
    Icons.call_received_rounded,
    Icons.copy_all_rounded,
    Icons.doorbell_rounded,

  ];
}