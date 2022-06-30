import 'package:flutter/material.dart';

class TextFormCostum extends StatelessWidget {
  final String title;
  final TextEditingController controller ;
  const TextFormCostum({
    Key? key,
    required this.title, required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Your ${title.toLowerCase()}';
        }
        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        labelText: title,
      ),
    );
  }
}
