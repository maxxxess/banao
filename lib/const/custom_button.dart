import 'package:banao/const/custom_color.dart';
import 'package:banao/const/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final VoidCallback onPressed;

  CustomButton({
    required this.text,
    required this.iconData,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        top: 10,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: selectedIcon)),
      height: 48,
      width: size.width * 0.45,
      child: MaterialButton(
        onPressed: onPressed,
        textColor: topicColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: selectedIcon,
              size: 24,
            ),
            SizedBox(width: 10), // Add spacing between image and text
            Text(
              text,
              style: myStyle(topicColor, 14, FontWeight.w600),
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
