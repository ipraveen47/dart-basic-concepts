import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  CustomButton({
    required this.btnName,
    this.icon,
    this.bgColor = Colors.blue,
    this.textStyle,
    this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callBack != null ? callBack : null,
      child: icon != null
          ? Row(
              children: [
                icon!,
                const SizedBox(width: 8), // Adds spacing between icon and text
                Text(btnName, style: textStyle),
              ],
            )
          : Text(btnName, style: textStyle),
      style: ElevatedButton.styleFrom(
        shadowColor: bgColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(21),
            bottomLeft: Radius.circular(21),
          ),
        ),
      ),
    );
  }
}
