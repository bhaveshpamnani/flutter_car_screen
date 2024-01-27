import 'package:car/allcar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  get bottomNavigationbar => null;

  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.all(5),
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[100]),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.language,
                                color: Colors.blue,
                              ),
                              Text(
                                '\EN',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.all(5),
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[100]),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.money_dollar,
                                color: Colors.blue,
                              ),
                              Text(
                                '\USD',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 150,
                    ),
                    Icon(
                      Icons.card_giftcard,
                      color: Colors.blue,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Search a car',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Find car at over 60,000 locations',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Pick-up location',
                  style: TextStyle(fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 50,
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              // borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(10.0)),
                          hintText: 'Rajkot (RJT)'),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.blue,
                      value: isCheck,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheck = value!;
                        });
                      },
                    ),
                    Text(
                      'Return car to different location',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 175,
                  width: 350,
                  child: Container(
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(color: Colors.blue)),
                                ),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 26, 0, 0),
                                        child: Text(
                                          'PICK-UP',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 13),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 12, 0, 0),
                                        child: Text(
                                          '25',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 13, 0, 0),
                                        child: Text(
                                          'August | 10:00',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                // decoration: BoxDecoration(
                                //   borderRadius: BorderRadius.circular(10),
                                //   border:
                                //   Border(right: BorderSide(color: Colors.blue)),
                                // ),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 26, 0, 0),
                                        child: Text(
                                          'PICK-UP',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 13),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 12, 0, 0),
                                        child: Text(
                                          '02',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 13, 0, 0),
                                        child: Text(
                                          'September | 12:00',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Center(
                            child: Card(
                              child: Icon(
                                Icons.swap_horiz_sharp,
                                color: Colors.blue,
                                size: 50,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border(
                        top: BorderSide(color: Colors.blue),
                        left: BorderSide(color: Colors.blue),
                        bottom: BorderSide(color: Colors.blue),
                        right: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Text(
                    'Age of driver',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 25, 0, 0),
                              child: Icon(Icons.child_care),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Text('18-30 y.o.'),
                            )
                          ],
                        ),
                        height: 100,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border(
                            top: BorderSide(color: Colors.blue),
                            left: BorderSide(color: Colors.blue),
                            bottom: BorderSide(color: Colors.blue),
                            right: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 25, 0, 0),
                              child: Icon(Icons.gamepad_outlined),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Text('30-60 y.o.'),
                            )
                          ],
                        ),
                        height: 100,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border(
                            top: BorderSide(color: Colors.blue),
                            left: BorderSide(color: Colors.blue),
                            bottom: BorderSide(color: Colors.blue),
                            right: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 25, 0, 0),
                              child: Icon(Icons.person),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Text('60 + y.o.'),
                            )
                          ],
                        ),
                        height: 100,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border(
                            top: BorderSide(color: Colors.blue),
                            left: BorderSide(color: Colors.blue),
                            bottom: BorderSide(color: Colors.blue),
                            right: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Icon(Icons.home,color: Colors.blue,),
                          Text("Home",style: TextStyle(color: Colors.blue),)
                        ],
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AllCar(),));
                        },
                        child: Column(
                          children: [
                            Icon(CupertinoIcons.list_bullet),
                            Text("Booking",)
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),);
  }
}
