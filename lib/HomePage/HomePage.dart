import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final docList = [
    "empty",
    "aadhar",
    "pan",
    "voter",
    "driving",
    "vaccine",
    "passport",
    "birth",
    "income",
  ];
  final imageList = ["assets/navback.png", "assets/img1.jpg"];
  String firstName = "Loading...";
  String email = "Loading....";
  String lastName = "Loading....";
  String docName = "Loading...";

  Future<String>getDocInfo(String doc) async{
    //get the doc info from the database
    //return the doc info if its exist
    //else it will return "empty"
    return "empty";
  }

  Container headingContainer({text, double? size}) {
    return Container(
      height: 40,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "${text}",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: size,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          (text == "Quick Links")
              ? Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: const Color.fromARGB(255, 55, 14, 201),
                      width: 1,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    child: Text(
                      "View All",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Color.fromARGB(255, 55, 14, 201),
                      ),
                    ),
                  ),
                )
              : (text != "What's New")
                  ? const Text(
                      "View All",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 55, 14, 201)),
                    )
                  : const Text(""),
        ],
      ),
    );
  }

  SizedBox quickLinks({text, icon, Function? ontap}) {
    return SizedBox(
      width: 147,
      height: 50,
      child: GestureDetector(
        onTap: (() => ontap!()),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black54),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: const Color.fromARGB(31, 158, 158, 158),
                child: Icon(
                  icon,
                  size: 20,
                  color: const Color.fromARGB(101, 0, 0, 0),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox extractedContainer({text, image, doc, isSaved}) {
    bool showDoc = false;
    return SizedBox(
      width: 320,
      height: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 280,
            height: 170,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                foregroundColor: WidgetStateProperty.resolveWith((states){
                  if(states.contains(WidgetState.pressed)){
                    return Colors.white;
                  }
                  else{
                    return Colors.white;
                  }
                }),
                backgroundColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.white;
                  }
                  else {
                    return Colors.white;
                  }
                }),


            ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 70,
                        width: 70,
                        child: Image.asset("$image"),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "$text",
                            style: const TextStyle(
                              letterSpacing: 0.8,
                              fontFamily: "Poppins-Reg",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "XXXX-XXXX-XXXXX",
                            style: TextStyle(
                                color: Colors.black45, fontFamily: "Lato-Reg"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FutureBuilder(
                    future: getDocInfo(doc),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Text(
                          "Save Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        );
                      } else {
                        if (snapshot.data == "empty") {
                          return Container(
                            height: 45,
                            width: 219,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 55, 14, 201),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Center(
                              child: Text(
                                "Save Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          );
                        } else {
                          return Container(
                            height: 45,
                            width: 219,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 55, 14, 201),
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: const Color.fromARGB(255, 55, 14, 201),
                                width: 1,
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "View Now",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 55, 14, 201),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          );
                        }
                      }
                    },
                  )
                ],
              ),
          ),
          )],
      ),
    );
  }

  SizedBox extractedBox({text,image}){
    return SizedBox(
      height: 200,
      width: 230,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 185,
            width: 195,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(130, 158, 158, 158),
                  spreadRadius: 0,
                  blurRadius: 0,
                  offset: Offset(1, 2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: const Color.fromARGB(255, 55, 14, 201),
        title: Row(
          children: [
            Transform.rotate(
              angle: math.pi / 0.299,
              child: const Icon(
                Icons.account_balance_wallet_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              "Pocket ID",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
      // drawer: NewDrawer(
      //   username :firstname
      //       email
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hello',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.normal),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Jhon",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 55, 14, 201),
                                    fontSize: 22,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Welcome back to PocketID",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 23,
                    backgroundColor: const Color.fromARGB(255, 55, 14, 201),
                    child: Container(
                      height: 37,
                      width: 37,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const CircularProgressIndicator(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              headingContainer(text: "What's New", size: 15),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  height: 200,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 55, 14, 201),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ListView(
                    children: [
                      CarouselSlider(
                        items: [
                          SizedBox(
                            height: 250,
                            child: Image.asset(
                              imageList[0],
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 250,
                            child: Image.asset(
                              imageList[1],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          autoPlay: true,
                          height: 200,
                          autoPlayCurve: Curves.easeOut,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 1800),
                          viewportFraction: 1,
                        ),
                      ),
                      // Document Container
                      // Other Document Container
                    ],
                  ),
                ),
              ),
              headingContainer(
                text: "Issued Documents",
                size: 16,
              ),
              SizedBox(
                height: 190,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    extractedContainer(
                        text: "Aadhar Card",
                        image: "assets/aadhaar.png",
                        doc: "aadhar",
                        isSaved: 1),
                    extractedContainer(
                        text: "Pan Card",
                        image: "assets/pan.png",
                        doc: "aadhar",
                        isSaved: 2),
                    extractedContainer(
                        text: "Driving License",
                        image: "assets/others.png",
                        doc: "driving",
                        isSaved: 3),
                    extractedContainer(
                        text: "Covid Vaccine",
                        image: "assets/others.png",
                        doc: "vaccine",
                        isSaved: 4),
                    //remaining elements
                  ],
                ),
              ),
              headingContainer(
                text: "Other Documents",
                size: 16,
              ),
              SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    SizedBox(
                      width: 15,
                    ),
                    //remaining elements
                  ],
                ),
              ),
              headingContainer(
                text: "Quick Links",
                size: 18,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      quickLinks(
                          text: "My Profile",
                          icon: Icons.person_add_alt_1_outlined,
                          ontap: () {}),
                      const SizedBox(
                        width: 25,
                      ),
                      quickLinks(
                          text: "Forget Pin",
                          icon: Icons.help_outline_rounded,
                          ontap: () {}),
                      const SizedBox(
                        width: 25,
                      ),
                      quickLinks(
                          text: "About",
                          icon: Icons.info_outline_rounded,
                          ontap: () {}),
                      const SizedBox(
                        width: 25,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
