import 'package:flutter/material.dart';
import 'package:missgrand2022/pages/TopTen/toptenmissgrand.dart';

import 'reward.dart';

class Defualt extends StatefulWidget {
  const Defualt({Key? key}) : super(key: key);

  @override
  _DefualtState createState() => _DefualtState();
}

class _DefualtState extends State<Defualt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          //color: Colors.teal.shade100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,

              //colorBlendMode: BlendMode.softLight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const TopTenGrand()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.amberAccent,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.girl,
                                    size: 60.0,
                                    color: Colors.black87,
                                  ),
                                  Text(
                                    'Top 10 Miss Grand Thailand 2022',
                                    style: TextStyle(
                                        fontSize: 16.0, color: Colors.black87),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Reward()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.amberAccent,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.bar_chart,
                                    size: 60.0,
                                    color: Colors.black87,
                                  ),
                                  Text(
                                    'รางวัล',
                                    style: TextStyle(
                                        fontSize: 16.0, color: Colors.black87),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
