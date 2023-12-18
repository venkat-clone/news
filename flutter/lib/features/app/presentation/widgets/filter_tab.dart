import 'package:flutter/material.dart';
import 'package:my_news/configurations/configurations.dart';

class FilterTab extends StatelessWidget {
  const FilterTab({super.key, required this.title, required this.enable, required this.onTap});

  final String title;
  final bool enable;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: kPadding*5,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: enable ? Theme.of(context).colorScheme.primary : Colors.transparent, width: 3),
            left: BorderSide(color: enable ? Theme.of(context).colorScheme.primary : Colors.transparent, width: 3),
            bottom: BorderSide(color: enable ? Theme.of(context).colorScheme.primary : Colors.transparent, width: 3),
          ),

        ),
        child: Text(title),
      ),
    );
  }
}
