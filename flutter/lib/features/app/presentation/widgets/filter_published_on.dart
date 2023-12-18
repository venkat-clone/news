import 'package:flutter/material.dart';

import '../../../../configurations/configurations.dart';
import 'date_buttons.dart';

class PublishedOnPage extends StatelessWidget {
  const PublishedOnPage({
    super.key,
    required this.onDateChanged,
    this.fromDate,
    this.toDate,
  });

  final void Function(DateTime?, DateTime?) onDateChanged;
  final DateTime? fromDate;
  final DateTime? toDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kPadding * 2, horizontal: kPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: kPadding * 2),
          Text('Published Date', style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: kPadding),
          DateButton(
            'Published From :',
            initialDate: fromDate ?? DateTime.now(),
            firstDate:  DateTime(2015, 8),
            lastDate: toDate??DateTime.now(),
            onDateChanged: (DateTime? date) {
              onDateChanged(date, toDate);
            },
          ),
          const SizedBox(height: kPadding),
          DateButton(
            'Published TO :',
            initialDate: toDate ?? DateTime.now(),
            firstDate: fromDate ?? DateTime(2015, 8),
            lastDate: DateTime.now(),
            onDateChanged: (DateTime? date) {
              onDateChanged(fromDate, date);
            },
          ),
          const SizedBox(height: kPadding),
          if (toDate != null)
            TextButton(
                onPressed: () {
                  onDateChanged(null, null);
                },
                child: const Text(
                  'Clear',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                )),
        ],
      ),
    );
  }
}
