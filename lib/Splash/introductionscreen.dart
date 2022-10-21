import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaushalsir/activity/choicepage.dart';
import 'package:kaushalsir/activity/investlearn.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../model/intro_model.dart';
import '../widgets/intro_view.dart';

class IntroductionScreen extends StatefulWidget {
    const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  PageController pageController = PageController(initialPage: 0);

  List<IntroModel> introPageList = ([
    IntroModel(
         "Text1",
        "",
        "assets/images/img3.png",
    ),
    IntroModel(
      "Text2",
      "",
      "assets/images/img1.png",
    ),
    IntroModel(
      "Text3",
      "",
      "assets/images/img2.png",
    ),
  ]);

    var currentShowIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Expanded(child: PageView(
              controller: pageController,
              pageSnapping: true,
              physics: const BouncingScrollPhysics(),
              onPageChanged: (index){
                currentShowIndex = index;
              },
              scrollDirection: Axis.horizontal,
              children: [
                IntroView(introModel: introPageList[0]),
                IntroView(introModel: introPageList[1]),
                IntroView(introModel: introPageList[2]),

              ],
            ),
            ),
            SmoothPageIndicator(
              controller: pageController,
              count:introPageList.length,
              effect: const SlideEffect(
                dotColor: Colors.black,
                activeDotColor: Colors.green
              ),
              onDotClicked:(index){}),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  bottom: 32,
                  top: 20,
            ),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).disabledColor.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(4,4),
                  )
                ],
              ),

              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: (){
                    Get.to(const InvestLearn());
                  },
                  borderRadius: BorderRadius.circular(24),
                  child: const Center(
                    child: Text("Get Started",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    ),
                  ),
                ),
              ),

            )
            )
          ],
        ),
    );
  }
}
