import 'package:flutter/material.dart';

class SelectLocationScreen extends StatefulWidget {
  const SelectLocationScreen({super.key});

  @override
  State<SelectLocationScreen> createState() => _SelectLocationScreenState();
}

class _SelectLocationScreenState extends State<SelectLocationScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 450,
            color: Colors.grey[300],
            child: Center(
              child: Image.asset(
                'asests/images/map.jpg',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Select Location',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Your Location',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  '2972 Westheimer Rd. Santa Ana, Illinois 85486',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const Divider(),
                const SizedBox(height: 20),
                const Text(
                  'Save As',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    saveButton(size, Icons.home, 'Home'),
                    saveButton(size, Icons.work, 'Office'),
                    saveButton(size, Icons.location_pin, 'Others'),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xffca1c1d),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      'Save Address',
                      style: TextStyle(color: Color(0xffffe8ed)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container saveButton(double size, IconData icon, String text) {
    return Container(
      width: size * 0.45,
      color: Colors.grey.shade100,
      child: MaterialButton(
        onPressed: () {},
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: const Color(0xffFFEAED),
              child: Icon(
                icon,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
