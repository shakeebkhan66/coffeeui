import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        decoration:  InputDecoration(
            fillColor: textFieldColor,
            filled: true,
            prefixIcon: const Icon(CupertinoIcons.search_circle_fill, color: buttonAndTabsColor,),
            hintText: "Find Your Coffee...",
            hintStyle: const TextStyle(color: dotsIconColor, fontSize: 12.0),
            enabledBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: dotsIconColor),
              borderRadius: BorderRadius.circular(15.0),
            ),
            focusedBorder:  UnderlineInputBorder(
              borderSide: const BorderSide(color: buttonAndTabsColor),
              borderRadius: BorderRadius.circular(15.0),
            )
        ),
      ),
    );
  }
}
