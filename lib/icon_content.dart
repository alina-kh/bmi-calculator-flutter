import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent(this.iconCard, this.iconSize, this.marginBox, this.label, this.sizeText, this.colour);

  final IconData iconCard;
  final double iconSize;
  final double marginBox;
  final String label;
  final double sizeText;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    TextStyle styleText = TextStyle(
      fontSize: sizeText,
      color: colour,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconCard,
          size: iconSize,
        ),
        SizedBox(
          height: marginBox,
        ),
        Text(
          label,
          style: styleText,
        ),
      ],
    );
  }
}
