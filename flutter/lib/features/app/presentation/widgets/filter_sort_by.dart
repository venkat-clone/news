import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../configurations/theme/size_constants.dart';
import '../../data/enums/sortby.dart';

@RoutePage()
class FilterSortByPage extends StatefulWidget {
  const FilterSortByPage(
      {super.key,
      required this.onChange,
      this.initialSortBy,
      this.initialSortByType});

  final void Function(SortBy, SortByType) onChange;
  final SortBy? initialSortBy;
  final SortByType? initialSortByType;

  @override
  State<FilterSortByPage> createState() => _FilterSortByPageState();
}

class _FilterSortByPageState extends State<FilterSortByPage> {
  SortBy _sortBy = SortBy.alphabetically;
  SortByType _sortByType = SortByType.ascending;

  @override
  void initState() {
    _sortBy = widget.initialSortBy ?? _sortBy;
    _sortByType = widget.initialSortByType ?? _sortByType;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
const SizedBox(height: kPadding * 1.5),
        const Text(
          'Sort By',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              height: 1.71,
              color: Colors.black),
        ),
        ...SortBy.values
            .map((e) => RadioListTile<SortBy>(
                value: e,
                groupValue: _sortBy,
                onChanged: (sortBy) {
                  setState(() {
                    _sortBy = sortBy!;
                  });
                  widget.onChange(_sortBy, _sortByType);
                },
                title: Text(e.title))),

        const SizedBox(height: kPadding * 1.5),
        const Text(
          'Sort By Type',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              height: 1.71,
              color: Colors.black),
        ),
        ...SortByType.values
            .map((e) => RadioListTile<SortByType>(
                value: e,
                groupValue: _sortByType,
                onChanged: (sortByType) {
                  setState(() {
                    _sortByType = sortByType!;
                  });
                  widget.onChange(_sortBy, _sortByType);
                },
                title: Text(e.toString().split('.').last))),

      ],
    );
  }
}
