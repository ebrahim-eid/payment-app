import 'package:flutter/material.dart';
import 'package:payment_app/utils/text_styles.dart';

Widget myDivider()=> Container(
  width: double.infinity,
  height: 2,
  color: const Color(0xFFC7C7C7),
);

Widget defaultButton({
  required String text,
  required VoidCallback function
})=> Container(
  width: double.infinity,
  height: 73,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: const Color(0xFF34A853)
  ),
  child: MaterialButton(
    onPressed: function,
    child: Text(
      text,
      style: TextStyles.style22,
    ),
  ),
);


//Color(0x80000000)