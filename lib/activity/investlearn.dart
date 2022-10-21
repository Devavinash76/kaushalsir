import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaushalsir/activity/choicepage.dart';
import 'package:kaushalsir/activity/othersign.dart';

class InvestLearn extends StatefulWidget {
  const InvestLearn({Key? key}) : super(key: key);

  @override
  State<InvestLearn> createState() => _InvestLearnState();
}

class _InvestLearnState extends State<InvestLearn> {
  PageController pageController = PageController(initialPage: 0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 0,
                right: 0,
                bottom: 20,
                top: 60,
              ),
              child: Text("InvestLearn\nPlay \&Learn",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),),
            ),

            const Center(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 0,
                  right: 0,
                  bottom: 10,
                ),
                child: Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(
                        child: Center(
                          child: Text("The Fun and social way to learn\n"
                              "about investing with virtual\nportfolio",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black ,
                              fontSize: 16,
                            ),
                          ),
                        ),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                left: 60,
                right: 60,
                bottom: 40,
                top: 30,
              ),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,

                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),

                  ),
                ),
              ),
            ),

            Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  bottom: 0,
                  top: 0,
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
                        Get.to(const OtherSign());
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
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 40,
                right: 40,
                top: 10,
                bottom: 10,
              ),

                child: Center(
                  child: Text('Continue with Invest \& Bank',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
