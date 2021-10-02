import 'package:flutter/material.dart';

class LoadingDataState extends StatelessWidget {
  const LoadingDataState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network("images/nasa-logo-web-rgb.png"),
        const Text("Loadig Kepler Telescope Data. This can take a moment"),
        const SizedBox(
          height: 50.0,
        ),
        const CircularProgressIndicator(
          color: Color(0xff15418c),
        ),
      ],
    );
  }
}
