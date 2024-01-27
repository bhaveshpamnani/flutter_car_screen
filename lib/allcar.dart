import 'package:car/car.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllCar extends StatefulWidget {
  const AllCar({super.key});

  @override
  State<AllCar> createState() => _AllCarState();
}

class _AllCarState extends State<AllCar> {
  var carimage = [
    'assets/images/audiq3.png',
    'assets/images/baleno.png',
    'assets/images/bmw1.png',
    'assets/images/Harrier.png',
    'assets/images/lamborghini.png',
    'assets/images/MarutiSuzuki.png',
    'assets/images/mercedes.png',
    'assets/images/rangerover.png',
    'assets/images/thar.png',
    'assets/images/volkswagen.png'
  ];
  var carname = [
    'Audi',
    'Baleno',
    'BMW',
    'Harrier',
    'Lamborghini',
    'Maruti Suzuki',
    'Mercedes',
    'RangeRover',
    'Thar',
    'Volkswagen'
  ];
  var cartype = [
    'Manual',
    'Automatic',
    'Manual',
    'Automatic',
    'Manual',
    'Automatic',
    'Manual',
    'Automatic',
    'Manual',
    'Automatic'
  ];
  var cardoor = [
    '2 Door',
    '4 Door',
    '2 Door',
    '4 Door',
    '2 Door',
    '4 Door',
    '2 Door',
    '4 Door',
    '2 Door',
    '4 Door'
  ];
  var perday = [
    '\$80 /per day',
    '\$60 /per day',
    '\$100 /per day',
    '\$80 /per day',
    '\$180 /per day',
    '\$120 /per day',
    '\$10 /per day',
    '\$45 /per day',
    '\$50 /per day',
    '\$60 /per day'
  ];
  var total = [
    '\$1180 /total',
    '\$1200 /total',
    '\$1300 /total',
    '\$2180 /total',
    '\$1270 /total',
    '\$1140 /total',
    '\$1360 /total',
    '\$1250 /total',
    '\$1000 /total',
    '\$900 /total'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(CupertinoIcons.back, color: Colors.blue),
        ),
        title: Text(
          "Results (135)",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          SizedBox(
            width: 5,
          ),
          InkWell(
            onTap: () {
              print("Map icon clicked");
            },
            child: Icon(
              Icons.map_outlined,
              color: Colors.blue,
              size: 30,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () {
              print("Fillter Clicked");
            },
            child:
                Icon(Icons.filter_alt_outlined, color: Colors.blue, size: 28),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return index == 2
                          ? Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 20.0, top: 10),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.16,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 40.0, bottom: 2.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                            "Get 25% discount",
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          "Invite 5 friends and het it",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w200),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          : InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Car(carimage:carimage[index],cartype:cartype[index],carname:carname[index],doors:cardoor[index]),
                                  ),
                                );
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.236,
                                padding: EdgeInsets.only(
                                    left: 17, right: 17, top: 13),
                                child: Card(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          //car image==========
                                          Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Container(
                                              height: 80,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child:
                                                  Image.asset(carimage[index]),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              //car name============
                                              Text(
                                                carname[index],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                              //Car detail==========
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "4 seats",
                                                    style: TextStyle(
                                                        color: Colors.black26,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text(
                                                    "|",
                                                    style: TextStyle(
                                                        color: Colors.black26,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text(
                                                    cardoor[index],
                                                    style: TextStyle(
                                                        color: Colors.black26,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text(
                                                    "|",
                                                    style: TextStyle(
                                                        color: Colors.black26,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text(
                                                    cartype[index],
                                                    style: TextStyle(
                                                        color: Colors.black26,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Text(
                                              perday[index],
                                              style: TextStyle(
                                                  color: Colors.black26,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Text(
                                              total[index],
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                    },
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 90,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Barceona (BCN)",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "25Aug 10:00-02Sep 12:00",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 15),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        print("Edit buttton clicked");
                      },
                      child: Container(
                        width: 70,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue[100]),
                        child: Center(
                          child: Text(
                            'Edit',
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
