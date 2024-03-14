import 'package:flutter/material.dart';

class homescrn extends StatefulWidget {
  const homescrn({super.key});

  @override
  State<homescrn> createState() => _homescrnState();
}

class _homescrnState extends State<homescrn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "photos/cycle.png",
                    height: 80,
                  ),
                  Text(
                    "Travelling",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "www.travelling.com",
                    style: TextStyle(color: Colors.black38),
                  )
                ],
              ),
              decoration: BoxDecoration(color: Colors.amber[600]),
            ),
            ListTile(leading: Icon(Icons.home),
            title: Text("Home"),
              
            ),
            ListTile(leading: Icon(Icons.directions_bike),
            title: Text("Cycling"),
            ),
            ListTile(leading: Icon(Icons.directions_bus_filled_rounded),
            title: Text("Bus"),
            ),
            ListTile(leading: Icon(Icons.flight_takeoff_outlined),
            title: Text("Plane"),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Profile"),
            ),
            ListTile(leading: Icon(Icons.power_settings_new_sharp),
            title: Text("Login"),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Communicate"),
            ),
            ListTile(leading:Icon(Icons.share) ,
            title: Text("Share"),
            ),
            ListTile(leading: Icon(Icons.rate_review),
            title: Text("Rate Us"),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Travelling",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Start a new journey",
                      style: TextStyle(color: Colors.black45, fontSize: 15),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Image.asset(
                "photos/cycle.png",
                height: 120,
              )
            ],
          ),
          SizedBox(
            width: 500,
            height: 500,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 0),
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(
                      images[index],
                      height: 80,
                    ),
                    Text(
                      data[index],
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

List images = [
  "photos/walkingman.png",
  "photos/boat.png",
  "photos/bus.png",
  "photos/train.png",
  "photos/cycle.png",
  "photos/plane.png",
];

List data = [
  "Walking",
  "Boating",
  "Bus",
  "Train",
  "Cycling",
  "Aeroplane",
];
