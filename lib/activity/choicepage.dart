import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaushalsir/activity/investlearn.dart';

class ChoicePage extends StatelessWidget {
  const ChoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        color: Colors.white,
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                  child: const Text("Choose Where You\'d like to Start",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),)),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(100),
                    child: Column(
                      children: [
                        const Text("Play \& learn",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),),

                        Container(
                            padding: const EdgeInsets.all(10),
                            child: const Text("Learn How to Invest by Playing\n"
                                "Fantasy Learn finance",
                              style: TextStyle(
                                color: Colors.black ,
                                fontSize: 16,
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(3.0),
              child: Divider(
                color: Colors.transparent,
                height: 20,
                thickness: 1,
                indent: 20,
                endIndent: 0,
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(100),
                    child: Column(
                      children: [
                        Container(
                            child: const Text("Invest \& Bank",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),)),

                        Container(
                            padding: const EdgeInsets.all(10),
                            child: const Text("Invest bank \& buy crypto an\nInvestLearn account",
                              style: TextStyle(

                                color: Colors.black54,
                                fontSize: 16,),)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(1.0),
              child: Divider(
                color: Colors.transparent,
                height: 20,
                thickness: 1,
                indent: 20,
                endIndent: 0,
              ),
            ),

                Center(
                  child: Container(
                    child: Row(
                      children: const [
                        Center(
                          child: Text('Already have an account ?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.normal),),
                        ),
                             Text('Login here',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal
                              ),
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