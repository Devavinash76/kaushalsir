import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaushalsir/activity/HomeScreen/homepage.dart';
import 'package:kaushalsir/activity/homescreen.dart';
import 'Home2.dart';

class OtherSign extends StatefulWidget {
  const OtherSign({Key? key}) : super(key: key);

  @override
  State<OtherSign> createState() => _OtherSignState();
}

class _OtherSignState extends State<OtherSign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50,right: 30,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                    Icon(Icons.close),
              ],
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text('Play \& Learn',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                bottom: 10,
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
                      Get.to(HomePage());
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.apple,size: 30,),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.facebook,size: 30,),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.chrome_reader_mode,size: 30,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
