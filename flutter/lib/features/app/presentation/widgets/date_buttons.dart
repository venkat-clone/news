import 'package:flutter/material.dart';

class DateButton extends StatefulWidget {
  const DateButton(
      this.label,
      {super.key,
      required this.initialDate,
      required this.firstDate,
      required this.lastDate,
      required this.onDateChanged,
      this.date});

  final DateTime initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final ValueChanged<DateTime> onDateChanged;
  final DateTime? date;
  final String label;

  @override
  State<DateButton> createState() => _DateButtonState();
}

class _DateButtonState extends State<DateButton> {

  DateTime? date;

  @override
  void initState() {
    date = widget.date;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            alignment: Alignment.centerLeft, padding: EdgeInsets.zero),
        onPressed: () async {
          final DateTime? date = await showDatePicker(
              context: context,
              initialDate: widget.initialDate,
              firstDate: widget.firstDate,
              lastDate: widget.lastDate);
          if (date != null) {
            widget.onDateChanged(date);
            setState(() {
              this.date = date;
            });
          }
        },
        isSemanticButton: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.label),
            Text(
              date != null
                  ? '${date!.day} /${date!.month - 1} /${date!.year}'
                  : 'Select Date',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ));
  }
}
