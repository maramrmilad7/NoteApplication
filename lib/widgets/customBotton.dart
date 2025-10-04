import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: Color(0xff62FCD7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text('Save', style: TextStyle(color: Colors.black)),
      ),
    );
  }
}