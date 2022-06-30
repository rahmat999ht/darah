import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDownButtonCustom extends StatelessWidget {
  final RxString value;
  final String title;
  const DropDownButtonCustom({
    Key? key,
    required this.list,
    required this.value,
    required this.title,
  }) : super(key: key);

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      validator: (value) {
        if ((value ?? "").isEmpty) {
          return 'Your ${title.toLowerCase()}';
        }
        return null;
      },
      // value: value.value,
      decoration: InputDecoration(
        labelText: title,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      items: list.map<DropdownMenuItem<String>>((String v) {
        return DropdownMenuItem<String>(
          value: v,
          child: Text(
            v,
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.clip,
          ),
        );
      }).toList(),
      onChanged: (v) => value.value = v ?? "Laki-Laki",
    );
  }
}
