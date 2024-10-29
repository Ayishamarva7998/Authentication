import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  Card({super.key, required Column child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          width: double.infinity,
          child: Card(
            child: Column(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: 180,
                          width: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: const Image(
                              image: NetworkImage(
                                  'https://media.istockphoto.com/id/1350560575/photo/pair-of-blue-running-sneakers-on-white-background-isolated.jpg?s=612x612&w=0&k=20&c=A3w_a9q3Gz-tWkQL6K00xu7UHdN5LLZefzPDp-wNkSU='),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Positioned(
                            left: 120,
                            top: 10,
                            child: Icon(Icons.favorite_sharp)),
                        const Positioned(
                          left: 10,
                          top: 120,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'FLAT DEAL\n125 OFF',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                'ABOVE 199',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w900),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CAKE TREANDS',
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.green,
                                child: Icon(
                                  Icons.star,
                                  size: 13,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '4.1(140) . 40-45 mins',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.purple,
                                child: Icon(
                                  Icons.brush,
                                  size: 12,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Perfect cake delivery',
                                style: TextStyle(fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                          Text(
                            'Bakery,cakes and Pastrie..\npapadi .3.km',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.add),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}