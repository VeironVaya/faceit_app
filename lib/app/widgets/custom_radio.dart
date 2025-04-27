import 'package:flutter/material.dart';

class CustomRadio extends StatelessWidget {
  var int val;
  const CustomRadio({super.key,required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Radio<int>(
                    value: 1,
                    groupValue: val,
                    onChanged: (int? value) {
                      val = value!;
                    },
                  ),
                  Text("Option 1"),
                  Radio<int>(
                    value: 2,
                    groupValue: val,
                    onChanged: (int? value) {
                      val = value!;
                    },
                  ),
                  Text("Option 2"),
                ],
              );
  }
}