import 'package:flutter/material.dart';
import '../components/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.text});

  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Center(
        child: Container(
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          padding: EdgeInsets.only(bottom: 20.0, top: 20.0),
          height: kBottomContainerHeight,
          color: kAccentColor,
          child: Text(
            text,
            style: kLargeButtonStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}