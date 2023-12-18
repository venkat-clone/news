import 'package:flutter/material.dart';
import 'package:my_news/configurations/configurations.dart';


class ListTextWidget extends StatefulWidget {
  const ListTextWidget({super.key, required this.label, this.hintText});
  final String label;
  final String? hintText;

  @override
  State<ListTextWidget> createState() => _ListTextWidgetState();
}

class _ListTextWidgetState extends State<ListTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          spacing: kPadding*0.75,
          runSpacing: 0,
          children: List.generate(10, (index) => Chip(label: Text("label"))).toList(),
        ),
        TextField(
          decoration: InputDecoration(
            labelText: widget.label,
            hintText: widget.hintText,
            border: const OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
