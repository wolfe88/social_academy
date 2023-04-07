import 'package:flutter/material.dart';
import 'package:social_academy/widgets/textfield.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: MyTextField(
        containerColor: Colors.blue,
        textfieldTextColor: Colors.red, //hint colorla birleştir
        hintColor: Colors.yellow,
        borderRadius: 8,
        hintText: "deneme",
      ),
    );
  }
}
