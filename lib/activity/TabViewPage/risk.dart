import 'package:flutter/material.dart';
class Risk extends StatefulWidget {
  const Risk({Key? key}) : super(key: key);

  @override
  State<Risk> createState() => _RiskState();
}

class _RiskState extends State<Risk> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.navigate_before_sharp,size: 35,),
                              onPressed: () {  },
                            ),
                            const Text("Back",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                         ElevatedButton(
                          onPressed: () {},
                              // decoration: const BoxDecoration(
                              //   color: Colors.black,
                              //     // gradient: LinearGradient(colors: [
                              //     //   Color(0xFF0D47A1),
                              //     //   Color(0xFF1976D2),
                              //     //   Color(0xFF42A5F5),
                              //     // ],
                              //     // ),
                              // ),
                              child:const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "BitCoins",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),

                         ),

                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Icon(Icons.star,color: Colors.black54,size: 20,
                          ),
                        ),
                      ],
                    ),

              ),
            ],
          ),
        ],
      ),
    );
  }
}
