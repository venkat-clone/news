import 'package:flutter/material.dart';
import 'package:my_news/configurations/configurations.dart';
import 'package:my_news/features/app/data/models/filter_model.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar(
      {super.key,
      this.enableFilters = true,
      this.onFiltersChanged,
      this.filterModel, required this.onSearchChanged});

  // TODO:Filter Class
  final ValueChanged<FilterModel>? onFiltersChanged;
  final ValueChanged<String> onSearchChanged;
  final bool enableFilters;
  final FilterModel? filterModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
              decoration: const InputDecoration(
                hintText: 'Search',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (s) {
                onSearchChanged(s);
              }),
        ),
        if (enableFilters) ...[
          const SizedBox(width: 10),
          IconButton.outlined(
              onPressed: () async {
                await context.router.navigate(CasesFilterDialogRoute(
                    filterModel: filterModel!,
                    onApplyFilter: onFiltersChanged!));
              },
              icon: const Icon(Icons.filter_alt_outlined)),
        ]
      ],
    );
  }
}
