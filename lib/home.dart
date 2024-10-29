import 'package:flutter/material.dart';

class SwiggyScreen extends StatelessWidget {
  const SwiggyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 220, 218, 218),
        body: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Thank you for adding a Tip!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromARGB(255, 72, 70, 70)),
                  ),
                ),
                Icon(Icons.info_outline)
              ],
            ),
            Center(
              child: Container(
                  height: 140,
                  width: 350,
                  color: Colors.amber,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 150,
                            width: 230,
                            color: Colors.white,
                            child: const Column(
                              children: [
                                SizedBox(
                                  height: 50,
                                ),
                                Text(
                                  'You ve made their days!100% of',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 72, 70, 70)),
                                ),
                                Text(
                                  'the tip will go to your delivery',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 72, 70, 70)),
                                ),
                                Text(
                                  'partner for this and future orders.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 72, 70, 70)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 80,
                            color: Colors.white,
                            child: Image.asset('assets/swiggy.jpg'),
                          )
                        ],
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
               
                rupees(backgroundColor: Colors.white, outlineColor: Colors.grey, about: '20'),
                const SizedBox(width: 10,),
                rupees(backgroundColor: const Color.fromARGB(255, 242, 178, 104), outlineColor: const Color.fromARGB(255, 224, 138, 10), about: '30'),
                const SizedBox(width: 10,),
                rupees(backgroundColor: Colors.white, outlineColor: Colors.grey, about: '50'),
                                rupees(backgroundColor: Colors.white, outlineColor: Colors.grey, about: 'other'),
                //                 Container(height: 40,width: 70,color: Colors.amber,
                //                   decoration: BoxDecoration(
                //   color: Colors.white,// Background color
                //   borderRadius: BorderRadius.circular(10), // Rounded corners
                //   border: Border.all(
                //     color: Colors.grey,// Outline color
                //     width: 2, // Outline width
                //   ),
                // ),),


                const SizedBox(
                  width: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container rupees({ required Color backgroundColor,
    required Color outlineColor,
    required String about,
    }) {
    return Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                  color: (backgroundColor),// Background color
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  border: Border.all(
                    color: (outlineColor),// Outline color
                    width: 2, // Outline width
                  ),
                ),
                child:  Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, 
                  children: [
                    const Icon(
                      Icons.currency_rupee,
                      size: 15,
                      color: Colors.black,
                    ),
                    const SizedBox(
                        width: 5), 
                    Text(
                      about,
                      style: const TextStyle(
                          color: Colors.black), 
                    ),
              //  iconn
                  ],
                ),
              );
  }
}

