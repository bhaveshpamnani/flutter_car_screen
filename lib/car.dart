import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Car extends StatefulWidget {
  var carimage;
  var cartype;
  var carname;
  var doors;
  Car({ super.key,@required this.carimage,@required this.cartype,@required this.carname,@required this.doors});

  @override
  State<Car> createState() => _CarState(carimage,cartype,carname,doors);
}

class _CarState extends State<Car> {
  var detail = ['Car info', 'Insurance info', 'Additional', 'Rating'];
  var carimage;
  var cartype;
  var carname;
  var doors;

  List<bool>? isSelected;
  var indexValue = 1;

  @override
  void initState() {
    super.initState();
    // Initialize isSelected list with 'false' for each item
    isSelected = List.generate(detail.length, (index) => false);
    isSelected?[0] = true;
  }
  _CarState(this.carimage,this.cartype,this.carname,this.doors);
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
          "$carname",
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
              CupertinoIcons.info,
              color: Colors.blue,
              size: 25,
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
               Image.asset(carimage),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: detail.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 12.0, top: 15),
                        child: isSelected![index]
                            ? InkWell(
                            onTap: () {
                              setState(() {
                                isSelected![index] = false;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  detail[index],
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                                Text(
                                  '.',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ))
                            : InkWell(
                          onTap: () {
                            setState(() {
                              // Reset all selections
                              isSelected = List.generate(
                                  detail.length, (index) => false);
                              // Set the selected item
                              isSelected![index] = true;
                            });
                          },
                          child: Text(
                            detail[index],
                            style:
                            TextStyle(fontSize: 17, color: Colors.black26),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0, left: 15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: MediaQuery.of(context).size.height * 0.15,
                                width: double.infinity,
                                child: Card(
                                  elevation: 1,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          CupertinoIcons.gear_alt_fill,
                                        ),
                                        Text(
                                          "Transmission",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "$cartype",
                                          style: TextStyle(color: Colors.black26),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                height: MediaQuery.of(context).size.height * 0.15,
                                width: double.infinity,
                                child: Card(
                                  elevation: 1,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                'assets/images/door.png')),
                                        Text(
                                          "Doors & Seats",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "$doors & 4 Seats",
                                          style: TextStyle(color: Colors.black26),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: MediaQuery.of(context).size.height * 0.15,
                                width: double.infinity,
                                child: Card(
                                  elevation: 1,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image.asset('assets/images/fan.png',width: 30,height: 30,),
                                        Text(
                                          "Air Condition",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Climat Control",
                                          style: TextStyle(color: Colors.black26),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                height: MediaQuery.of(context).size.height * 0.15,
                                width: double.infinity,
                                child: Card(
                                  elevation: 1,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image.asset('assets/images/bag.png',width: 30,height: 30,),
                                        Text(
                                          "Bags",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "2 Large & 1 Small",
                                          style: TextStyle(color: Colors.black26),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.17,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Card(
                      elevation: 1,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Fuel policy & Mileage",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Patrol & 24.91kpl",
                              style: TextStyle(color: Colors.black26),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 70,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "25Aug 10:00-02Sep 12:00",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 15),
                      ),
                      Text(
                        "Total : total",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
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
                          color: Colors.blue),
                      child: Center(
                        child: Text(
                          'Book',
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.w700),
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
    );
  }
}
