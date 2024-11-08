import 'package:flutter/material.dart';
import 'package:professional_profile_flutter/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // Main Header
          Container(
            height: 60,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.blueGrey, // Set the desired color here
              gradient: LinearGradient(colors: [
                Colors.transparent,
                CustomColor.bgLight1,
              ]),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              children: [
                Text("Dulina"),
                Spacer(),
                for (int i = 0; i < 5; i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    TextButton(
                      onPressed: () {},
                      child: Text("Button"),
                    ),
                  ),
              ],
            ),
          ),
          // Skills
          Container(
            height: 500,
            width: double.maxFinite,
            color: const Color.fromARGB(255, 214, 230, 238),
          ),
          // Projects
          Container(
            height: 500,
            width: double.maxFinite,
            color: const Color.fromARGB(255, 131, 126, 204),
          ),
          // Contact
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}