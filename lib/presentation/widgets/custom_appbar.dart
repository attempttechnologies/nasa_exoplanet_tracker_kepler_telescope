import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("images/pexels-pixabay-2166.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Image.network(
            "images/nasa-logo-web-rgb.png",
            width: 250.0,
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
