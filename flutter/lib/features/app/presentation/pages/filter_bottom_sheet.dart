import 'package:flutter/material.dart';
import 'package:my_news/features/app/presentation/widgets/filter_sort_by.dart';

import '../../../../configurations/configurations.dart';
import '../../data/models/filter_model.dart';
import '../widgets/filter_category.dart';
import '../widgets/filter_published_on.dart';
import '../widgets/filter_tab.dart';

@RoutePage()
class CasesFilterDialogPage extends StatefulWidget {
  const CasesFilterDialogPage(
      {Key? key, required this.filterModel, required this.onApplyFilter})
      : super(key: key);

  final FilterModel filterModel;
  final void Function(FilterModel) onApplyFilter;

  @override
  State<CasesFilterDialogPage> createState() => _CasesFilterDialogPageState();
}

class _CasesFilterDialogPageState extends State<CasesFilterDialogPage> {
  int activeFilterIndex = 0;

  FilterModel filterModel = FilterModel();

  @override
  void initState() {
    filterModel = widget.filterModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Row(
          children: [
            Expanded(
                flex: 30,
                child: Container(
                    padding: const EdgeInsets.only(
                        left: kPadding * 1.5, top: kPadding * 1.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Filter ',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  height: 1.71,
                                  fontSize: 20),
                        ),
                        const SizedBox(height: kPadding * 0.75),
                        FilterTab(
                            title: 'Sort By',
                            enable: activeFilterIndex == 0,
                            onTap: () {
                              setState(() {
                                activeFilterIndex = 0;
                              });
                            }),
                        FilterTab(
                          title: 'Published On',
                          enable: activeFilterIndex == 1,
                          onTap: () {
                            setState(() {
                              activeFilterIndex = 1;
                            });
                          },
                        ),
                        FilterTab(
                          title: 'Category',
                          enable: activeFilterIndex == 2,
                          onTap: () {
                            setState(() {
                              activeFilterIndex = 2;
                            });
                          },
                        ),
                      ],
                    ))),
            const VerticalDivider(
              thickness: 1,
              width: 1,
            ),
            Expanded(flex: 61, child: AutoRouter()),
          ],
        )),
        Padding(
          padding: const EdgeInsets.all(kPadding),
          child: FilledButton(
              onPressed: () {
                widget.onApplyFilter(filterModel);
                context.router.pop();
              },
              child: Text(
                'Apply',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                      height: 1.75,
                    ),
              )),
        ),
      ],
    );
  }

  Widget AutoRouter() {
    print('updated');
    switch (activeFilterIndex) {
      case 1:
        return PublishedOnPage(
            onDateChanged: (fromDate, toDate) {
              setState(() {
                filterModel = filterModel.copyWith(
                    publishedFrom: fromDate, publishedTO: toDate);
              });
            },
            fromDate: filterModel.publishedFrom,
            toDate: filterModel.publishedTO);

      case 2:
        return FilterCategoryPage(
          selectedCategoryList: filterModel.categories ?? [],
          onSelectedCategoryListChanged: (List<String> value) {
            filterModel = filterModel.copyWith(categories: value);
          },
        );

      default:
        return FilterSortByPage(
          onChange: (sortBy, sortByType) {
            filterModel = filterModel.copyWith(
              sortBy: sortBy,
              sortByType: sortByType,
            );
          },
          initialSortBy: filterModel.sortBy,
          initialSortByType: filterModel.sortByType,
        );
    }
  }
}
