import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'introductionscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController animationController;
  late AnimationController slideAnimation;
  late Animation<Offset> offsetaniamtion;
  late Animation<Offset> textaniamtion;

  @override
  void initState() {
    // TODO: implement initState
    animationController =
    AnimationController(vsync: this,lowerBound: 0,upperBound: 60,animationBehavior: AnimationBehavior.normal,duration: const Duration(microseconds: 700));
    slideAnimation = AnimationController(
        vsync: this,
      duration: const Duration(microseconds: 700)
    );
    offsetaniamtion = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-0.5,0.0),
    ).animate(CurvedAnimation(parent: slideAnimation, curve: Curves.fastOutSlowIn,
    ));
    textaniamtion = Tween<Offset>(
      begin: const Offset(-0.5,0.0),
          end: const Offset(0.2,0.0),
    ).animate(CurvedAnimation(parent: slideAnimation, curve: Curves.fastOutSlowIn));

    animationController.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        slideAnimation.forward();
      }
    });

    Future.delayed(const Duration(seconds: 4),(){
      Navigator.push(context,
      MaterialPageRoute(builder: (context) => IntroductionScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColorLight,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                  animation: animationController,
                  builder:  (_,child){
                    return SlideTransition(
                      position: offsetaniamtion,

                    );
                  },
              ),
              SlideTransition(
                position: textaniamtion,
                child: const Text(
                  "Avoid",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
