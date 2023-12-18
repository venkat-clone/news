import 'package:flutter/material.dart';
import 'package:my_news/configurations/configurations.dart';


class AppSwitch extends StatelessWidget {
  const AppSwitch({super.key, required this.value, required this.onChanged, required this.label});
  final bool value;
  final ValueChanged<bool> onChanged;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(kPadding),
      child: Row(
        children: [
          Text(label),
          const Spacer(),
          Switch(
            value: value,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
